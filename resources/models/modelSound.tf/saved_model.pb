þ´<
Ø®
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
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

	MirrorPad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	"&
modestring:
REFLECT	SYMMETRIC
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
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
H
ShardedFilename
basename	
shard

num_shards
filename
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8§¸4
¸
*feed_forward_1/conv_2d_16/conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		 *;
shared_name,*feed_forward_1/conv_2d_16/conv2d_16/kernel
±
>feed_forward_1/conv_2d_16/conv2d_16/kernel/Read/ReadVariableOpReadVariableOp*feed_forward_1/conv_2d_16/conv2d_16/kernel*&
_output_shapes
:		 *
dtype0
Ê
9feed_forward_1/conv_2d_16/instance_normalization_18/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *J
shared_name;9feed_forward_1/conv_2d_16/instance_normalization_18/gamma
Ã
Mfeed_forward_1/conv_2d_16/instance_normalization_18/gamma/Read/ReadVariableOpReadVariableOp9feed_forward_1/conv_2d_16/instance_normalization_18/gamma*
_output_shapes
: *
dtype0
È
8feed_forward_1/conv_2d_16/instance_normalization_18/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *I
shared_name:8feed_forward_1/conv_2d_16/instance_normalization_18/beta
Á
Lfeed_forward_1/conv_2d_16/instance_normalization_18/beta/Read/ReadVariableOpReadVariableOp8feed_forward_1/conv_2d_16/instance_normalization_18/beta*
_output_shapes
: *
dtype0
¸
*feed_forward_1/conv_2d_17/conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*;
shared_name,*feed_forward_1/conv_2d_17/conv2d_17/kernel
±
>feed_forward_1/conv_2d_17/conv2d_17/kernel/Read/ReadVariableOpReadVariableOp*feed_forward_1/conv_2d_17/conv2d_17/kernel*&
_output_shapes
: @*
dtype0
Ê
9feed_forward_1/conv_2d_17/instance_normalization_19/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*J
shared_name;9feed_forward_1/conv_2d_17/instance_normalization_19/gamma
Ã
Mfeed_forward_1/conv_2d_17/instance_normalization_19/gamma/Read/ReadVariableOpReadVariableOp9feed_forward_1/conv_2d_17/instance_normalization_19/gamma*
_output_shapes
:@*
dtype0
È
8feed_forward_1/conv_2d_17/instance_normalization_19/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*I
shared_name:8feed_forward_1/conv_2d_17/instance_normalization_19/beta
Á
Lfeed_forward_1/conv_2d_17/instance_normalization_19/beta/Read/ReadVariableOpReadVariableOp8feed_forward_1/conv_2d_17/instance_normalization_19/beta*
_output_shapes
:@*
dtype0
¹
*feed_forward_1/conv_2d_18/conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*feed_forward_1/conv_2d_18/conv2d_18/kernel
²
>feed_forward_1/conv_2d_18/conv2d_18/kernel/Read/ReadVariableOpReadVariableOp*feed_forward_1/conv_2d_18/conv2d_18/kernel*'
_output_shapes
:@*
dtype0
Ë
9feed_forward_1/conv_2d_18/instance_normalization_20/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9feed_forward_1/conv_2d_18/instance_normalization_20/gamma
Ä
Mfeed_forward_1/conv_2d_18/instance_normalization_20/gamma/Read/ReadVariableOpReadVariableOp9feed_forward_1/conv_2d_18/instance_normalization_20/gamma*
_output_shapes	
:*
dtype0
É
8feed_forward_1/conv_2d_18/instance_normalization_20/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8feed_forward_1/conv_2d_18/instance_normalization_20/beta
Â
Lfeed_forward_1/conv_2d_18/instance_normalization_20/beta/Read/ReadVariableOpReadVariableOp8feed_forward_1/conv_2d_18/instance_normalization_20/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_5/conv_2d_19/conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_5/conv_2d_19/conv2d_19/kernel
É
Ifeed_forward_1/residual_5/conv_2d_19/conv2d_19/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_5/conv_2d_19/conv2d_19/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/gamma
Ú
Xfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/beta
Ø
Wfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_5/conv_2d_20/conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_5/conv_2d_20/conv2d_20/kernel
É
Ifeed_forward_1/residual_5/conv_2d_20/conv2d_20/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_5/conv_2d_20/conv2d_20/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/gamma
Ú
Xfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/beta
Ø
Wfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_6/conv_2d_21/conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_6/conv_2d_21/conv2d_21/kernel
É
Ifeed_forward_1/residual_6/conv_2d_21/conv2d_21/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_6/conv_2d_21/conv2d_21/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/gamma
Ú
Xfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/beta
Ø
Wfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_6/conv_2d_22/conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_6/conv_2d_22/conv2d_22/kernel
É
Ifeed_forward_1/residual_6/conv_2d_22/conv2d_22/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_6/conv_2d_22/conv2d_22/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/gamma
Ú
Xfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/beta
Ø
Wfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_7/conv_2d_23/conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_7/conv_2d_23/conv2d_23/kernel
É
Ifeed_forward_1/residual_7/conv_2d_23/conv2d_23/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_7/conv_2d_23/conv2d_23/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/gamma
Ú
Xfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/beta
Ø
Wfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_7/conv_2d_24/conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_7/conv_2d_24/conv2d_24/kernel
É
Ifeed_forward_1/residual_7/conv_2d_24/conv2d_24/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_7/conv_2d_24/conv2d_24/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/gamma
Ú
Xfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/beta
Ø
Wfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_8/conv_2d_25/conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_8/conv_2d_25/conv2d_25/kernel
É
Ifeed_forward_1/residual_8/conv_2d_25/conv2d_25/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_8/conv_2d_25/conv2d_25/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/gamma
Ú
Xfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/beta
Ø
Wfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_8/conv_2d_26/conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_8/conv_2d_26/conv2d_26/kernel
É
Ifeed_forward_1/residual_8/conv_2d_26/conv2d_26/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_8/conv_2d_26/conv2d_26/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/gamma
Ú
Xfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/beta
Ø
Wfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_9/conv_2d_27/conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_9/conv_2d_27/conv2d_27/kernel
É
Ifeed_forward_1/residual_9/conv_2d_27/conv2d_27/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_9/conv_2d_27/conv2d_27/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/gamma
Ú
Xfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/beta
Ø
Wfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/beta*
_output_shapes	
:*
dtype0
Ð
5feed_forward_1/residual_9/conv_2d_28/conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75feed_forward_1/residual_9/conv_2d_28/conv2d_28/kernel
É
Ifeed_forward_1/residual_9/conv_2d_28/conv2d_28/kernel/Read/ReadVariableOpReadVariableOp5feed_forward_1/residual_9/conv_2d_28/conv2d_28/kernel*(
_output_shapes
:*
dtype0
á
Dfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/gamma
Ú
Xfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/gamma/Read/ReadVariableOpReadVariableOpDfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/gamma*
_output_shapes	
:*
dtype0
ß
Cfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*T
shared_nameECfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/beta
Ø
Wfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/beta/Read/ReadVariableOpReadVariableOpCfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/beta*
_output_shapes	
:*
dtype0
Û
;feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*L
shared_name=;feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/kernel
Ô
Ofeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/kernel/Read/ReadVariableOpReadVariableOp;feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/kernel*'
_output_shapes
:@*
dtype0
ì
Jfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*[
shared_nameLJfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/gamma
å
^feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/gamma/Read/ReadVariableOpReadVariableOpJfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/gamma*
_output_shapes
:@*
dtype0
ê
Ifeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*Z
shared_nameKIfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/beta
ã
]feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/beta/Read/ReadVariableOpReadVariableOpIfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/beta*
_output_shapes
:@*
dtype0
Ú
;feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *L
shared_name=;feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/kernel
Ó
Ofeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/kernel/Read/ReadVariableOpReadVariableOp;feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/kernel*&
_output_shapes
:@ *
dtype0
ì
Jfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *[
shared_nameLJfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/gamma
å
^feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/gamma/Read/ReadVariableOpReadVariableOpJfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/gamma*
_output_shapes
: *
dtype0
ê
Ifeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *Z
shared_nameKIfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/beta
ã
]feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/beta/Read/ReadVariableOpReadVariableOpIfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/beta*
_output_shapes
: *
dtype0
¸
*feed_forward_1/conv_2d_31/conv2d_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		 *;
shared_name,*feed_forward_1/conv_2d_31/conv2d_31/kernel
±
>feed_forward_1/conv_2d_31/conv2d_31/kernel/Read/ReadVariableOpReadVariableOp*feed_forward_1/conv_2d_31/conv2d_31/kernel*&
_output_shapes
:		 *
dtype0
Ê
9feed_forward_1/conv_2d_31/instance_normalization_35/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9feed_forward_1/conv_2d_31/instance_normalization_35/gamma
Ã
Mfeed_forward_1/conv_2d_31/instance_normalization_35/gamma/Read/ReadVariableOpReadVariableOp9feed_forward_1/conv_2d_31/instance_normalization_35/gamma*
_output_shapes
:*
dtype0
È
8feed_forward_1/conv_2d_31/instance_normalization_35/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8feed_forward_1/conv_2d_31/instance_normalization_35/beta
Á
Lfeed_forward_1/conv_2d_31/instance_normalization_35/beta/Read/ReadVariableOpReadVariableOp8feed_forward_1/conv_2d_31/instance_normalization_35/beta*
_output_shapes
:*
dtype0
v
ConstConst*
_output_shapes

:*
dtype0*9
value0B."                             
x
Const_1Const*
_output_shapes

:*
dtype0*9
value0B."                             
x
Const_2Const*
_output_shapes

:*
dtype0*9
value0B."                             
x
Const_3Const*
_output_shapes

:*
dtype0*9
value0B."                             
x
Const_4Const*
_output_shapes

:*
dtype0*9
value0B."                             
x
Const_5Const*
_output_shapes

:*
dtype0*9
value0B."                             
x
Const_6Const*
_output_shapes

:*
dtype0*9
value0B."                             
x
Const_7Const*
_output_shapes

:*
dtype0*9
value0B."                             
x
Const_8Const*
_output_shapes

:*
dtype0*9
value0B."                             
x
Const_9Const*
_output_shapes

:*
dtype0*9
value0B."                             
y
Const_10Const*
_output_shapes

:*
dtype0*9
value0B."                             
y
Const_11Const*
_output_shapes

:*
dtype0*9
value0B."                             
y
Const_12Const*
_output_shapes

:*
dtype0*9
value0B."                             
y
Const_13Const*
_output_shapes

:*
dtype0*9
value0B."                             
y
Const_14Const*
_output_shapes

:*
dtype0*9
value0B."                             
y
Const_15Const*
_output_shapes

:*
dtype0*9
value0B."                             

NoOpNoOp
±Ó
Const_16Const"/device:CPU:0*
_output_shapes
: *
dtype0*èÒ
valueÝÒBÙÒ BÑÒ
î
	conv1
	conv2
	conv3

resid1

resid2

resid3

resid4

resid5
	resize_conv1

resize_conv2
	conv4
trainable_variables
regularization_losses
	variables
	keras_api

signatures
q

conv2d
instance_norm
trainable_variables
regularization_losses
	variables
	keras_api
q

conv2d
instance_norm
trainable_variables
regularization_losses
	variables
	keras_api
q

conv2d
instance_norm
trainable_variables
 regularization_losses
!	variables
"	keras_api
h
	#conv1
	$conv2
%trainable_variables
&regularization_losses
'	variables
(	keras_api
h
	)conv1
	*conv2
+trainable_variables
,regularization_losses
-	variables
.	keras_api
h
	/conv1
	0conv2
1trainable_variables
2regularization_losses
3	variables
4	keras_api
h
	5conv1
	6conv2
7trainable_variables
8regularization_losses
9	variables
:	keras_api
h
	;conv1
	<conv2
=trainable_variables
>regularization_losses
?	variables
@	keras_api
o
Aconv
Binstance_norm
Ctrainable_variables
Dregularization_losses
E	variables
F	keras_api
o
Gconv
Hinstance_norm
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
q

Mconv2d
Ninstance_norm
Otrainable_variables
Pregularization_losses
Q	variables
R	keras_api
ù
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11
_12
`13
a14
b15
c16
d17
e18
f19
g20
h21
i22
j23
k24
l25
m26
n27
o28
p29
q30
r31
s32
t33
u34
v35
w36
x37
y38
z39
{40
|41
}42
~43
44
45
46
47
 
ù
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11
_12
`13
a14
b15
c16
d17
e18
f19
g20
h21
i22
j23
k24
l25
m26
n27
o28
p29
q30
r31
s32
t33
u34
v35
w36
x37
y38
z39
{40
|41
}42
~43
44
45
46
47
²
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
	variables
 
b

Skernel
trainable_variables
regularization_losses
	variables
	keras_api
k
	Tgamma
Ubeta
trainable_variables
regularization_losses
	variables
	keras_api

S0
T1
U2
 

S0
T1
U2
²
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
	variables
b

Vkernel
trainable_variables
regularization_losses
	variables
	keras_api
k
	Wgamma
Xbeta
trainable_variables
regularization_losses
	variables
	keras_api

V0
W1
X2
 

V0
W1
X2
²
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
metrics
 layers
 ¡layer_regularization_losses
	variables
b

Ykernel
¢trainable_variables
£regularization_losses
¤	variables
¥	keras_api
k
	Zgamma
[beta
¦trainable_variables
§regularization_losses
¨	variables
©	keras_api

Y0
Z1
[2
 

Y0
Z1
[2
²
trainable_variables
 regularization_losses
ªnon_trainable_variables
«layer_metrics
¬metrics
­layers
 ®layer_regularization_losses
!	variables
w
¯conv2d
°instance_norm
±trainable_variables
²regularization_losses
³	variables
´	keras_api
w
µconv2d
¶instance_norm
·trainable_variables
¸regularization_losses
¹	variables
º	keras_api
*
\0
]1
^2
_3
`4
a5
 
*
\0
]1
^2
_3
`4
a5
²
%trainable_variables
&regularization_losses
»non_trainable_variables
¼layer_metrics
½metrics
¾layers
 ¿layer_regularization_losses
'	variables
w
Àconv2d
Áinstance_norm
Âtrainable_variables
Ãregularization_losses
Ä	variables
Å	keras_api
w
Æconv2d
Çinstance_norm
Ètrainable_variables
Éregularization_losses
Ê	variables
Ë	keras_api
*
b0
c1
d2
e3
f4
g5
 
*
b0
c1
d2
e3
f4
g5
²
+trainable_variables
,regularization_losses
Ìnon_trainable_variables
Ílayer_metrics
Îmetrics
Ïlayers
 Ðlayer_regularization_losses
-	variables
w
Ñconv2d
Òinstance_norm
Ótrainable_variables
Ôregularization_losses
Õ	variables
Ö	keras_api
w
×conv2d
Øinstance_norm
Ùtrainable_variables
Úregularization_losses
Û	variables
Ü	keras_api
*
h0
i1
j2
k3
l4
m5
 
*
h0
i1
j2
k3
l4
m5
²
1trainable_variables
2regularization_losses
Ýnon_trainable_variables
Þlayer_metrics
ßmetrics
àlayers
 álayer_regularization_losses
3	variables
w
âconv2d
ãinstance_norm
ätrainable_variables
åregularization_losses
æ	variables
ç	keras_api
w
èconv2d
éinstance_norm
êtrainable_variables
ëregularization_losses
ì	variables
í	keras_api
*
n0
o1
p2
q3
r4
s5
 
*
n0
o1
p2
q3
r4
s5
²
7trainable_variables
8regularization_losses
înon_trainable_variables
ïlayer_metrics
ðmetrics
ñlayers
 òlayer_regularization_losses
9	variables
w
óconv2d
ôinstance_norm
õtrainable_variables
öregularization_losses
÷	variables
ø	keras_api
w
ùconv2d
úinstance_norm
ûtrainable_variables
üregularization_losses
ý	variables
þ	keras_api
*
t0
u1
v2
w3
x4
y5
 
*
t0
u1
v2
w3
x4
y5
²
=trainable_variables
>regularization_losses
ÿnon_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
?	variables
w
conv2d
instance_norm
trainable_variables
regularization_losses
	variables
	keras_api

	keras_api

z0
{1
|2
 

z0
{1
|2
²
Ctrainable_variables
Dregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
E	variables
w
conv2d
instance_norm
trainable_variables
regularization_losses
	variables
	keras_api

	keras_api

}0
~1
2
 

}0
~1
2
²
Itrainable_variables
Jregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
K	variables
c
kernel
trainable_variables
regularization_losses
	variables
	keras_api
m

gamma
	beta
 trainable_variables
¡regularization_losses
¢	variables
£	keras_api

0
1
2
 

0
1
2
²
Otrainable_variables
Pregularization_losses
¤non_trainable_variables
¥layer_metrics
¦metrics
§layers
 ¨layer_regularization_losses
Q	variables
pn
VARIABLE_VALUE*feed_forward_1/conv_2d_16/conv2d_16/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE9feed_forward_1/conv_2d_16/instance_normalization_18/gamma0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE8feed_forward_1/conv_2d_16/instance_normalization_18/beta0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE*feed_forward_1/conv_2d_17/conv2d_17/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE9feed_forward_1/conv_2d_17/instance_normalization_19/gamma0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE8feed_forward_1/conv_2d_17/instance_normalization_19/beta0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE*feed_forward_1/conv_2d_18/conv2d_18/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE9feed_forward_1/conv_2d_18/instance_normalization_20/gamma0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE8feed_forward_1/conv_2d_18/instance_normalization_20/beta0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE5feed_forward_1/residual_5/conv_2d_19/conv2d_19/kernel0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/gamma1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/beta1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5feed_forward_1/residual_5/conv_2d_20/conv2d_20/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/gamma1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/beta1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5feed_forward_1/residual_6/conv_2d_21/conv2d_21/kernel1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/gamma1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/beta1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5feed_forward_1/residual_6/conv_2d_22/conv2d_22/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/gamma1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/beta1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5feed_forward_1/residual_7/conv_2d_23/conv2d_23/kernel1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/gamma1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/beta1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5feed_forward_1/residual_7/conv_2d_24/conv2d_24/kernel1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/gamma1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/beta1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5feed_forward_1/residual_8/conv_2d_25/conv2d_25/kernel1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/gamma1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/beta1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5feed_forward_1/residual_8/conv_2d_26/conv2d_26/kernel1trainable_variables/30/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/gamma1trainable_variables/31/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/beta1trainable_variables/32/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5feed_forward_1/residual_9/conv_2d_27/conv2d_27/kernel1trainable_variables/33/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/gamma1trainable_variables/34/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/beta1trainable_variables/35/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5feed_forward_1/residual_9/conv_2d_28/conv2d_28/kernel1trainable_variables/36/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/gamma1trainable_variables/37/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUECfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/beta1trainable_variables/38/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE;feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/kernel1trainable_variables/39/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEJfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/gamma1trainable_variables/40/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEIfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/beta1trainable_variables/41/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE;feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/kernel1trainable_variables/42/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEJfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/gamma1trainable_variables/43/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEIfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/beta1trainable_variables/44/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE*feed_forward_1/conv_2d_31/conv2d_31/kernel1trainable_variables/45/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUE9feed_forward_1/conv_2d_31/instance_normalization_35/gamma1trainable_variables/46/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE8feed_forward_1/conv_2d_31/instance_normalization_35/beta1trainable_variables/47/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
N
0
1
2
3
4
5
6
7
	8

9
10
 

S0
 

S0
µ
trainable_variables
regularization_losses
©non_trainable_variables
ªlayer_metrics
«metrics
¬layers
 ­layer_regularization_losses
	variables

T0
U1
 

T0
U1
µ
trainable_variables
regularization_losses
®non_trainable_variables
¯layer_metrics
°metrics
±layers
 ²layer_regularization_losses
	variables
 
 
 

0
1
 

V0
 

V0
µ
trainable_variables
regularization_losses
³non_trainable_variables
´layer_metrics
µmetrics
¶layers
 ·layer_regularization_losses
	variables

W0
X1
 

W0
X1
µ
trainable_variables
regularization_losses
¸non_trainable_variables
¹layer_metrics
ºmetrics
»layers
 ¼layer_regularization_losses
	variables
 
 
 

0
1
 

Y0
 

Y0
µ
¢trainable_variables
£regularization_losses
½non_trainable_variables
¾layer_metrics
¿metrics
Àlayers
 Álayer_regularization_losses
¤	variables

Z0
[1
 

Z0
[1
µ
¦trainable_variables
§regularization_losses
Ânon_trainable_variables
Ãlayer_metrics
Ämetrics
Ålayers
 Ælayer_regularization_losses
¨	variables
 
 
 

0
1
 
b

\kernel
Çtrainable_variables
Èregularization_losses
É	variables
Ê	keras_api
k
	]gamma
^beta
Ëtrainable_variables
Ìregularization_losses
Í	variables
Î	keras_api

\0
]1
^2
 

\0
]1
^2
µ
±trainable_variables
²regularization_losses
Ïnon_trainable_variables
Ðlayer_metrics
Ñmetrics
Òlayers
 Ólayer_regularization_losses
³	variables
b

_kernel
Ôtrainable_variables
Õregularization_losses
Ö	variables
×	keras_api
k
	`gamma
abeta
Øtrainable_variables
Ùregularization_losses
Ú	variables
Û	keras_api

_0
`1
a2
 

_0
`1
a2
µ
·trainable_variables
¸regularization_losses
Ünon_trainable_variables
Ýlayer_metrics
Þmetrics
ßlayers
 àlayer_regularization_losses
¹	variables
 
 
 

#0
$1
 
b

bkernel
átrainable_variables
âregularization_losses
ã	variables
ä	keras_api
k
	cgamma
dbeta
åtrainable_variables
æregularization_losses
ç	variables
è	keras_api

b0
c1
d2
 

b0
c1
d2
µ
Âtrainable_variables
Ãregularization_losses
énon_trainable_variables
êlayer_metrics
ëmetrics
ìlayers
 ílayer_regularization_losses
Ä	variables
b

ekernel
îtrainable_variables
ïregularization_losses
ð	variables
ñ	keras_api
k
	fgamma
gbeta
òtrainable_variables
óregularization_losses
ô	variables
õ	keras_api

e0
f1
g2
 

e0
f1
g2
µ
Ètrainable_variables
Éregularization_losses
önon_trainable_variables
÷layer_metrics
ømetrics
ùlayers
 úlayer_regularization_losses
Ê	variables
 
 
 

)0
*1
 
b

hkernel
ûtrainable_variables
üregularization_losses
ý	variables
þ	keras_api
k
	igamma
jbeta
ÿtrainable_variables
regularization_losses
	variables
	keras_api

h0
i1
j2
 

h0
i1
j2
µ
Ótrainable_variables
Ôregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
Õ	variables
b

kkernel
trainable_variables
regularization_losses
	variables
	keras_api
k
	lgamma
mbeta
trainable_variables
regularization_losses
	variables
	keras_api

k0
l1
m2
 

k0
l1
m2
µ
Ùtrainable_variables
Úregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
Û	variables
 
 
 

/0
01
 
b

nkernel
trainable_variables
regularization_losses
	variables
	keras_api
k
	ogamma
pbeta
trainable_variables
regularization_losses
	variables
	keras_api

n0
o1
p2
 

n0
o1
p2
µ
ätrainable_variables
åregularization_losses
non_trainable_variables
layer_metrics
metrics
 layers
 ¡layer_regularization_losses
æ	variables
b

qkernel
¢trainable_variables
£regularization_losses
¤	variables
¥	keras_api
k
	rgamma
sbeta
¦trainable_variables
§regularization_losses
¨	variables
©	keras_api

q0
r1
s2
 

q0
r1
s2
µ
êtrainable_variables
ëregularization_losses
ªnon_trainable_variables
«layer_metrics
¬metrics
­layers
 ®layer_regularization_losses
ì	variables
 
 
 

50
61
 
b

tkernel
¯trainable_variables
°regularization_losses
±	variables
²	keras_api
k
	ugamma
vbeta
³trainable_variables
´regularization_losses
µ	variables
¶	keras_api

t0
u1
v2
 

t0
u1
v2
µ
õtrainable_variables
öregularization_losses
·non_trainable_variables
¸layer_metrics
¹metrics
ºlayers
 »layer_regularization_losses
÷	variables
b

wkernel
¼trainable_variables
½regularization_losses
¾	variables
¿	keras_api
k
	xgamma
ybeta
Àtrainable_variables
Áregularization_losses
Â	variables
Ã	keras_api

w0
x1
y2
 

w0
x1
y2
µ
ûtrainable_variables
üregularization_losses
Änon_trainable_variables
Ålayer_metrics
Æmetrics
Çlayers
 Èlayer_regularization_losses
ý	variables
 
 
 

;0
<1
 
b

zkernel
Étrainable_variables
Êregularization_losses
Ë	variables
Ì	keras_api
k
	{gamma
|beta
Ítrainable_variables
Îregularization_losses
Ï	variables
Ð	keras_api

z0
{1
|2
 

z0
{1
|2
µ
trainable_variables
regularization_losses
Ñnon_trainable_variables
Òlayer_metrics
Ómetrics
Ôlayers
 Õlayer_regularization_losses
	variables
 
 
 
 

A0
B1
 
b

}kernel
Ötrainable_variables
×regularization_losses
Ø	variables
Ù	keras_api
k
	~gamma
beta
Útrainable_variables
Ûregularization_losses
Ü	variables
Ý	keras_api

}0
~1
2
 

}0
~1
2
µ
trainable_variables
regularization_losses
Þnon_trainable_variables
ßlayer_metrics
àmetrics
álayers
 âlayer_regularization_losses
	variables
 
 
 
 

G0
H1
 

0
 

0
µ
trainable_variables
regularization_losses
ãnon_trainable_variables
älayer_metrics
åmetrics
ælayers
 çlayer_regularization_losses
	variables

0
1
 

0
1
µ
 trainable_variables
¡regularization_losses
ènon_trainable_variables
élayer_metrics
êmetrics
ëlayers
 ìlayer_regularization_losses
¢	variables
 
 
 

M0
N1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

\0
 

\0
µ
Çtrainable_variables
Èregularization_losses
ínon_trainable_variables
îlayer_metrics
ïmetrics
ðlayers
 ñlayer_regularization_losses
É	variables

]0
^1
 

]0
^1
µ
Ëtrainable_variables
Ìregularization_losses
ònon_trainable_variables
ólayer_metrics
ômetrics
õlayers
 ölayer_regularization_losses
Í	variables
 
 
 

¯0
°1
 

_0
 

_0
µ
Ôtrainable_variables
Õregularization_losses
÷non_trainable_variables
ølayer_metrics
ùmetrics
úlayers
 ûlayer_regularization_losses
Ö	variables

`0
a1
 

`0
a1
µ
Øtrainable_variables
Ùregularization_losses
ünon_trainable_variables
ýlayer_metrics
þmetrics
ÿlayers
 layer_regularization_losses
Ú	variables
 
 
 

µ0
¶1
 

b0
 

b0
µ
átrainable_variables
âregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ã	variables

c0
d1
 

c0
d1
µ
åtrainable_variables
æregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ç	variables
 
 
 

À0
Á1
 

e0
 

e0
µ
îtrainable_variables
ïregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ð	variables

f0
g1
 

f0
g1
µ
òtrainable_variables
óregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ô	variables
 
 
 

Æ0
Ç1
 

h0
 

h0
µ
ûtrainable_variables
üregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ý	variables

i0
j1
 

i0
j1
µ
ÿtrainable_variables
regularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
	variables
 
 
 

Ñ0
Ò1
 

k0
 

k0
µ
trainable_variables
regularization_losses
non_trainable_variables
 layer_metrics
¡metrics
¢layers
 £layer_regularization_losses
	variables

l0
m1
 

l0
m1
µ
trainable_variables
regularization_losses
¤non_trainable_variables
¥layer_metrics
¦metrics
§layers
 ¨layer_regularization_losses
	variables
 
 
 

×0
Ø1
 

n0
 

n0
µ
trainable_variables
regularization_losses
©non_trainable_variables
ªlayer_metrics
«metrics
¬layers
 ­layer_regularization_losses
	variables

o0
p1
 

o0
p1
µ
trainable_variables
regularization_losses
®non_trainable_variables
¯layer_metrics
°metrics
±layers
 ²layer_regularization_losses
	variables
 
 
 

â0
ã1
 

q0
 

q0
µ
¢trainable_variables
£regularization_losses
³non_trainable_variables
´layer_metrics
µmetrics
¶layers
 ·layer_regularization_losses
¤	variables

r0
s1
 

r0
s1
µ
¦trainable_variables
§regularization_losses
¸non_trainable_variables
¹layer_metrics
ºmetrics
»layers
 ¼layer_regularization_losses
¨	variables
 
 
 

è0
é1
 

t0
 

t0
µ
¯trainable_variables
°regularization_losses
½non_trainable_variables
¾layer_metrics
¿metrics
Àlayers
 Álayer_regularization_losses
±	variables

u0
v1
 

u0
v1
µ
³trainable_variables
´regularization_losses
Ânon_trainable_variables
Ãlayer_metrics
Ämetrics
Ålayers
 Ælayer_regularization_losses
µ	variables
 
 
 

ó0
ô1
 

w0
 

w0
µ
¼trainable_variables
½regularization_losses
Çnon_trainable_variables
Èlayer_metrics
Émetrics
Êlayers
 Ëlayer_regularization_losses
¾	variables

x0
y1
 

x0
y1
µ
Àtrainable_variables
Áregularization_losses
Ìnon_trainable_variables
Ílayer_metrics
Îmetrics
Ïlayers
 Ðlayer_regularization_losses
Â	variables
 
 
 

ù0
ú1
 

z0
 

z0
µ
Étrainable_variables
Êregularization_losses
Ñnon_trainable_variables
Òlayer_metrics
Ómetrics
Ôlayers
 Õlayer_regularization_losses
Ë	variables

{0
|1
 

{0
|1
µ
Ítrainable_variables
Îregularization_losses
Önon_trainable_variables
×layer_metrics
Ømetrics
Ùlayers
 Úlayer_regularization_losses
Ï	variables
 
 
 

0
1
 

}0
 

}0
µ
Ötrainable_variables
×regularization_losses
Ûnon_trainable_variables
Ülayer_metrics
Ýmetrics
Þlayers
 ßlayer_regularization_losses
Ø	variables

~0
1
 

~0
1
µ
Útrainable_variables
Ûregularization_losses
ànon_trainable_variables
álayer_metrics
âmetrics
ãlayers
 älayer_regularization_losses
Ü	variables
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

serving_default_input_1Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿèè

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Const*feed_forward_1/conv_2d_16/conv2d_16/kernel9feed_forward_1/conv_2d_16/instance_normalization_18/gamma8feed_forward_1/conv_2d_16/instance_normalization_18/betaConst_1*feed_forward_1/conv_2d_17/conv2d_17/kernel9feed_forward_1/conv_2d_17/instance_normalization_19/gamma8feed_forward_1/conv_2d_17/instance_normalization_19/betaConst_2*feed_forward_1/conv_2d_18/conv2d_18/kernel9feed_forward_1/conv_2d_18/instance_normalization_20/gamma8feed_forward_1/conv_2d_18/instance_normalization_20/betaConst_35feed_forward_1/residual_5/conv_2d_19/conv2d_19/kernelDfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/gammaCfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/betaConst_45feed_forward_1/residual_5/conv_2d_20/conv2d_20/kernelDfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/gammaCfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/betaConst_55feed_forward_1/residual_6/conv_2d_21/conv2d_21/kernelDfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/gammaCfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/betaConst_65feed_forward_1/residual_6/conv_2d_22/conv2d_22/kernelDfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/gammaCfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/betaConst_75feed_forward_1/residual_7/conv_2d_23/conv2d_23/kernelDfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/gammaCfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/betaConst_85feed_forward_1/residual_7/conv_2d_24/conv2d_24/kernelDfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/gammaCfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/betaConst_95feed_forward_1/residual_8/conv_2d_25/conv2d_25/kernelDfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/gammaCfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/betaConst_105feed_forward_1/residual_8/conv_2d_26/conv2d_26/kernelDfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/gammaCfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/betaConst_115feed_forward_1/residual_9/conv_2d_27/conv2d_27/kernelDfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/gammaCfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/betaConst_125feed_forward_1/residual_9/conv_2d_28/conv2d_28/kernelDfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/gammaCfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/betaConst_13;feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/kernelJfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/gammaIfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/betaConst_14;feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/kernelJfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/gammaIfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/betaConst_15*feed_forward_1/conv_2d_31/conv2d_31/kernel9feed_forward_1/conv_2d_31/instance_normalization_35/gamma8feed_forward_1/conv_2d_31/instance_normalization_35/beta*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*R
_read_only_resource_inputs4
20
 "#$&'(*+,./0234678:;<>?@*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference_signature_wrapper_4988
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ï!
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename>feed_forward_1/conv_2d_16/conv2d_16/kernel/Read/ReadVariableOpMfeed_forward_1/conv_2d_16/instance_normalization_18/gamma/Read/ReadVariableOpLfeed_forward_1/conv_2d_16/instance_normalization_18/beta/Read/ReadVariableOp>feed_forward_1/conv_2d_17/conv2d_17/kernel/Read/ReadVariableOpMfeed_forward_1/conv_2d_17/instance_normalization_19/gamma/Read/ReadVariableOpLfeed_forward_1/conv_2d_17/instance_normalization_19/beta/Read/ReadVariableOp>feed_forward_1/conv_2d_18/conv2d_18/kernel/Read/ReadVariableOpMfeed_forward_1/conv_2d_18/instance_normalization_20/gamma/Read/ReadVariableOpLfeed_forward_1/conv_2d_18/instance_normalization_20/beta/Read/ReadVariableOpIfeed_forward_1/residual_5/conv_2d_19/conv2d_19/kernel/Read/ReadVariableOpXfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/gamma/Read/ReadVariableOpWfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/beta/Read/ReadVariableOpIfeed_forward_1/residual_5/conv_2d_20/conv2d_20/kernel/Read/ReadVariableOpXfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/gamma/Read/ReadVariableOpWfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/beta/Read/ReadVariableOpIfeed_forward_1/residual_6/conv_2d_21/conv2d_21/kernel/Read/ReadVariableOpXfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/gamma/Read/ReadVariableOpWfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/beta/Read/ReadVariableOpIfeed_forward_1/residual_6/conv_2d_22/conv2d_22/kernel/Read/ReadVariableOpXfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/gamma/Read/ReadVariableOpWfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/beta/Read/ReadVariableOpIfeed_forward_1/residual_7/conv_2d_23/conv2d_23/kernel/Read/ReadVariableOpXfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/gamma/Read/ReadVariableOpWfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/beta/Read/ReadVariableOpIfeed_forward_1/residual_7/conv_2d_24/conv2d_24/kernel/Read/ReadVariableOpXfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/gamma/Read/ReadVariableOpWfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/beta/Read/ReadVariableOpIfeed_forward_1/residual_8/conv_2d_25/conv2d_25/kernel/Read/ReadVariableOpXfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/gamma/Read/ReadVariableOpWfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/beta/Read/ReadVariableOpIfeed_forward_1/residual_8/conv_2d_26/conv2d_26/kernel/Read/ReadVariableOpXfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/gamma/Read/ReadVariableOpWfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/beta/Read/ReadVariableOpIfeed_forward_1/residual_9/conv_2d_27/conv2d_27/kernel/Read/ReadVariableOpXfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/gamma/Read/ReadVariableOpWfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/beta/Read/ReadVariableOpIfeed_forward_1/residual_9/conv_2d_28/conv2d_28/kernel/Read/ReadVariableOpXfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/gamma/Read/ReadVariableOpWfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/beta/Read/ReadVariableOpOfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/kernel/Read/ReadVariableOp^feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/gamma/Read/ReadVariableOp]feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/beta/Read/ReadVariableOpOfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/kernel/Read/ReadVariableOp^feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/gamma/Read/ReadVariableOp]feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/beta/Read/ReadVariableOp>feed_forward_1/conv_2d_31/conv2d_31/kernel/Read/ReadVariableOpMfeed_forward_1/conv_2d_31/instance_normalization_35/gamma/Read/ReadVariableOpLfeed_forward_1/conv_2d_31/instance_normalization_35/beta/Read/ReadVariableOpConst_16*=
Tin6
422*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *&
f!R
__inference__traced_save_6121

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*feed_forward_1/conv_2d_16/conv2d_16/kernel9feed_forward_1/conv_2d_16/instance_normalization_18/gamma8feed_forward_1/conv_2d_16/instance_normalization_18/beta*feed_forward_1/conv_2d_17/conv2d_17/kernel9feed_forward_1/conv_2d_17/instance_normalization_19/gamma8feed_forward_1/conv_2d_17/instance_normalization_19/beta*feed_forward_1/conv_2d_18/conv2d_18/kernel9feed_forward_1/conv_2d_18/instance_normalization_20/gamma8feed_forward_1/conv_2d_18/instance_normalization_20/beta5feed_forward_1/residual_5/conv_2d_19/conv2d_19/kernelDfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/gammaCfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/beta5feed_forward_1/residual_5/conv_2d_20/conv2d_20/kernelDfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/gammaCfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/beta5feed_forward_1/residual_6/conv_2d_21/conv2d_21/kernelDfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/gammaCfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/beta5feed_forward_1/residual_6/conv_2d_22/conv2d_22/kernelDfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/gammaCfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/beta5feed_forward_1/residual_7/conv_2d_23/conv2d_23/kernelDfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/gammaCfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/beta5feed_forward_1/residual_7/conv_2d_24/conv2d_24/kernelDfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/gammaCfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/beta5feed_forward_1/residual_8/conv_2d_25/conv2d_25/kernelDfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/gammaCfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/beta5feed_forward_1/residual_8/conv_2d_26/conv2d_26/kernelDfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/gammaCfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/beta5feed_forward_1/residual_9/conv_2d_27/conv2d_27/kernelDfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/gammaCfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/beta5feed_forward_1/residual_9/conv_2d_28/conv2d_28/kernelDfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/gammaCfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/beta;feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/kernelJfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/gammaIfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/beta;feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/kernelJfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/gammaIfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/beta*feed_forward_1/conv_2d_31/conv2d_31/kernel9feed_forward_1/conv_2d_31/instance_normalization_35/gamma8feed_forward_1/conv_2d_31/instance_normalization_35/beta*<
Tin5
321*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_restore_6275ËÛ0
ê

8__inference_instance_normalization_30_layer_call_fn_3440

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_30_layer_call_and_return_conditional_losses_34302
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

D__inference_residual_6_layer_call_and_return_conditional_losses_5383

inputs!
conv_2d_21_mirrorpad_paddings7
3conv_2d_21_conv2d_21_conv2d_readvariableop_resourceH
Dconv_2d_21_instance_normalization_23_reshape_readvariableop_resourceJ
Fconv_2d_21_instance_normalization_23_reshape_1_readvariableop_resource!
conv_2d_22_mirrorpad_paddings7
3conv_2d_22_conv2d_22_conv2d_readvariableop_resourceH
Dconv_2d_22_instance_normalization_24_reshape_readvariableop_resourceJ
Fconv_2d_22_instance_normalization_24_reshape_1_readvariableop_resource
identity¢*conv_2d_21/conv2d_21/Conv2D/ReadVariableOp¢;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp¢=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp¢*conv_2d_22/conv2d_22/Conv2D/ReadVariableOp¢;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp¢=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp°
conv_2d_21/MirrorPad	MirrorPadinputsconv_2d_21_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_21/MirrorPadÖ
*conv_2d_21/conv2d_21/Conv2D/ReadVariableOpReadVariableOp3conv_2d_21_conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_21/conv2d_21/Conv2D/ReadVariableOpý
conv_2d_21/conv2d_21/Conv2DConv2Dconv_2d_21/MirrorPad:output:02conv_2d_21/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_21/conv2d_21/Conv2D¬
*conv_2d_21/instance_normalization_23/ShapeShape$conv_2d_21/conv2d_21/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_21/instance_normalization_23/Shape¾
8conv_2d_21/instance_normalization_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_21/instance_normalization_23/strided_slice/stackÂ
:conv_2d_21/instance_normalization_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice/stack_1Â
:conv_2d_21/instance_normalization_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice/stack_2À
2conv_2d_21/instance_normalization_23/strided_sliceStridedSlice3conv_2d_21/instance_normalization_23/Shape:output:0Aconv_2d_21/instance_normalization_23/strided_slice/stack:output:0Cconv_2d_21/instance_normalization_23/strided_slice/stack_1:output:0Cconv_2d_21/instance_normalization_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_21/instance_normalization_23/strided_sliceÂ
:conv_2d_21/instance_normalization_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice_1/stackÆ
<conv_2d_21/instance_normalization_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_1/stack_1Æ
<conv_2d_21/instance_normalization_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_1/stack_2Ê
4conv_2d_21/instance_normalization_23/strided_slice_1StridedSlice3conv_2d_21/instance_normalization_23/Shape:output:0Cconv_2d_21/instance_normalization_23/strided_slice_1/stack:output:0Econv_2d_21/instance_normalization_23/strided_slice_1/stack_1:output:0Econv_2d_21/instance_normalization_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_21/instance_normalization_23/strided_slice_1Â
:conv_2d_21/instance_normalization_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice_2/stackÆ
<conv_2d_21/instance_normalization_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_2/stack_1Æ
<conv_2d_21/instance_normalization_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_2/stack_2Ê
4conv_2d_21/instance_normalization_23/strided_slice_2StridedSlice3conv_2d_21/instance_normalization_23/Shape:output:0Cconv_2d_21/instance_normalization_23/strided_slice_2/stack:output:0Econv_2d_21/instance_normalization_23/strided_slice_2/stack_1:output:0Econv_2d_21/instance_normalization_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_21/instance_normalization_23/strided_slice_2Â
:conv_2d_21/instance_normalization_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice_3/stackÆ
<conv_2d_21/instance_normalization_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_3/stack_1Æ
<conv_2d_21/instance_normalization_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_3/stack_2Ê
4conv_2d_21/instance_normalization_23/strided_slice_3StridedSlice3conv_2d_21/instance_normalization_23/Shape:output:0Cconv_2d_21/instance_normalization_23/strided_slice_3/stack:output:0Econv_2d_21/instance_normalization_23/strided_slice_3/stack_1:output:0Econv_2d_21/instance_normalization_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_21/instance_normalization_23/strided_slice_3Û
Cconv_2d_21/instance_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_21/instance_normalization_23/moments/mean/reduction_indices®
1conv_2d_21/instance_normalization_23/moments/meanMean$conv_2d_21/conv2d_21/Conv2D:output:0Lconv_2d_21/instance_normalization_23/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_21/instance_normalization_23/moments/meaný
9conv_2d_21/instance_normalization_23/moments/StopGradientStopGradient:conv_2d_21/instance_normalization_23/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_21/instance_normalization_23/moments/StopGradient¼
>conv_2d_21/instance_normalization_23/moments/SquaredDifferenceSquaredDifference$conv_2d_21/conv2d_21/Conv2D:output:0Bconv_2d_21/instance_normalization_23/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_21/instance_normalization_23/moments/SquaredDifferenceã
Gconv_2d_21/instance_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_21/instance_normalization_23/moments/variance/reduction_indicesØ
5conv_2d_21/instance_normalization_23/moments/varianceMeanBconv_2d_21/instance_normalization_23/moments/SquaredDifference:z:0Pconv_2d_21/instance_normalization_23/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_21/instance_normalization_23/moments/varianceü
;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOpReadVariableOpDconv_2d_21_instance_normalization_23_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOpÁ
2conv_2d_21/instance_normalization_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_21/instance_normalization_23/Reshape/shape
,conv_2d_21/instance_normalization_23/ReshapeReshapeCconv_2d_21/instance_normalization_23/Reshape/ReadVariableOp:value:0;conv_2d_21/instance_normalization_23/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_21/instance_normalization_23/Reshape
=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_21_instance_normalization_23_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOpÅ
4conv_2d_21/instance_normalization_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_21/instance_normalization_23/Reshape_1/shape£
.conv_2d_21/instance_normalization_23/Reshape_1ReshapeEconv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp:value:0=conv_2d_21/instance_normalization_23/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_21/instance_normalization_23/Reshape_1±
4conv_2d_21/instance_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_21/instance_normalization_23/batchnorm/add/y«
2conv_2d_21/instance_normalization_23/batchnorm/addAddV2>conv_2d_21/instance_normalization_23/moments/variance:output:0=conv_2d_21/instance_normalization_23/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_21/instance_normalization_23/batchnorm/addè
4conv_2d_21/instance_normalization_23/batchnorm/RsqrtRsqrt6conv_2d_21/instance_normalization_23/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_21/instance_normalization_23/batchnorm/Rsqrt
2conv_2d_21/instance_normalization_23/batchnorm/mulMul8conv_2d_21/instance_normalization_23/batchnorm/Rsqrt:y:05conv_2d_21/instance_normalization_23/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_21/instance_normalization_23/batchnorm/mul
4conv_2d_21/instance_normalization_23/batchnorm/mul_1Mul$conv_2d_21/conv2d_21/Conv2D:output:06conv_2d_21/instance_normalization_23/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_21/instance_normalization_23/batchnorm/mul_1¢
4conv_2d_21/instance_normalization_23/batchnorm/mul_2Mul:conv_2d_21/instance_normalization_23/moments/mean:output:06conv_2d_21/instance_normalization_23/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_21/instance_normalization_23/batchnorm/mul_2
2conv_2d_21/instance_normalization_23/batchnorm/subSub7conv_2d_21/instance_normalization_23/Reshape_1:output:08conv_2d_21/instance_normalization_23/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_21/instance_normalization_23/batchnorm/sub¤
4conv_2d_21/instance_normalization_23/batchnorm/add_1AddV28conv_2d_21/instance_normalization_23/batchnorm/mul_1:z:06conv_2d_21/instance_normalization_23/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_21/instance_normalization_23/batchnorm/add_1¡
conv_2d_21/ReluRelu8conv_2d_21/instance_normalization_23/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_21/ReluÇ
conv_2d_22/MirrorPad	MirrorPadconv_2d_21/Relu:activations:0conv_2d_22_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_22/MirrorPadÖ
*conv_2d_22/conv2d_22/Conv2D/ReadVariableOpReadVariableOp3conv_2d_22_conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_22/conv2d_22/Conv2D/ReadVariableOpý
conv_2d_22/conv2d_22/Conv2DConv2Dconv_2d_22/MirrorPad:output:02conv_2d_22/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_22/conv2d_22/Conv2D¬
*conv_2d_22/instance_normalization_24/ShapeShape$conv_2d_22/conv2d_22/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_22/instance_normalization_24/Shape¾
8conv_2d_22/instance_normalization_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_22/instance_normalization_24/strided_slice/stackÂ
:conv_2d_22/instance_normalization_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice/stack_1Â
:conv_2d_22/instance_normalization_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice/stack_2À
2conv_2d_22/instance_normalization_24/strided_sliceStridedSlice3conv_2d_22/instance_normalization_24/Shape:output:0Aconv_2d_22/instance_normalization_24/strided_slice/stack:output:0Cconv_2d_22/instance_normalization_24/strided_slice/stack_1:output:0Cconv_2d_22/instance_normalization_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_22/instance_normalization_24/strided_sliceÂ
:conv_2d_22/instance_normalization_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice_1/stackÆ
<conv_2d_22/instance_normalization_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_1/stack_1Æ
<conv_2d_22/instance_normalization_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_1/stack_2Ê
4conv_2d_22/instance_normalization_24/strided_slice_1StridedSlice3conv_2d_22/instance_normalization_24/Shape:output:0Cconv_2d_22/instance_normalization_24/strided_slice_1/stack:output:0Econv_2d_22/instance_normalization_24/strided_slice_1/stack_1:output:0Econv_2d_22/instance_normalization_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_22/instance_normalization_24/strided_slice_1Â
:conv_2d_22/instance_normalization_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice_2/stackÆ
<conv_2d_22/instance_normalization_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_2/stack_1Æ
<conv_2d_22/instance_normalization_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_2/stack_2Ê
4conv_2d_22/instance_normalization_24/strided_slice_2StridedSlice3conv_2d_22/instance_normalization_24/Shape:output:0Cconv_2d_22/instance_normalization_24/strided_slice_2/stack:output:0Econv_2d_22/instance_normalization_24/strided_slice_2/stack_1:output:0Econv_2d_22/instance_normalization_24/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_22/instance_normalization_24/strided_slice_2Â
:conv_2d_22/instance_normalization_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice_3/stackÆ
<conv_2d_22/instance_normalization_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_3/stack_1Æ
<conv_2d_22/instance_normalization_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_3/stack_2Ê
4conv_2d_22/instance_normalization_24/strided_slice_3StridedSlice3conv_2d_22/instance_normalization_24/Shape:output:0Cconv_2d_22/instance_normalization_24/strided_slice_3/stack:output:0Econv_2d_22/instance_normalization_24/strided_slice_3/stack_1:output:0Econv_2d_22/instance_normalization_24/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_22/instance_normalization_24/strided_slice_3Û
Cconv_2d_22/instance_normalization_24/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_22/instance_normalization_24/moments/mean/reduction_indices®
1conv_2d_22/instance_normalization_24/moments/meanMean$conv_2d_22/conv2d_22/Conv2D:output:0Lconv_2d_22/instance_normalization_24/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_22/instance_normalization_24/moments/meaný
9conv_2d_22/instance_normalization_24/moments/StopGradientStopGradient:conv_2d_22/instance_normalization_24/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_22/instance_normalization_24/moments/StopGradient¼
>conv_2d_22/instance_normalization_24/moments/SquaredDifferenceSquaredDifference$conv_2d_22/conv2d_22/Conv2D:output:0Bconv_2d_22/instance_normalization_24/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_22/instance_normalization_24/moments/SquaredDifferenceã
Gconv_2d_22/instance_normalization_24/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_22/instance_normalization_24/moments/variance/reduction_indicesØ
5conv_2d_22/instance_normalization_24/moments/varianceMeanBconv_2d_22/instance_normalization_24/moments/SquaredDifference:z:0Pconv_2d_22/instance_normalization_24/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_22/instance_normalization_24/moments/varianceü
;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOpReadVariableOpDconv_2d_22_instance_normalization_24_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOpÁ
2conv_2d_22/instance_normalization_24/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_22/instance_normalization_24/Reshape/shape
,conv_2d_22/instance_normalization_24/ReshapeReshapeCconv_2d_22/instance_normalization_24/Reshape/ReadVariableOp:value:0;conv_2d_22/instance_normalization_24/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_22/instance_normalization_24/Reshape
=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_22_instance_normalization_24_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOpÅ
4conv_2d_22/instance_normalization_24/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_22/instance_normalization_24/Reshape_1/shape£
.conv_2d_22/instance_normalization_24/Reshape_1ReshapeEconv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp:value:0=conv_2d_22/instance_normalization_24/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_22/instance_normalization_24/Reshape_1±
4conv_2d_22/instance_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_22/instance_normalization_24/batchnorm/add/y«
2conv_2d_22/instance_normalization_24/batchnorm/addAddV2>conv_2d_22/instance_normalization_24/moments/variance:output:0=conv_2d_22/instance_normalization_24/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_22/instance_normalization_24/batchnorm/addè
4conv_2d_22/instance_normalization_24/batchnorm/RsqrtRsqrt6conv_2d_22/instance_normalization_24/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_22/instance_normalization_24/batchnorm/Rsqrt
2conv_2d_22/instance_normalization_24/batchnorm/mulMul8conv_2d_22/instance_normalization_24/batchnorm/Rsqrt:y:05conv_2d_22/instance_normalization_24/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_22/instance_normalization_24/batchnorm/mul
4conv_2d_22/instance_normalization_24/batchnorm/mul_1Mul$conv_2d_22/conv2d_22/Conv2D:output:06conv_2d_22/instance_normalization_24/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_22/instance_normalization_24/batchnorm/mul_1¢
4conv_2d_22/instance_normalization_24/batchnorm/mul_2Mul:conv_2d_22/instance_normalization_24/moments/mean:output:06conv_2d_22/instance_normalization_24/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_22/instance_normalization_24/batchnorm/mul_2
2conv_2d_22/instance_normalization_24/batchnorm/subSub7conv_2d_22/instance_normalization_24/Reshape_1:output:08conv_2d_22/instance_normalization_24/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_22/instance_normalization_24/batchnorm/sub¤
4conv_2d_22/instance_normalization_24/batchnorm/add_1AddV28conv_2d_22/instance_normalization_24/batchnorm/mul_1:z:06conv_2d_22/instance_normalization_24/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_22/instance_normalization_24/batchnorm/add_1
addAddV2inputs8conv_2d_22/instance_normalization_24/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_21/conv2d_21/Conv2D/ReadVariableOp<^conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp>^conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp+^conv_2d_22/conv2d_22/Conv2D/ReadVariableOp<^conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp>^conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_21/conv2d_21/Conv2D/ReadVariableOp*conv_2d_21/conv2d_21/Conv2D/ReadVariableOp2z
;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp2~
=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp2X
*conv_2d_22/conv2d_22/Conv2D/ReadVariableOp*conv_2d_22/conv2d_22/Conv2D/ReadVariableOp2z
;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp2~
=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
·

D__inference_residual_9_layer_call_and_return_conditional_losses_4455

inputs!
conv_2d_27_mirrorpad_paddings7
3conv_2d_27_conv2d_27_conv2d_readvariableop_resourceH
Dconv_2d_27_instance_normalization_29_reshape_readvariableop_resourceJ
Fconv_2d_27_instance_normalization_29_reshape_1_readvariableop_resource!
conv_2d_28_mirrorpad_paddings7
3conv_2d_28_conv2d_28_conv2d_readvariableop_resourceH
Dconv_2d_28_instance_normalization_30_reshape_readvariableop_resourceJ
Fconv_2d_28_instance_normalization_30_reshape_1_readvariableop_resource
identity¢*conv_2d_27/conv2d_27/Conv2D/ReadVariableOp¢;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp¢=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp¢*conv_2d_28/conv2d_28/Conv2D/ReadVariableOp¢;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp¢=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp°
conv_2d_27/MirrorPad	MirrorPadinputsconv_2d_27_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_27/MirrorPadÖ
*conv_2d_27/conv2d_27/Conv2D/ReadVariableOpReadVariableOp3conv_2d_27_conv2d_27_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_27/conv2d_27/Conv2D/ReadVariableOpý
conv_2d_27/conv2d_27/Conv2DConv2Dconv_2d_27/MirrorPad:output:02conv_2d_27/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_27/conv2d_27/Conv2D¬
*conv_2d_27/instance_normalization_29/ShapeShape$conv_2d_27/conv2d_27/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_27/instance_normalization_29/Shape¾
8conv_2d_27/instance_normalization_29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_27/instance_normalization_29/strided_slice/stackÂ
:conv_2d_27/instance_normalization_29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice/stack_1Â
:conv_2d_27/instance_normalization_29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice/stack_2À
2conv_2d_27/instance_normalization_29/strided_sliceStridedSlice3conv_2d_27/instance_normalization_29/Shape:output:0Aconv_2d_27/instance_normalization_29/strided_slice/stack:output:0Cconv_2d_27/instance_normalization_29/strided_slice/stack_1:output:0Cconv_2d_27/instance_normalization_29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_27/instance_normalization_29/strided_sliceÂ
:conv_2d_27/instance_normalization_29/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice_1/stackÆ
<conv_2d_27/instance_normalization_29/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_1/stack_1Æ
<conv_2d_27/instance_normalization_29/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_1/stack_2Ê
4conv_2d_27/instance_normalization_29/strided_slice_1StridedSlice3conv_2d_27/instance_normalization_29/Shape:output:0Cconv_2d_27/instance_normalization_29/strided_slice_1/stack:output:0Econv_2d_27/instance_normalization_29/strided_slice_1/stack_1:output:0Econv_2d_27/instance_normalization_29/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_27/instance_normalization_29/strided_slice_1Â
:conv_2d_27/instance_normalization_29/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice_2/stackÆ
<conv_2d_27/instance_normalization_29/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_2/stack_1Æ
<conv_2d_27/instance_normalization_29/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_2/stack_2Ê
4conv_2d_27/instance_normalization_29/strided_slice_2StridedSlice3conv_2d_27/instance_normalization_29/Shape:output:0Cconv_2d_27/instance_normalization_29/strided_slice_2/stack:output:0Econv_2d_27/instance_normalization_29/strided_slice_2/stack_1:output:0Econv_2d_27/instance_normalization_29/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_27/instance_normalization_29/strided_slice_2Â
:conv_2d_27/instance_normalization_29/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice_3/stackÆ
<conv_2d_27/instance_normalization_29/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_3/stack_1Æ
<conv_2d_27/instance_normalization_29/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_3/stack_2Ê
4conv_2d_27/instance_normalization_29/strided_slice_3StridedSlice3conv_2d_27/instance_normalization_29/Shape:output:0Cconv_2d_27/instance_normalization_29/strided_slice_3/stack:output:0Econv_2d_27/instance_normalization_29/strided_slice_3/stack_1:output:0Econv_2d_27/instance_normalization_29/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_27/instance_normalization_29/strided_slice_3Û
Cconv_2d_27/instance_normalization_29/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_27/instance_normalization_29/moments/mean/reduction_indices®
1conv_2d_27/instance_normalization_29/moments/meanMean$conv_2d_27/conv2d_27/Conv2D:output:0Lconv_2d_27/instance_normalization_29/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_27/instance_normalization_29/moments/meaný
9conv_2d_27/instance_normalization_29/moments/StopGradientStopGradient:conv_2d_27/instance_normalization_29/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_27/instance_normalization_29/moments/StopGradient¼
>conv_2d_27/instance_normalization_29/moments/SquaredDifferenceSquaredDifference$conv_2d_27/conv2d_27/Conv2D:output:0Bconv_2d_27/instance_normalization_29/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_27/instance_normalization_29/moments/SquaredDifferenceã
Gconv_2d_27/instance_normalization_29/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_27/instance_normalization_29/moments/variance/reduction_indicesØ
5conv_2d_27/instance_normalization_29/moments/varianceMeanBconv_2d_27/instance_normalization_29/moments/SquaredDifference:z:0Pconv_2d_27/instance_normalization_29/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_27/instance_normalization_29/moments/varianceü
;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOpReadVariableOpDconv_2d_27_instance_normalization_29_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOpÁ
2conv_2d_27/instance_normalization_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_27/instance_normalization_29/Reshape/shape
,conv_2d_27/instance_normalization_29/ReshapeReshapeCconv_2d_27/instance_normalization_29/Reshape/ReadVariableOp:value:0;conv_2d_27/instance_normalization_29/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_27/instance_normalization_29/Reshape
=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_27_instance_normalization_29_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOpÅ
4conv_2d_27/instance_normalization_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_27/instance_normalization_29/Reshape_1/shape£
.conv_2d_27/instance_normalization_29/Reshape_1ReshapeEconv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp:value:0=conv_2d_27/instance_normalization_29/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_27/instance_normalization_29/Reshape_1±
4conv_2d_27/instance_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_27/instance_normalization_29/batchnorm/add/y«
2conv_2d_27/instance_normalization_29/batchnorm/addAddV2>conv_2d_27/instance_normalization_29/moments/variance:output:0=conv_2d_27/instance_normalization_29/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_27/instance_normalization_29/batchnorm/addè
4conv_2d_27/instance_normalization_29/batchnorm/RsqrtRsqrt6conv_2d_27/instance_normalization_29/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_27/instance_normalization_29/batchnorm/Rsqrt
2conv_2d_27/instance_normalization_29/batchnorm/mulMul8conv_2d_27/instance_normalization_29/batchnorm/Rsqrt:y:05conv_2d_27/instance_normalization_29/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_27/instance_normalization_29/batchnorm/mul
4conv_2d_27/instance_normalization_29/batchnorm/mul_1Mul$conv_2d_27/conv2d_27/Conv2D:output:06conv_2d_27/instance_normalization_29/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_27/instance_normalization_29/batchnorm/mul_1¢
4conv_2d_27/instance_normalization_29/batchnorm/mul_2Mul:conv_2d_27/instance_normalization_29/moments/mean:output:06conv_2d_27/instance_normalization_29/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_27/instance_normalization_29/batchnorm/mul_2
2conv_2d_27/instance_normalization_29/batchnorm/subSub7conv_2d_27/instance_normalization_29/Reshape_1:output:08conv_2d_27/instance_normalization_29/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_27/instance_normalization_29/batchnorm/sub¤
4conv_2d_27/instance_normalization_29/batchnorm/add_1AddV28conv_2d_27/instance_normalization_29/batchnorm/mul_1:z:06conv_2d_27/instance_normalization_29/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_27/instance_normalization_29/batchnorm/add_1¡
conv_2d_27/ReluRelu8conv_2d_27/instance_normalization_29/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_27/ReluÇ
conv_2d_28/MirrorPad	MirrorPadconv_2d_27/Relu:activations:0conv_2d_28_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_28/MirrorPadÖ
*conv_2d_28/conv2d_28/Conv2D/ReadVariableOpReadVariableOp3conv_2d_28_conv2d_28_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_28/conv2d_28/Conv2D/ReadVariableOpý
conv_2d_28/conv2d_28/Conv2DConv2Dconv_2d_28/MirrorPad:output:02conv_2d_28/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_28/conv2d_28/Conv2D¬
*conv_2d_28/instance_normalization_30/ShapeShape$conv_2d_28/conv2d_28/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_28/instance_normalization_30/Shape¾
8conv_2d_28/instance_normalization_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_28/instance_normalization_30/strided_slice/stackÂ
:conv_2d_28/instance_normalization_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice/stack_1Â
:conv_2d_28/instance_normalization_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice/stack_2À
2conv_2d_28/instance_normalization_30/strided_sliceStridedSlice3conv_2d_28/instance_normalization_30/Shape:output:0Aconv_2d_28/instance_normalization_30/strided_slice/stack:output:0Cconv_2d_28/instance_normalization_30/strided_slice/stack_1:output:0Cconv_2d_28/instance_normalization_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_28/instance_normalization_30/strided_sliceÂ
:conv_2d_28/instance_normalization_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice_1/stackÆ
<conv_2d_28/instance_normalization_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_1/stack_1Æ
<conv_2d_28/instance_normalization_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_1/stack_2Ê
4conv_2d_28/instance_normalization_30/strided_slice_1StridedSlice3conv_2d_28/instance_normalization_30/Shape:output:0Cconv_2d_28/instance_normalization_30/strided_slice_1/stack:output:0Econv_2d_28/instance_normalization_30/strided_slice_1/stack_1:output:0Econv_2d_28/instance_normalization_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_28/instance_normalization_30/strided_slice_1Â
:conv_2d_28/instance_normalization_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice_2/stackÆ
<conv_2d_28/instance_normalization_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_2/stack_1Æ
<conv_2d_28/instance_normalization_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_2/stack_2Ê
4conv_2d_28/instance_normalization_30/strided_slice_2StridedSlice3conv_2d_28/instance_normalization_30/Shape:output:0Cconv_2d_28/instance_normalization_30/strided_slice_2/stack:output:0Econv_2d_28/instance_normalization_30/strided_slice_2/stack_1:output:0Econv_2d_28/instance_normalization_30/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_28/instance_normalization_30/strided_slice_2Â
:conv_2d_28/instance_normalization_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice_3/stackÆ
<conv_2d_28/instance_normalization_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_3/stack_1Æ
<conv_2d_28/instance_normalization_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_3/stack_2Ê
4conv_2d_28/instance_normalization_30/strided_slice_3StridedSlice3conv_2d_28/instance_normalization_30/Shape:output:0Cconv_2d_28/instance_normalization_30/strided_slice_3/stack:output:0Econv_2d_28/instance_normalization_30/strided_slice_3/stack_1:output:0Econv_2d_28/instance_normalization_30/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_28/instance_normalization_30/strided_slice_3Û
Cconv_2d_28/instance_normalization_30/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_28/instance_normalization_30/moments/mean/reduction_indices®
1conv_2d_28/instance_normalization_30/moments/meanMean$conv_2d_28/conv2d_28/Conv2D:output:0Lconv_2d_28/instance_normalization_30/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_28/instance_normalization_30/moments/meaný
9conv_2d_28/instance_normalization_30/moments/StopGradientStopGradient:conv_2d_28/instance_normalization_30/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_28/instance_normalization_30/moments/StopGradient¼
>conv_2d_28/instance_normalization_30/moments/SquaredDifferenceSquaredDifference$conv_2d_28/conv2d_28/Conv2D:output:0Bconv_2d_28/instance_normalization_30/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_28/instance_normalization_30/moments/SquaredDifferenceã
Gconv_2d_28/instance_normalization_30/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_28/instance_normalization_30/moments/variance/reduction_indicesØ
5conv_2d_28/instance_normalization_30/moments/varianceMeanBconv_2d_28/instance_normalization_30/moments/SquaredDifference:z:0Pconv_2d_28/instance_normalization_30/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_28/instance_normalization_30/moments/varianceü
;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOpReadVariableOpDconv_2d_28_instance_normalization_30_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOpÁ
2conv_2d_28/instance_normalization_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_28/instance_normalization_30/Reshape/shape
,conv_2d_28/instance_normalization_30/ReshapeReshapeCconv_2d_28/instance_normalization_30/Reshape/ReadVariableOp:value:0;conv_2d_28/instance_normalization_30/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_28/instance_normalization_30/Reshape
=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_28_instance_normalization_30_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOpÅ
4conv_2d_28/instance_normalization_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_28/instance_normalization_30/Reshape_1/shape£
.conv_2d_28/instance_normalization_30/Reshape_1ReshapeEconv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp:value:0=conv_2d_28/instance_normalization_30/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_28/instance_normalization_30/Reshape_1±
4conv_2d_28/instance_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_28/instance_normalization_30/batchnorm/add/y«
2conv_2d_28/instance_normalization_30/batchnorm/addAddV2>conv_2d_28/instance_normalization_30/moments/variance:output:0=conv_2d_28/instance_normalization_30/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_28/instance_normalization_30/batchnorm/addè
4conv_2d_28/instance_normalization_30/batchnorm/RsqrtRsqrt6conv_2d_28/instance_normalization_30/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_28/instance_normalization_30/batchnorm/Rsqrt
2conv_2d_28/instance_normalization_30/batchnorm/mulMul8conv_2d_28/instance_normalization_30/batchnorm/Rsqrt:y:05conv_2d_28/instance_normalization_30/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_28/instance_normalization_30/batchnorm/mul
4conv_2d_28/instance_normalization_30/batchnorm/mul_1Mul$conv_2d_28/conv2d_28/Conv2D:output:06conv_2d_28/instance_normalization_30/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_28/instance_normalization_30/batchnorm/mul_1¢
4conv_2d_28/instance_normalization_30/batchnorm/mul_2Mul:conv_2d_28/instance_normalization_30/moments/mean:output:06conv_2d_28/instance_normalization_30/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_28/instance_normalization_30/batchnorm/mul_2
2conv_2d_28/instance_normalization_30/batchnorm/subSub7conv_2d_28/instance_normalization_30/Reshape_1:output:08conv_2d_28/instance_normalization_30/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_28/instance_normalization_30/batchnorm/sub¤
4conv_2d_28/instance_normalization_30/batchnorm/add_1AddV28conv_2d_28/instance_normalization_30/batchnorm/mul_1:z:06conv_2d_28/instance_normalization_30/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_28/instance_normalization_30/batchnorm/add_1
addAddV2inputs8conv_2d_28/instance_normalization_30/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_27/conv2d_27/Conv2D/ReadVariableOp<^conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp>^conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp+^conv_2d_28/conv2d_28/Conv2D/ReadVariableOp<^conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp>^conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_27/conv2d_27/Conv2D/ReadVariableOp*conv_2d_27/conv2d_27/Conv2D/ReadVariableOp2z
;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp2~
=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp2X
*conv_2d_28/conv2d_28/Conv2D/ReadVariableOp*conv_2d_28/conv2d_28/Conv2D/ReadVariableOp2z
;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp2~
=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
 0
ò
S__inference_instance_normalization_33_layer_call_and_return_conditional_losses_3538

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÃ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
: *
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
: 2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/addx
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
batchnorm/add_1µ
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
 0
ò
S__inference_instance_normalization_35_layer_call_and_return_conditional_losses_3592

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÃ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addx
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1µ
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ

8__inference_instance_normalization_19_layer_call_fn_2846

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_19_layer_call_and_return_conditional_losses_28362
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
²0
ò
S__inference_instance_normalization_29_layer_call_and_return_conditional_losses_3376

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

D__inference_residual_6_layer_call_and_return_conditional_losses_4053

inputs!
conv_2d_21_mirrorpad_paddings7
3conv_2d_21_conv2d_21_conv2d_readvariableop_resourceH
Dconv_2d_21_instance_normalization_23_reshape_readvariableop_resourceJ
Fconv_2d_21_instance_normalization_23_reshape_1_readvariableop_resource!
conv_2d_22_mirrorpad_paddings7
3conv_2d_22_conv2d_22_conv2d_readvariableop_resourceH
Dconv_2d_22_instance_normalization_24_reshape_readvariableop_resourceJ
Fconv_2d_22_instance_normalization_24_reshape_1_readvariableop_resource
identity¢*conv_2d_21/conv2d_21/Conv2D/ReadVariableOp¢;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp¢=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp¢*conv_2d_22/conv2d_22/Conv2D/ReadVariableOp¢;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp¢=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp°
conv_2d_21/MirrorPad	MirrorPadinputsconv_2d_21_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_21/MirrorPadÖ
*conv_2d_21/conv2d_21/Conv2D/ReadVariableOpReadVariableOp3conv_2d_21_conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_21/conv2d_21/Conv2D/ReadVariableOpý
conv_2d_21/conv2d_21/Conv2DConv2Dconv_2d_21/MirrorPad:output:02conv_2d_21/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_21/conv2d_21/Conv2D¬
*conv_2d_21/instance_normalization_23/ShapeShape$conv_2d_21/conv2d_21/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_21/instance_normalization_23/Shape¾
8conv_2d_21/instance_normalization_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_21/instance_normalization_23/strided_slice/stackÂ
:conv_2d_21/instance_normalization_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice/stack_1Â
:conv_2d_21/instance_normalization_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice/stack_2À
2conv_2d_21/instance_normalization_23/strided_sliceStridedSlice3conv_2d_21/instance_normalization_23/Shape:output:0Aconv_2d_21/instance_normalization_23/strided_slice/stack:output:0Cconv_2d_21/instance_normalization_23/strided_slice/stack_1:output:0Cconv_2d_21/instance_normalization_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_21/instance_normalization_23/strided_sliceÂ
:conv_2d_21/instance_normalization_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice_1/stackÆ
<conv_2d_21/instance_normalization_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_1/stack_1Æ
<conv_2d_21/instance_normalization_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_1/stack_2Ê
4conv_2d_21/instance_normalization_23/strided_slice_1StridedSlice3conv_2d_21/instance_normalization_23/Shape:output:0Cconv_2d_21/instance_normalization_23/strided_slice_1/stack:output:0Econv_2d_21/instance_normalization_23/strided_slice_1/stack_1:output:0Econv_2d_21/instance_normalization_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_21/instance_normalization_23/strided_slice_1Â
:conv_2d_21/instance_normalization_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice_2/stackÆ
<conv_2d_21/instance_normalization_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_2/stack_1Æ
<conv_2d_21/instance_normalization_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_2/stack_2Ê
4conv_2d_21/instance_normalization_23/strided_slice_2StridedSlice3conv_2d_21/instance_normalization_23/Shape:output:0Cconv_2d_21/instance_normalization_23/strided_slice_2/stack:output:0Econv_2d_21/instance_normalization_23/strided_slice_2/stack_1:output:0Econv_2d_21/instance_normalization_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_21/instance_normalization_23/strided_slice_2Â
:conv_2d_21/instance_normalization_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_21/instance_normalization_23/strided_slice_3/stackÆ
<conv_2d_21/instance_normalization_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_3/stack_1Æ
<conv_2d_21/instance_normalization_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_21/instance_normalization_23/strided_slice_3/stack_2Ê
4conv_2d_21/instance_normalization_23/strided_slice_3StridedSlice3conv_2d_21/instance_normalization_23/Shape:output:0Cconv_2d_21/instance_normalization_23/strided_slice_3/stack:output:0Econv_2d_21/instance_normalization_23/strided_slice_3/stack_1:output:0Econv_2d_21/instance_normalization_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_21/instance_normalization_23/strided_slice_3Û
Cconv_2d_21/instance_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_21/instance_normalization_23/moments/mean/reduction_indices®
1conv_2d_21/instance_normalization_23/moments/meanMean$conv_2d_21/conv2d_21/Conv2D:output:0Lconv_2d_21/instance_normalization_23/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_21/instance_normalization_23/moments/meaný
9conv_2d_21/instance_normalization_23/moments/StopGradientStopGradient:conv_2d_21/instance_normalization_23/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_21/instance_normalization_23/moments/StopGradient¼
>conv_2d_21/instance_normalization_23/moments/SquaredDifferenceSquaredDifference$conv_2d_21/conv2d_21/Conv2D:output:0Bconv_2d_21/instance_normalization_23/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_21/instance_normalization_23/moments/SquaredDifferenceã
Gconv_2d_21/instance_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_21/instance_normalization_23/moments/variance/reduction_indicesØ
5conv_2d_21/instance_normalization_23/moments/varianceMeanBconv_2d_21/instance_normalization_23/moments/SquaredDifference:z:0Pconv_2d_21/instance_normalization_23/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_21/instance_normalization_23/moments/varianceü
;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOpReadVariableOpDconv_2d_21_instance_normalization_23_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOpÁ
2conv_2d_21/instance_normalization_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_21/instance_normalization_23/Reshape/shape
,conv_2d_21/instance_normalization_23/ReshapeReshapeCconv_2d_21/instance_normalization_23/Reshape/ReadVariableOp:value:0;conv_2d_21/instance_normalization_23/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_21/instance_normalization_23/Reshape
=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_21_instance_normalization_23_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOpÅ
4conv_2d_21/instance_normalization_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_21/instance_normalization_23/Reshape_1/shape£
.conv_2d_21/instance_normalization_23/Reshape_1ReshapeEconv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp:value:0=conv_2d_21/instance_normalization_23/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_21/instance_normalization_23/Reshape_1±
4conv_2d_21/instance_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_21/instance_normalization_23/batchnorm/add/y«
2conv_2d_21/instance_normalization_23/batchnorm/addAddV2>conv_2d_21/instance_normalization_23/moments/variance:output:0=conv_2d_21/instance_normalization_23/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_21/instance_normalization_23/batchnorm/addè
4conv_2d_21/instance_normalization_23/batchnorm/RsqrtRsqrt6conv_2d_21/instance_normalization_23/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_21/instance_normalization_23/batchnorm/Rsqrt
2conv_2d_21/instance_normalization_23/batchnorm/mulMul8conv_2d_21/instance_normalization_23/batchnorm/Rsqrt:y:05conv_2d_21/instance_normalization_23/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_21/instance_normalization_23/batchnorm/mul
4conv_2d_21/instance_normalization_23/batchnorm/mul_1Mul$conv_2d_21/conv2d_21/Conv2D:output:06conv_2d_21/instance_normalization_23/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_21/instance_normalization_23/batchnorm/mul_1¢
4conv_2d_21/instance_normalization_23/batchnorm/mul_2Mul:conv_2d_21/instance_normalization_23/moments/mean:output:06conv_2d_21/instance_normalization_23/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_21/instance_normalization_23/batchnorm/mul_2
2conv_2d_21/instance_normalization_23/batchnorm/subSub7conv_2d_21/instance_normalization_23/Reshape_1:output:08conv_2d_21/instance_normalization_23/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_21/instance_normalization_23/batchnorm/sub¤
4conv_2d_21/instance_normalization_23/batchnorm/add_1AddV28conv_2d_21/instance_normalization_23/batchnorm/mul_1:z:06conv_2d_21/instance_normalization_23/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_21/instance_normalization_23/batchnorm/add_1¡
conv_2d_21/ReluRelu8conv_2d_21/instance_normalization_23/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_21/ReluÇ
conv_2d_22/MirrorPad	MirrorPadconv_2d_21/Relu:activations:0conv_2d_22_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_22/MirrorPadÖ
*conv_2d_22/conv2d_22/Conv2D/ReadVariableOpReadVariableOp3conv_2d_22_conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_22/conv2d_22/Conv2D/ReadVariableOpý
conv_2d_22/conv2d_22/Conv2DConv2Dconv_2d_22/MirrorPad:output:02conv_2d_22/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_22/conv2d_22/Conv2D¬
*conv_2d_22/instance_normalization_24/ShapeShape$conv_2d_22/conv2d_22/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_22/instance_normalization_24/Shape¾
8conv_2d_22/instance_normalization_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_22/instance_normalization_24/strided_slice/stackÂ
:conv_2d_22/instance_normalization_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice/stack_1Â
:conv_2d_22/instance_normalization_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice/stack_2À
2conv_2d_22/instance_normalization_24/strided_sliceStridedSlice3conv_2d_22/instance_normalization_24/Shape:output:0Aconv_2d_22/instance_normalization_24/strided_slice/stack:output:0Cconv_2d_22/instance_normalization_24/strided_slice/stack_1:output:0Cconv_2d_22/instance_normalization_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_22/instance_normalization_24/strided_sliceÂ
:conv_2d_22/instance_normalization_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice_1/stackÆ
<conv_2d_22/instance_normalization_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_1/stack_1Æ
<conv_2d_22/instance_normalization_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_1/stack_2Ê
4conv_2d_22/instance_normalization_24/strided_slice_1StridedSlice3conv_2d_22/instance_normalization_24/Shape:output:0Cconv_2d_22/instance_normalization_24/strided_slice_1/stack:output:0Econv_2d_22/instance_normalization_24/strided_slice_1/stack_1:output:0Econv_2d_22/instance_normalization_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_22/instance_normalization_24/strided_slice_1Â
:conv_2d_22/instance_normalization_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice_2/stackÆ
<conv_2d_22/instance_normalization_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_2/stack_1Æ
<conv_2d_22/instance_normalization_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_2/stack_2Ê
4conv_2d_22/instance_normalization_24/strided_slice_2StridedSlice3conv_2d_22/instance_normalization_24/Shape:output:0Cconv_2d_22/instance_normalization_24/strided_slice_2/stack:output:0Econv_2d_22/instance_normalization_24/strided_slice_2/stack_1:output:0Econv_2d_22/instance_normalization_24/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_22/instance_normalization_24/strided_slice_2Â
:conv_2d_22/instance_normalization_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_22/instance_normalization_24/strided_slice_3/stackÆ
<conv_2d_22/instance_normalization_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_3/stack_1Æ
<conv_2d_22/instance_normalization_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_22/instance_normalization_24/strided_slice_3/stack_2Ê
4conv_2d_22/instance_normalization_24/strided_slice_3StridedSlice3conv_2d_22/instance_normalization_24/Shape:output:0Cconv_2d_22/instance_normalization_24/strided_slice_3/stack:output:0Econv_2d_22/instance_normalization_24/strided_slice_3/stack_1:output:0Econv_2d_22/instance_normalization_24/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_22/instance_normalization_24/strided_slice_3Û
Cconv_2d_22/instance_normalization_24/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_22/instance_normalization_24/moments/mean/reduction_indices®
1conv_2d_22/instance_normalization_24/moments/meanMean$conv_2d_22/conv2d_22/Conv2D:output:0Lconv_2d_22/instance_normalization_24/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_22/instance_normalization_24/moments/meaný
9conv_2d_22/instance_normalization_24/moments/StopGradientStopGradient:conv_2d_22/instance_normalization_24/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_22/instance_normalization_24/moments/StopGradient¼
>conv_2d_22/instance_normalization_24/moments/SquaredDifferenceSquaredDifference$conv_2d_22/conv2d_22/Conv2D:output:0Bconv_2d_22/instance_normalization_24/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_22/instance_normalization_24/moments/SquaredDifferenceã
Gconv_2d_22/instance_normalization_24/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_22/instance_normalization_24/moments/variance/reduction_indicesØ
5conv_2d_22/instance_normalization_24/moments/varianceMeanBconv_2d_22/instance_normalization_24/moments/SquaredDifference:z:0Pconv_2d_22/instance_normalization_24/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_22/instance_normalization_24/moments/varianceü
;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOpReadVariableOpDconv_2d_22_instance_normalization_24_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOpÁ
2conv_2d_22/instance_normalization_24/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_22/instance_normalization_24/Reshape/shape
,conv_2d_22/instance_normalization_24/ReshapeReshapeCconv_2d_22/instance_normalization_24/Reshape/ReadVariableOp:value:0;conv_2d_22/instance_normalization_24/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_22/instance_normalization_24/Reshape
=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_22_instance_normalization_24_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOpÅ
4conv_2d_22/instance_normalization_24/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_22/instance_normalization_24/Reshape_1/shape£
.conv_2d_22/instance_normalization_24/Reshape_1ReshapeEconv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp:value:0=conv_2d_22/instance_normalization_24/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_22/instance_normalization_24/Reshape_1±
4conv_2d_22/instance_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_22/instance_normalization_24/batchnorm/add/y«
2conv_2d_22/instance_normalization_24/batchnorm/addAddV2>conv_2d_22/instance_normalization_24/moments/variance:output:0=conv_2d_22/instance_normalization_24/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_22/instance_normalization_24/batchnorm/addè
4conv_2d_22/instance_normalization_24/batchnorm/RsqrtRsqrt6conv_2d_22/instance_normalization_24/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_22/instance_normalization_24/batchnorm/Rsqrt
2conv_2d_22/instance_normalization_24/batchnorm/mulMul8conv_2d_22/instance_normalization_24/batchnorm/Rsqrt:y:05conv_2d_22/instance_normalization_24/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_22/instance_normalization_24/batchnorm/mul
4conv_2d_22/instance_normalization_24/batchnorm/mul_1Mul$conv_2d_22/conv2d_22/Conv2D:output:06conv_2d_22/instance_normalization_24/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_22/instance_normalization_24/batchnorm/mul_1¢
4conv_2d_22/instance_normalization_24/batchnorm/mul_2Mul:conv_2d_22/instance_normalization_24/moments/mean:output:06conv_2d_22/instance_normalization_24/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_22/instance_normalization_24/batchnorm/mul_2
2conv_2d_22/instance_normalization_24/batchnorm/subSub7conv_2d_22/instance_normalization_24/Reshape_1:output:08conv_2d_22/instance_normalization_24/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_22/instance_normalization_24/batchnorm/sub¤
4conv_2d_22/instance_normalization_24/batchnorm/add_1AddV28conv_2d_22/instance_normalization_24/batchnorm/mul_1:z:06conv_2d_22/instance_normalization_24/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_22/instance_normalization_24/batchnorm/add_1
addAddV2inputs8conv_2d_22/instance_normalization_24/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_21/conv2d_21/Conv2D/ReadVariableOp<^conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp>^conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp+^conv_2d_22/conv2d_22/Conv2D/ReadVariableOp<^conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp>^conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_21/conv2d_21/Conv2D/ReadVariableOp*conv_2d_21/conv2d_21/Conv2D/ReadVariableOp2z
;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp;conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp2~
=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp=conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp2X
*conv_2d_22/conv2d_22/Conv2D/ReadVariableOp*conv_2d_22/conv2d_22/Conv2D/ReadVariableOp2z
;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp;conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp2~
=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp=conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
·

D__inference_residual_8_layer_call_and_return_conditional_losses_5613

inputs!
conv_2d_25_mirrorpad_paddings7
3conv_2d_25_conv2d_25_conv2d_readvariableop_resourceH
Dconv_2d_25_instance_normalization_27_reshape_readvariableop_resourceJ
Fconv_2d_25_instance_normalization_27_reshape_1_readvariableop_resource!
conv_2d_26_mirrorpad_paddings7
3conv_2d_26_conv2d_26_conv2d_readvariableop_resourceH
Dconv_2d_26_instance_normalization_28_reshape_readvariableop_resourceJ
Fconv_2d_26_instance_normalization_28_reshape_1_readvariableop_resource
identity¢*conv_2d_25/conv2d_25/Conv2D/ReadVariableOp¢;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp¢=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp¢*conv_2d_26/conv2d_26/Conv2D/ReadVariableOp¢;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp¢=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp°
conv_2d_25/MirrorPad	MirrorPadinputsconv_2d_25_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_25/MirrorPadÖ
*conv_2d_25/conv2d_25/Conv2D/ReadVariableOpReadVariableOp3conv_2d_25_conv2d_25_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_25/conv2d_25/Conv2D/ReadVariableOpý
conv_2d_25/conv2d_25/Conv2DConv2Dconv_2d_25/MirrorPad:output:02conv_2d_25/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_25/conv2d_25/Conv2D¬
*conv_2d_25/instance_normalization_27/ShapeShape$conv_2d_25/conv2d_25/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_25/instance_normalization_27/Shape¾
8conv_2d_25/instance_normalization_27/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_25/instance_normalization_27/strided_slice/stackÂ
:conv_2d_25/instance_normalization_27/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice/stack_1Â
:conv_2d_25/instance_normalization_27/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice/stack_2À
2conv_2d_25/instance_normalization_27/strided_sliceStridedSlice3conv_2d_25/instance_normalization_27/Shape:output:0Aconv_2d_25/instance_normalization_27/strided_slice/stack:output:0Cconv_2d_25/instance_normalization_27/strided_slice/stack_1:output:0Cconv_2d_25/instance_normalization_27/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_25/instance_normalization_27/strided_sliceÂ
:conv_2d_25/instance_normalization_27/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice_1/stackÆ
<conv_2d_25/instance_normalization_27/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_1/stack_1Æ
<conv_2d_25/instance_normalization_27/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_1/stack_2Ê
4conv_2d_25/instance_normalization_27/strided_slice_1StridedSlice3conv_2d_25/instance_normalization_27/Shape:output:0Cconv_2d_25/instance_normalization_27/strided_slice_1/stack:output:0Econv_2d_25/instance_normalization_27/strided_slice_1/stack_1:output:0Econv_2d_25/instance_normalization_27/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_25/instance_normalization_27/strided_slice_1Â
:conv_2d_25/instance_normalization_27/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice_2/stackÆ
<conv_2d_25/instance_normalization_27/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_2/stack_1Æ
<conv_2d_25/instance_normalization_27/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_2/stack_2Ê
4conv_2d_25/instance_normalization_27/strided_slice_2StridedSlice3conv_2d_25/instance_normalization_27/Shape:output:0Cconv_2d_25/instance_normalization_27/strided_slice_2/stack:output:0Econv_2d_25/instance_normalization_27/strided_slice_2/stack_1:output:0Econv_2d_25/instance_normalization_27/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_25/instance_normalization_27/strided_slice_2Â
:conv_2d_25/instance_normalization_27/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice_3/stackÆ
<conv_2d_25/instance_normalization_27/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_3/stack_1Æ
<conv_2d_25/instance_normalization_27/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_3/stack_2Ê
4conv_2d_25/instance_normalization_27/strided_slice_3StridedSlice3conv_2d_25/instance_normalization_27/Shape:output:0Cconv_2d_25/instance_normalization_27/strided_slice_3/stack:output:0Econv_2d_25/instance_normalization_27/strided_slice_3/stack_1:output:0Econv_2d_25/instance_normalization_27/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_25/instance_normalization_27/strided_slice_3Û
Cconv_2d_25/instance_normalization_27/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_25/instance_normalization_27/moments/mean/reduction_indices®
1conv_2d_25/instance_normalization_27/moments/meanMean$conv_2d_25/conv2d_25/Conv2D:output:0Lconv_2d_25/instance_normalization_27/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_25/instance_normalization_27/moments/meaný
9conv_2d_25/instance_normalization_27/moments/StopGradientStopGradient:conv_2d_25/instance_normalization_27/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_25/instance_normalization_27/moments/StopGradient¼
>conv_2d_25/instance_normalization_27/moments/SquaredDifferenceSquaredDifference$conv_2d_25/conv2d_25/Conv2D:output:0Bconv_2d_25/instance_normalization_27/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_25/instance_normalization_27/moments/SquaredDifferenceã
Gconv_2d_25/instance_normalization_27/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_25/instance_normalization_27/moments/variance/reduction_indicesØ
5conv_2d_25/instance_normalization_27/moments/varianceMeanBconv_2d_25/instance_normalization_27/moments/SquaredDifference:z:0Pconv_2d_25/instance_normalization_27/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_25/instance_normalization_27/moments/varianceü
;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOpReadVariableOpDconv_2d_25_instance_normalization_27_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOpÁ
2conv_2d_25/instance_normalization_27/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_25/instance_normalization_27/Reshape/shape
,conv_2d_25/instance_normalization_27/ReshapeReshapeCconv_2d_25/instance_normalization_27/Reshape/ReadVariableOp:value:0;conv_2d_25/instance_normalization_27/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_25/instance_normalization_27/Reshape
=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_25_instance_normalization_27_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOpÅ
4conv_2d_25/instance_normalization_27/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_25/instance_normalization_27/Reshape_1/shape£
.conv_2d_25/instance_normalization_27/Reshape_1ReshapeEconv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp:value:0=conv_2d_25/instance_normalization_27/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_25/instance_normalization_27/Reshape_1±
4conv_2d_25/instance_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_25/instance_normalization_27/batchnorm/add/y«
2conv_2d_25/instance_normalization_27/batchnorm/addAddV2>conv_2d_25/instance_normalization_27/moments/variance:output:0=conv_2d_25/instance_normalization_27/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_25/instance_normalization_27/batchnorm/addè
4conv_2d_25/instance_normalization_27/batchnorm/RsqrtRsqrt6conv_2d_25/instance_normalization_27/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_25/instance_normalization_27/batchnorm/Rsqrt
2conv_2d_25/instance_normalization_27/batchnorm/mulMul8conv_2d_25/instance_normalization_27/batchnorm/Rsqrt:y:05conv_2d_25/instance_normalization_27/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_25/instance_normalization_27/batchnorm/mul
4conv_2d_25/instance_normalization_27/batchnorm/mul_1Mul$conv_2d_25/conv2d_25/Conv2D:output:06conv_2d_25/instance_normalization_27/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_25/instance_normalization_27/batchnorm/mul_1¢
4conv_2d_25/instance_normalization_27/batchnorm/mul_2Mul:conv_2d_25/instance_normalization_27/moments/mean:output:06conv_2d_25/instance_normalization_27/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_25/instance_normalization_27/batchnorm/mul_2
2conv_2d_25/instance_normalization_27/batchnorm/subSub7conv_2d_25/instance_normalization_27/Reshape_1:output:08conv_2d_25/instance_normalization_27/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_25/instance_normalization_27/batchnorm/sub¤
4conv_2d_25/instance_normalization_27/batchnorm/add_1AddV28conv_2d_25/instance_normalization_27/batchnorm/mul_1:z:06conv_2d_25/instance_normalization_27/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_25/instance_normalization_27/batchnorm/add_1¡
conv_2d_25/ReluRelu8conv_2d_25/instance_normalization_27/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_25/ReluÇ
conv_2d_26/MirrorPad	MirrorPadconv_2d_25/Relu:activations:0conv_2d_26_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_26/MirrorPadÖ
*conv_2d_26/conv2d_26/Conv2D/ReadVariableOpReadVariableOp3conv_2d_26_conv2d_26_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_26/conv2d_26/Conv2D/ReadVariableOpý
conv_2d_26/conv2d_26/Conv2DConv2Dconv_2d_26/MirrorPad:output:02conv_2d_26/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_26/conv2d_26/Conv2D¬
*conv_2d_26/instance_normalization_28/ShapeShape$conv_2d_26/conv2d_26/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_26/instance_normalization_28/Shape¾
8conv_2d_26/instance_normalization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_26/instance_normalization_28/strided_slice/stackÂ
:conv_2d_26/instance_normalization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice/stack_1Â
:conv_2d_26/instance_normalization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice/stack_2À
2conv_2d_26/instance_normalization_28/strided_sliceStridedSlice3conv_2d_26/instance_normalization_28/Shape:output:0Aconv_2d_26/instance_normalization_28/strided_slice/stack:output:0Cconv_2d_26/instance_normalization_28/strided_slice/stack_1:output:0Cconv_2d_26/instance_normalization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_26/instance_normalization_28/strided_sliceÂ
:conv_2d_26/instance_normalization_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice_1/stackÆ
<conv_2d_26/instance_normalization_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_1/stack_1Æ
<conv_2d_26/instance_normalization_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_1/stack_2Ê
4conv_2d_26/instance_normalization_28/strided_slice_1StridedSlice3conv_2d_26/instance_normalization_28/Shape:output:0Cconv_2d_26/instance_normalization_28/strided_slice_1/stack:output:0Econv_2d_26/instance_normalization_28/strided_slice_1/stack_1:output:0Econv_2d_26/instance_normalization_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_26/instance_normalization_28/strided_slice_1Â
:conv_2d_26/instance_normalization_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice_2/stackÆ
<conv_2d_26/instance_normalization_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_2/stack_1Æ
<conv_2d_26/instance_normalization_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_2/stack_2Ê
4conv_2d_26/instance_normalization_28/strided_slice_2StridedSlice3conv_2d_26/instance_normalization_28/Shape:output:0Cconv_2d_26/instance_normalization_28/strided_slice_2/stack:output:0Econv_2d_26/instance_normalization_28/strided_slice_2/stack_1:output:0Econv_2d_26/instance_normalization_28/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_26/instance_normalization_28/strided_slice_2Â
:conv_2d_26/instance_normalization_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice_3/stackÆ
<conv_2d_26/instance_normalization_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_3/stack_1Æ
<conv_2d_26/instance_normalization_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_3/stack_2Ê
4conv_2d_26/instance_normalization_28/strided_slice_3StridedSlice3conv_2d_26/instance_normalization_28/Shape:output:0Cconv_2d_26/instance_normalization_28/strided_slice_3/stack:output:0Econv_2d_26/instance_normalization_28/strided_slice_3/stack_1:output:0Econv_2d_26/instance_normalization_28/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_26/instance_normalization_28/strided_slice_3Û
Cconv_2d_26/instance_normalization_28/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_26/instance_normalization_28/moments/mean/reduction_indices®
1conv_2d_26/instance_normalization_28/moments/meanMean$conv_2d_26/conv2d_26/Conv2D:output:0Lconv_2d_26/instance_normalization_28/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_26/instance_normalization_28/moments/meaný
9conv_2d_26/instance_normalization_28/moments/StopGradientStopGradient:conv_2d_26/instance_normalization_28/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_26/instance_normalization_28/moments/StopGradient¼
>conv_2d_26/instance_normalization_28/moments/SquaredDifferenceSquaredDifference$conv_2d_26/conv2d_26/Conv2D:output:0Bconv_2d_26/instance_normalization_28/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_26/instance_normalization_28/moments/SquaredDifferenceã
Gconv_2d_26/instance_normalization_28/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_26/instance_normalization_28/moments/variance/reduction_indicesØ
5conv_2d_26/instance_normalization_28/moments/varianceMeanBconv_2d_26/instance_normalization_28/moments/SquaredDifference:z:0Pconv_2d_26/instance_normalization_28/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_26/instance_normalization_28/moments/varianceü
;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOpReadVariableOpDconv_2d_26_instance_normalization_28_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOpÁ
2conv_2d_26/instance_normalization_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_26/instance_normalization_28/Reshape/shape
,conv_2d_26/instance_normalization_28/ReshapeReshapeCconv_2d_26/instance_normalization_28/Reshape/ReadVariableOp:value:0;conv_2d_26/instance_normalization_28/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_26/instance_normalization_28/Reshape
=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_26_instance_normalization_28_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOpÅ
4conv_2d_26/instance_normalization_28/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_26/instance_normalization_28/Reshape_1/shape£
.conv_2d_26/instance_normalization_28/Reshape_1ReshapeEconv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp:value:0=conv_2d_26/instance_normalization_28/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_26/instance_normalization_28/Reshape_1±
4conv_2d_26/instance_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_26/instance_normalization_28/batchnorm/add/y«
2conv_2d_26/instance_normalization_28/batchnorm/addAddV2>conv_2d_26/instance_normalization_28/moments/variance:output:0=conv_2d_26/instance_normalization_28/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_26/instance_normalization_28/batchnorm/addè
4conv_2d_26/instance_normalization_28/batchnorm/RsqrtRsqrt6conv_2d_26/instance_normalization_28/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_26/instance_normalization_28/batchnorm/Rsqrt
2conv_2d_26/instance_normalization_28/batchnorm/mulMul8conv_2d_26/instance_normalization_28/batchnorm/Rsqrt:y:05conv_2d_26/instance_normalization_28/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_26/instance_normalization_28/batchnorm/mul
4conv_2d_26/instance_normalization_28/batchnorm/mul_1Mul$conv_2d_26/conv2d_26/Conv2D:output:06conv_2d_26/instance_normalization_28/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_26/instance_normalization_28/batchnorm/mul_1¢
4conv_2d_26/instance_normalization_28/batchnorm/mul_2Mul:conv_2d_26/instance_normalization_28/moments/mean:output:06conv_2d_26/instance_normalization_28/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_26/instance_normalization_28/batchnorm/mul_2
2conv_2d_26/instance_normalization_28/batchnorm/subSub7conv_2d_26/instance_normalization_28/Reshape_1:output:08conv_2d_26/instance_normalization_28/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_26/instance_normalization_28/batchnorm/sub¤
4conv_2d_26/instance_normalization_28/batchnorm/add_1AddV28conv_2d_26/instance_normalization_28/batchnorm/mul_1:z:06conv_2d_26/instance_normalization_28/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_26/instance_normalization_28/batchnorm/add_1
addAddV2inputs8conv_2d_26/instance_normalization_28/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_25/conv2d_25/Conv2D/ReadVariableOp<^conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp>^conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp+^conv_2d_26/conv2d_26/Conv2D/ReadVariableOp<^conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp>^conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_25/conv2d_25/Conv2D/ReadVariableOp*conv_2d_25/conv2d_25/Conv2D/ReadVariableOp2z
;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp2~
=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp2X
*conv_2d_26/conv2d_26/Conv2D/ReadVariableOp*conv_2d_26/conv2d_26/Conv2D/ReadVariableOp2z
;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp2~
=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
¨P
³
D__inference_conv_2d_17_layer_call_and_return_conditional_losses_5099

inputs
mirrorpad_paddings,
(conv2d_17_conv2d_readvariableop_resource=
9instance_normalization_19_reshape_readvariableop_resource?
;instance_normalization_19_reshape_1_readvariableop_resource
identity¢conv2d_17/Conv2D/ReadVariableOp¢0instance_normalization_19/Reshape/ReadVariableOp¢2instance_normalization_19/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿêê *
mode	REFLECT2
	MirrorPad³
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_17/Conv2D/ReadVariableOpÐ
conv2d_17/Conv2DConv2DMirrorPad:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2
conv2d_17/Conv2D
instance_normalization_19/ShapeShapeconv2d_17/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_19/Shape¨
-instance_normalization_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_19/strided_slice/stack¬
/instance_normalization_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice/stack_1¬
/instance_normalization_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice/stack_2þ
'instance_normalization_19/strided_sliceStridedSlice(instance_normalization_19/Shape:output:06instance_normalization_19/strided_slice/stack:output:08instance_normalization_19/strided_slice/stack_1:output:08instance_normalization_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_19/strided_slice¬
/instance_normalization_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice_1/stack°
1instance_normalization_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_1/stack_1°
1instance_normalization_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_1/stack_2
)instance_normalization_19/strided_slice_1StridedSlice(instance_normalization_19/Shape:output:08instance_normalization_19/strided_slice_1/stack:output:0:instance_normalization_19/strided_slice_1/stack_1:output:0:instance_normalization_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_19/strided_slice_1¬
/instance_normalization_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice_2/stack°
1instance_normalization_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_2/stack_1°
1instance_normalization_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_2/stack_2
)instance_normalization_19/strided_slice_2StridedSlice(instance_normalization_19/Shape:output:08instance_normalization_19/strided_slice_2/stack:output:0:instance_normalization_19/strided_slice_2/stack_1:output:0:instance_normalization_19/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_19/strided_slice_2¬
/instance_normalization_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice_3/stack°
1instance_normalization_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_3/stack_1°
1instance_normalization_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_3/stack_2
)instance_normalization_19/strided_slice_3StridedSlice(instance_normalization_19/Shape:output:08instance_normalization_19/strided_slice_3/stack:output:0:instance_normalization_19/strided_slice_3/stack_1:output:0:instance_normalization_19/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_19/strided_slice_3Å
8instance_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_19/moments/mean/reduction_indices
&instance_normalization_19/moments/meanMeanconv2d_17/Conv2D:output:0Ainstance_normalization_19/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2(
&instance_normalization_19/moments/meanÛ
.instance_normalization_19/moments/StopGradientStopGradient/instance_normalization_19/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.instance_normalization_19/moments/StopGradient
3instance_normalization_19/moments/SquaredDifferenceSquaredDifferenceconv2d_17/Conv2D:output:07instance_normalization_19/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@25
3instance_normalization_19/moments/SquaredDifferenceÍ
<instance_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_19/moments/variance/reduction_indices«
*instance_normalization_19/moments/varianceMean7instance_normalization_19/moments/SquaredDifference:z:0Einstance_normalization_19/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2,
*instance_normalization_19/moments/varianceÚ
0instance_normalization_19/Reshape/ReadVariableOpReadVariableOp9instance_normalization_19_reshape_readvariableop_resource*
_output_shapes
:@*
dtype022
0instance_normalization_19/Reshape/ReadVariableOp«
'instance_normalization_19/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2)
'instance_normalization_19/Reshape/shapeî
!instance_normalization_19/ReshapeReshape8instance_normalization_19/Reshape/ReadVariableOp:value:00instance_normalization_19/Reshape/shape:output:0*
T0*&
_output_shapes
:@2#
!instance_normalization_19/Reshapeà
2instance_normalization_19/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_19_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype024
2instance_normalization_19/Reshape_1/ReadVariableOp¯
)instance_normalization_19/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2+
)instance_normalization_19/Reshape_1/shapeö
#instance_normalization_19/Reshape_1Reshape:instance_normalization_19/Reshape_1/ReadVariableOp:value:02instance_normalization_19/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2%
#instance_normalization_19/Reshape_1
)instance_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_19/batchnorm/add/yþ
'instance_normalization_19/batchnorm/addAddV23instance_normalization_19/moments/variance:output:02instance_normalization_19/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_19/batchnorm/addÆ
)instance_normalization_19/batchnorm/RsqrtRsqrt+instance_normalization_19/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)instance_normalization_19/batchnorm/Rsqrtî
'instance_normalization_19/batchnorm/mulMul-instance_normalization_19/batchnorm/Rsqrt:y:0*instance_normalization_19/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_19/batchnorm/mulá
)instance_normalization_19/batchnorm/mul_1Mulconv2d_17/Conv2D:output:0+instance_normalization_19/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2+
)instance_normalization_19/batchnorm/mul_1õ
)instance_normalization_19/batchnorm/mul_2Mul/instance_normalization_19/moments/mean:output:0+instance_normalization_19/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)instance_normalization_19/batchnorm/mul_2ð
'instance_normalization_19/batchnorm/subSub,instance_normalization_19/Reshape_1:output:0-instance_normalization_19/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_19/batchnorm/sub÷
)instance_normalization_19/batchnorm/add_1AddV2-instance_normalization_19/batchnorm/mul_1:z:0+instance_normalization_19/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2+
)instance_normalization_19/batchnorm/add_1
ReluRelu-instance_normalization_19/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2
Reluú
IdentityIdentityRelu:activations:0 ^conv2d_17/Conv2D/ReadVariableOp1^instance_normalization_19/Reshape/ReadVariableOp3^instance_normalization_19/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2d
0instance_normalization_19/Reshape/ReadVariableOp0instance_normalization_19/Reshape/ReadVariableOp2h
2instance_normalization_19/Reshape_1/ReadVariableOp2instance_normalization_19/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
ê

8__inference_instance_normalization_28_layer_call_fn_3332

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_28_layer_call_and_return_conditional_losses_33222
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢	
Ø
)__inference_residual_8_layer_call_fn_5634

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_8_layer_call_and_return_conditional_losses_43212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
à_

J__inference_resize_conv_2d_3_layer_call_and_return_conditional_losses_5864

inputs!
conv_2d_30_mirrorpad_paddings7
3conv_2d_30_conv2d_30_conv2d_readvariableop_resourceH
Dconv_2d_30_instance_normalization_33_reshape_readvariableop_resourceJ
Fconv_2d_30_instance_normalization_33_reshape_1_readvariableop_resource
identity¢*conv_2d_30/conv2d_30/Conv2D/ReadVariableOp¢;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp¢=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOpk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Ð  Ð  2
resize/sizeÉ
resize/ResizeNearestNeighborResizeNearestNeighborinputsresize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐÐ@*
half_pixel_centers(2
resize/ResizeNearestNeighborÖ
conv_2d_30/MirrorPad	MirrorPad-resize/ResizeNearestNeighbor:resized_images:0conv_2d_30_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒÒ@*
mode	REFLECT2
conv_2d_30/MirrorPadÔ
*conv_2d_30/conv2d_30/Conv2D/ReadVariableOpReadVariableOp3conv_2d_30_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02,
*conv_2d_30/conv2d_30/Conv2D/ReadVariableOpü
conv_2d_30/conv2d_30/Conv2DConv2Dconv_2d_30/MirrorPad:output:02conv_2d_30/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2
conv_2d_30/conv2d_30/Conv2D¬
*conv_2d_30/instance_normalization_33/ShapeShape$conv_2d_30/conv2d_30/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_30/instance_normalization_33/Shape¾
8conv_2d_30/instance_normalization_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_30/instance_normalization_33/strided_slice/stackÂ
:conv_2d_30/instance_normalization_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice/stack_1Â
:conv_2d_30/instance_normalization_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice/stack_2À
2conv_2d_30/instance_normalization_33/strided_sliceStridedSlice3conv_2d_30/instance_normalization_33/Shape:output:0Aconv_2d_30/instance_normalization_33/strided_slice/stack:output:0Cconv_2d_30/instance_normalization_33/strided_slice/stack_1:output:0Cconv_2d_30/instance_normalization_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_30/instance_normalization_33/strided_sliceÂ
:conv_2d_30/instance_normalization_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice_1/stackÆ
<conv_2d_30/instance_normalization_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_1/stack_1Æ
<conv_2d_30/instance_normalization_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_1/stack_2Ê
4conv_2d_30/instance_normalization_33/strided_slice_1StridedSlice3conv_2d_30/instance_normalization_33/Shape:output:0Cconv_2d_30/instance_normalization_33/strided_slice_1/stack:output:0Econv_2d_30/instance_normalization_33/strided_slice_1/stack_1:output:0Econv_2d_30/instance_normalization_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_30/instance_normalization_33/strided_slice_1Â
:conv_2d_30/instance_normalization_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice_2/stackÆ
<conv_2d_30/instance_normalization_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_2/stack_1Æ
<conv_2d_30/instance_normalization_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_2/stack_2Ê
4conv_2d_30/instance_normalization_33/strided_slice_2StridedSlice3conv_2d_30/instance_normalization_33/Shape:output:0Cconv_2d_30/instance_normalization_33/strided_slice_2/stack:output:0Econv_2d_30/instance_normalization_33/strided_slice_2/stack_1:output:0Econv_2d_30/instance_normalization_33/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_30/instance_normalization_33/strided_slice_2Â
:conv_2d_30/instance_normalization_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice_3/stackÆ
<conv_2d_30/instance_normalization_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_3/stack_1Æ
<conv_2d_30/instance_normalization_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_3/stack_2Ê
4conv_2d_30/instance_normalization_33/strided_slice_3StridedSlice3conv_2d_30/instance_normalization_33/Shape:output:0Cconv_2d_30/instance_normalization_33/strided_slice_3/stack:output:0Econv_2d_30/instance_normalization_33/strided_slice_3/stack_1:output:0Econv_2d_30/instance_normalization_33/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_30/instance_normalization_33/strided_slice_3Û
Cconv_2d_30/instance_normalization_33/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_30/instance_normalization_33/moments/mean/reduction_indices­
1conv_2d_30/instance_normalization_33/moments/meanMean$conv_2d_30/conv2d_30/Conv2D:output:0Lconv_2d_30/instance_normalization_33/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(23
1conv_2d_30/instance_normalization_33/moments/meanü
9conv_2d_30/instance_normalization_33/moments/StopGradientStopGradient:conv_2d_30/instance_normalization_33/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2;
9conv_2d_30/instance_normalization_33/moments/StopGradient»
>conv_2d_30/instance_normalization_33/moments/SquaredDifferenceSquaredDifference$conv_2d_30/conv2d_30/Conv2D:output:0Bconv_2d_30/instance_normalization_33/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2@
>conv_2d_30/instance_normalization_33/moments/SquaredDifferenceã
Gconv_2d_30/instance_normalization_33/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_30/instance_normalization_33/moments/variance/reduction_indices×
5conv_2d_30/instance_normalization_33/moments/varianceMeanBconv_2d_30/instance_normalization_33/moments/SquaredDifference:z:0Pconv_2d_30/instance_normalization_33/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(27
5conv_2d_30/instance_normalization_33/moments/varianceû
;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOpReadVariableOpDconv_2d_30_instance_normalization_33_reshape_readvariableop_resource*
_output_shapes
: *
dtype02=
;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOpÁ
2conv_2d_30/instance_normalization_33/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             24
2conv_2d_30/instance_normalization_33/Reshape/shape
,conv_2d_30/instance_normalization_33/ReshapeReshapeCconv_2d_30/instance_normalization_33/Reshape/ReadVariableOp:value:0;conv_2d_30/instance_normalization_33/Reshape/shape:output:0*
T0*&
_output_shapes
: 2.
,conv_2d_30/instance_normalization_33/Reshape
=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_30_instance_normalization_33_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02?
=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOpÅ
4conv_2d_30/instance_normalization_33/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             26
4conv_2d_30/instance_normalization_33/Reshape_1/shape¢
.conv_2d_30/instance_normalization_33/Reshape_1ReshapeEconv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp:value:0=conv_2d_30/instance_normalization_33/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 20
.conv_2d_30/instance_normalization_33/Reshape_1±
4conv_2d_30/instance_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_30/instance_normalization_33/batchnorm/add/yª
2conv_2d_30/instance_normalization_33/batchnorm/addAddV2>conv_2d_30/instance_normalization_33/moments/variance:output:0=conv_2d_30/instance_normalization_33/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_30/instance_normalization_33/batchnorm/addç
4conv_2d_30/instance_normalization_33/batchnorm/RsqrtRsqrt6conv_2d_30/instance_normalization_33/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4conv_2d_30/instance_normalization_33/batchnorm/Rsqrt
2conv_2d_30/instance_normalization_33/batchnorm/mulMul8conv_2d_30/instance_normalization_33/batchnorm/Rsqrt:y:05conv_2d_30/instance_normalization_33/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_30/instance_normalization_33/batchnorm/mul
4conv_2d_30/instance_normalization_33/batchnorm/mul_1Mul$conv_2d_30/conv2d_30/Conv2D:output:06conv_2d_30/instance_normalization_33/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 26
4conv_2d_30/instance_normalization_33/batchnorm/mul_1¡
4conv_2d_30/instance_normalization_33/batchnorm/mul_2Mul:conv_2d_30/instance_normalization_33/moments/mean:output:06conv_2d_30/instance_normalization_33/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4conv_2d_30/instance_normalization_33/batchnorm/mul_2
2conv_2d_30/instance_normalization_33/batchnorm/subSub7conv_2d_30/instance_normalization_33/Reshape_1:output:08conv_2d_30/instance_normalization_33/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_30/instance_normalization_33/batchnorm/sub£
4conv_2d_30/instance_normalization_33/batchnorm/add_1AddV28conv_2d_30/instance_normalization_33/batchnorm/mul_1:z:06conv_2d_30/instance_normalization_33/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 26
4conv_2d_30/instance_normalization_33/batchnorm/add_1 
conv_2d_30/ReluRelu8conv_2d_30/instance_normalization_33/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2
conv_2d_30/Relu¦
IdentityIdentityconv_2d_30/Relu:activations:0+^conv_2d_30/conv2d_30/Conv2D/ReadVariableOp<^conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp>^conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::2X
*conv_2d_30/conv2d_30/Conv2D/ReadVariableOp*conv_2d_30/conv2d_30/Conv2D/ReadVariableOp2z
;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp2~
=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:
 0
ò
S__inference_instance_normalization_31_layer_call_and_return_conditional_losses_3484

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÃ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:@*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
:@2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/addx
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1µ
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
·

D__inference_residual_7_layer_call_and_return_conditional_losses_5498

inputs!
conv_2d_23_mirrorpad_paddings7
3conv_2d_23_conv2d_23_conv2d_readvariableop_resourceH
Dconv_2d_23_instance_normalization_25_reshape_readvariableop_resourceJ
Fconv_2d_23_instance_normalization_25_reshape_1_readvariableop_resource!
conv_2d_24_mirrorpad_paddings7
3conv_2d_24_conv2d_24_conv2d_readvariableop_resourceH
Dconv_2d_24_instance_normalization_26_reshape_readvariableop_resourceJ
Fconv_2d_24_instance_normalization_26_reshape_1_readvariableop_resource
identity¢*conv_2d_23/conv2d_23/Conv2D/ReadVariableOp¢;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp¢=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp¢*conv_2d_24/conv2d_24/Conv2D/ReadVariableOp¢;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp¢=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp°
conv_2d_23/MirrorPad	MirrorPadinputsconv_2d_23_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_23/MirrorPadÖ
*conv_2d_23/conv2d_23/Conv2D/ReadVariableOpReadVariableOp3conv_2d_23_conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_23/conv2d_23/Conv2D/ReadVariableOpý
conv_2d_23/conv2d_23/Conv2DConv2Dconv_2d_23/MirrorPad:output:02conv_2d_23/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_23/conv2d_23/Conv2D¬
*conv_2d_23/instance_normalization_25/ShapeShape$conv_2d_23/conv2d_23/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_23/instance_normalization_25/Shape¾
8conv_2d_23/instance_normalization_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_23/instance_normalization_25/strided_slice/stackÂ
:conv_2d_23/instance_normalization_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice/stack_1Â
:conv_2d_23/instance_normalization_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice/stack_2À
2conv_2d_23/instance_normalization_25/strided_sliceStridedSlice3conv_2d_23/instance_normalization_25/Shape:output:0Aconv_2d_23/instance_normalization_25/strided_slice/stack:output:0Cconv_2d_23/instance_normalization_25/strided_slice/stack_1:output:0Cconv_2d_23/instance_normalization_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_23/instance_normalization_25/strided_sliceÂ
:conv_2d_23/instance_normalization_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice_1/stackÆ
<conv_2d_23/instance_normalization_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_1/stack_1Æ
<conv_2d_23/instance_normalization_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_1/stack_2Ê
4conv_2d_23/instance_normalization_25/strided_slice_1StridedSlice3conv_2d_23/instance_normalization_25/Shape:output:0Cconv_2d_23/instance_normalization_25/strided_slice_1/stack:output:0Econv_2d_23/instance_normalization_25/strided_slice_1/stack_1:output:0Econv_2d_23/instance_normalization_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_23/instance_normalization_25/strided_slice_1Â
:conv_2d_23/instance_normalization_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice_2/stackÆ
<conv_2d_23/instance_normalization_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_2/stack_1Æ
<conv_2d_23/instance_normalization_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_2/stack_2Ê
4conv_2d_23/instance_normalization_25/strided_slice_2StridedSlice3conv_2d_23/instance_normalization_25/Shape:output:0Cconv_2d_23/instance_normalization_25/strided_slice_2/stack:output:0Econv_2d_23/instance_normalization_25/strided_slice_2/stack_1:output:0Econv_2d_23/instance_normalization_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_23/instance_normalization_25/strided_slice_2Â
:conv_2d_23/instance_normalization_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice_3/stackÆ
<conv_2d_23/instance_normalization_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_3/stack_1Æ
<conv_2d_23/instance_normalization_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_3/stack_2Ê
4conv_2d_23/instance_normalization_25/strided_slice_3StridedSlice3conv_2d_23/instance_normalization_25/Shape:output:0Cconv_2d_23/instance_normalization_25/strided_slice_3/stack:output:0Econv_2d_23/instance_normalization_25/strided_slice_3/stack_1:output:0Econv_2d_23/instance_normalization_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_23/instance_normalization_25/strided_slice_3Û
Cconv_2d_23/instance_normalization_25/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_23/instance_normalization_25/moments/mean/reduction_indices®
1conv_2d_23/instance_normalization_25/moments/meanMean$conv_2d_23/conv2d_23/Conv2D:output:0Lconv_2d_23/instance_normalization_25/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_23/instance_normalization_25/moments/meaný
9conv_2d_23/instance_normalization_25/moments/StopGradientStopGradient:conv_2d_23/instance_normalization_25/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_23/instance_normalization_25/moments/StopGradient¼
>conv_2d_23/instance_normalization_25/moments/SquaredDifferenceSquaredDifference$conv_2d_23/conv2d_23/Conv2D:output:0Bconv_2d_23/instance_normalization_25/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_23/instance_normalization_25/moments/SquaredDifferenceã
Gconv_2d_23/instance_normalization_25/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_23/instance_normalization_25/moments/variance/reduction_indicesØ
5conv_2d_23/instance_normalization_25/moments/varianceMeanBconv_2d_23/instance_normalization_25/moments/SquaredDifference:z:0Pconv_2d_23/instance_normalization_25/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_23/instance_normalization_25/moments/varianceü
;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOpReadVariableOpDconv_2d_23_instance_normalization_25_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOpÁ
2conv_2d_23/instance_normalization_25/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_23/instance_normalization_25/Reshape/shape
,conv_2d_23/instance_normalization_25/ReshapeReshapeCconv_2d_23/instance_normalization_25/Reshape/ReadVariableOp:value:0;conv_2d_23/instance_normalization_25/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_23/instance_normalization_25/Reshape
=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_23_instance_normalization_25_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOpÅ
4conv_2d_23/instance_normalization_25/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_23/instance_normalization_25/Reshape_1/shape£
.conv_2d_23/instance_normalization_25/Reshape_1ReshapeEconv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp:value:0=conv_2d_23/instance_normalization_25/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_23/instance_normalization_25/Reshape_1±
4conv_2d_23/instance_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_23/instance_normalization_25/batchnorm/add/y«
2conv_2d_23/instance_normalization_25/batchnorm/addAddV2>conv_2d_23/instance_normalization_25/moments/variance:output:0=conv_2d_23/instance_normalization_25/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_23/instance_normalization_25/batchnorm/addè
4conv_2d_23/instance_normalization_25/batchnorm/RsqrtRsqrt6conv_2d_23/instance_normalization_25/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_23/instance_normalization_25/batchnorm/Rsqrt
2conv_2d_23/instance_normalization_25/batchnorm/mulMul8conv_2d_23/instance_normalization_25/batchnorm/Rsqrt:y:05conv_2d_23/instance_normalization_25/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_23/instance_normalization_25/batchnorm/mul
4conv_2d_23/instance_normalization_25/batchnorm/mul_1Mul$conv_2d_23/conv2d_23/Conv2D:output:06conv_2d_23/instance_normalization_25/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_23/instance_normalization_25/batchnorm/mul_1¢
4conv_2d_23/instance_normalization_25/batchnorm/mul_2Mul:conv_2d_23/instance_normalization_25/moments/mean:output:06conv_2d_23/instance_normalization_25/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_23/instance_normalization_25/batchnorm/mul_2
2conv_2d_23/instance_normalization_25/batchnorm/subSub7conv_2d_23/instance_normalization_25/Reshape_1:output:08conv_2d_23/instance_normalization_25/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_23/instance_normalization_25/batchnorm/sub¤
4conv_2d_23/instance_normalization_25/batchnorm/add_1AddV28conv_2d_23/instance_normalization_25/batchnorm/mul_1:z:06conv_2d_23/instance_normalization_25/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_23/instance_normalization_25/batchnorm/add_1¡
conv_2d_23/ReluRelu8conv_2d_23/instance_normalization_25/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_23/ReluÇ
conv_2d_24/MirrorPad	MirrorPadconv_2d_23/Relu:activations:0conv_2d_24_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_24/MirrorPadÖ
*conv_2d_24/conv2d_24/Conv2D/ReadVariableOpReadVariableOp3conv_2d_24_conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_24/conv2d_24/Conv2D/ReadVariableOpý
conv_2d_24/conv2d_24/Conv2DConv2Dconv_2d_24/MirrorPad:output:02conv_2d_24/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_24/conv2d_24/Conv2D¬
*conv_2d_24/instance_normalization_26/ShapeShape$conv_2d_24/conv2d_24/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_24/instance_normalization_26/Shape¾
8conv_2d_24/instance_normalization_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_24/instance_normalization_26/strided_slice/stackÂ
:conv_2d_24/instance_normalization_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice/stack_1Â
:conv_2d_24/instance_normalization_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice/stack_2À
2conv_2d_24/instance_normalization_26/strided_sliceStridedSlice3conv_2d_24/instance_normalization_26/Shape:output:0Aconv_2d_24/instance_normalization_26/strided_slice/stack:output:0Cconv_2d_24/instance_normalization_26/strided_slice/stack_1:output:0Cconv_2d_24/instance_normalization_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_24/instance_normalization_26/strided_sliceÂ
:conv_2d_24/instance_normalization_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice_1/stackÆ
<conv_2d_24/instance_normalization_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_1/stack_1Æ
<conv_2d_24/instance_normalization_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_1/stack_2Ê
4conv_2d_24/instance_normalization_26/strided_slice_1StridedSlice3conv_2d_24/instance_normalization_26/Shape:output:0Cconv_2d_24/instance_normalization_26/strided_slice_1/stack:output:0Econv_2d_24/instance_normalization_26/strided_slice_1/stack_1:output:0Econv_2d_24/instance_normalization_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_24/instance_normalization_26/strided_slice_1Â
:conv_2d_24/instance_normalization_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice_2/stackÆ
<conv_2d_24/instance_normalization_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_2/stack_1Æ
<conv_2d_24/instance_normalization_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_2/stack_2Ê
4conv_2d_24/instance_normalization_26/strided_slice_2StridedSlice3conv_2d_24/instance_normalization_26/Shape:output:0Cconv_2d_24/instance_normalization_26/strided_slice_2/stack:output:0Econv_2d_24/instance_normalization_26/strided_slice_2/stack_1:output:0Econv_2d_24/instance_normalization_26/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_24/instance_normalization_26/strided_slice_2Â
:conv_2d_24/instance_normalization_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice_3/stackÆ
<conv_2d_24/instance_normalization_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_3/stack_1Æ
<conv_2d_24/instance_normalization_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_3/stack_2Ê
4conv_2d_24/instance_normalization_26/strided_slice_3StridedSlice3conv_2d_24/instance_normalization_26/Shape:output:0Cconv_2d_24/instance_normalization_26/strided_slice_3/stack:output:0Econv_2d_24/instance_normalization_26/strided_slice_3/stack_1:output:0Econv_2d_24/instance_normalization_26/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_24/instance_normalization_26/strided_slice_3Û
Cconv_2d_24/instance_normalization_26/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_24/instance_normalization_26/moments/mean/reduction_indices®
1conv_2d_24/instance_normalization_26/moments/meanMean$conv_2d_24/conv2d_24/Conv2D:output:0Lconv_2d_24/instance_normalization_26/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_24/instance_normalization_26/moments/meaný
9conv_2d_24/instance_normalization_26/moments/StopGradientStopGradient:conv_2d_24/instance_normalization_26/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_24/instance_normalization_26/moments/StopGradient¼
>conv_2d_24/instance_normalization_26/moments/SquaredDifferenceSquaredDifference$conv_2d_24/conv2d_24/Conv2D:output:0Bconv_2d_24/instance_normalization_26/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_24/instance_normalization_26/moments/SquaredDifferenceã
Gconv_2d_24/instance_normalization_26/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_24/instance_normalization_26/moments/variance/reduction_indicesØ
5conv_2d_24/instance_normalization_26/moments/varianceMeanBconv_2d_24/instance_normalization_26/moments/SquaredDifference:z:0Pconv_2d_24/instance_normalization_26/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_24/instance_normalization_26/moments/varianceü
;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOpReadVariableOpDconv_2d_24_instance_normalization_26_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOpÁ
2conv_2d_24/instance_normalization_26/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_24/instance_normalization_26/Reshape/shape
,conv_2d_24/instance_normalization_26/ReshapeReshapeCconv_2d_24/instance_normalization_26/Reshape/ReadVariableOp:value:0;conv_2d_24/instance_normalization_26/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_24/instance_normalization_26/Reshape
=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_24_instance_normalization_26_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOpÅ
4conv_2d_24/instance_normalization_26/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_24/instance_normalization_26/Reshape_1/shape£
.conv_2d_24/instance_normalization_26/Reshape_1ReshapeEconv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp:value:0=conv_2d_24/instance_normalization_26/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_24/instance_normalization_26/Reshape_1±
4conv_2d_24/instance_normalization_26/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_24/instance_normalization_26/batchnorm/add/y«
2conv_2d_24/instance_normalization_26/batchnorm/addAddV2>conv_2d_24/instance_normalization_26/moments/variance:output:0=conv_2d_24/instance_normalization_26/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_24/instance_normalization_26/batchnorm/addè
4conv_2d_24/instance_normalization_26/batchnorm/RsqrtRsqrt6conv_2d_24/instance_normalization_26/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_24/instance_normalization_26/batchnorm/Rsqrt
2conv_2d_24/instance_normalization_26/batchnorm/mulMul8conv_2d_24/instance_normalization_26/batchnorm/Rsqrt:y:05conv_2d_24/instance_normalization_26/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_24/instance_normalization_26/batchnorm/mul
4conv_2d_24/instance_normalization_26/batchnorm/mul_1Mul$conv_2d_24/conv2d_24/Conv2D:output:06conv_2d_24/instance_normalization_26/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_24/instance_normalization_26/batchnorm/mul_1¢
4conv_2d_24/instance_normalization_26/batchnorm/mul_2Mul:conv_2d_24/instance_normalization_26/moments/mean:output:06conv_2d_24/instance_normalization_26/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_24/instance_normalization_26/batchnorm/mul_2
2conv_2d_24/instance_normalization_26/batchnorm/subSub7conv_2d_24/instance_normalization_26/Reshape_1:output:08conv_2d_24/instance_normalization_26/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_24/instance_normalization_26/batchnorm/sub¤
4conv_2d_24/instance_normalization_26/batchnorm/add_1AddV28conv_2d_24/instance_normalization_26/batchnorm/mul_1:z:06conv_2d_24/instance_normalization_26/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_24/instance_normalization_26/batchnorm/add_1
addAddV2inputs8conv_2d_24/instance_normalization_26/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_23/conv2d_23/Conv2D/ReadVariableOp<^conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp>^conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp+^conv_2d_24/conv2d_24/Conv2D/ReadVariableOp<^conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp>^conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_23/conv2d_23/Conv2D/ReadVariableOp*conv_2d_23/conv2d_23/Conv2D/ReadVariableOp2z
;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp2~
=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp2X
*conv_2d_24/conv2d_24/Conv2D/ReadVariableOp*conv_2d_24/conv2d_24/Conv2D/ReadVariableOp2z
;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp2~
=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
å_

J__inference_resize_conv_2d_2_layer_call_and_return_conditional_losses_5800

inputs!
conv_2d_29_mirrorpad_paddings7
3conv_2d_29_conv2d_29_conv2d_readvariableop_resourceH
Dconv_2d_29_instance_normalization_31_reshape_readvariableop_resourceJ
Fconv_2d_29_instance_normalization_31_reshape_1_readvariableop_resource
identity¢*conv_2d_29/conv2d_29/Conv2D/ReadVariableOp¢;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp¢=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOpk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"è  è  2
resize/sizeÊ
resize/ResizeNearestNeighborResizeNearestNeighborinputsresize/size:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿèè*
half_pixel_centers(2
resize/ResizeNearestNeighbor×
conv_2d_29/MirrorPad	MirrorPad-resize/ResizeNearestNeighbor:resized_images:0conv_2d_29_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿêê*
mode	REFLECT2
conv_2d_29/MirrorPadÕ
*conv_2d_29/conv2d_29/Conv2D/ReadVariableOpReadVariableOp3conv_2d_29_conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02,
*conv_2d_29/conv2d_29/Conv2D/ReadVariableOpü
conv_2d_29/conv2d_29/Conv2DConv2Dconv_2d_29/MirrorPad:output:02conv_2d_29/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2
conv_2d_29/conv2d_29/Conv2D¬
*conv_2d_29/instance_normalization_31/ShapeShape$conv_2d_29/conv2d_29/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_29/instance_normalization_31/Shape¾
8conv_2d_29/instance_normalization_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_29/instance_normalization_31/strided_slice/stackÂ
:conv_2d_29/instance_normalization_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice/stack_1Â
:conv_2d_29/instance_normalization_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice/stack_2À
2conv_2d_29/instance_normalization_31/strided_sliceStridedSlice3conv_2d_29/instance_normalization_31/Shape:output:0Aconv_2d_29/instance_normalization_31/strided_slice/stack:output:0Cconv_2d_29/instance_normalization_31/strided_slice/stack_1:output:0Cconv_2d_29/instance_normalization_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_29/instance_normalization_31/strided_sliceÂ
:conv_2d_29/instance_normalization_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice_1/stackÆ
<conv_2d_29/instance_normalization_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_1/stack_1Æ
<conv_2d_29/instance_normalization_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_1/stack_2Ê
4conv_2d_29/instance_normalization_31/strided_slice_1StridedSlice3conv_2d_29/instance_normalization_31/Shape:output:0Cconv_2d_29/instance_normalization_31/strided_slice_1/stack:output:0Econv_2d_29/instance_normalization_31/strided_slice_1/stack_1:output:0Econv_2d_29/instance_normalization_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_29/instance_normalization_31/strided_slice_1Â
:conv_2d_29/instance_normalization_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice_2/stackÆ
<conv_2d_29/instance_normalization_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_2/stack_1Æ
<conv_2d_29/instance_normalization_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_2/stack_2Ê
4conv_2d_29/instance_normalization_31/strided_slice_2StridedSlice3conv_2d_29/instance_normalization_31/Shape:output:0Cconv_2d_29/instance_normalization_31/strided_slice_2/stack:output:0Econv_2d_29/instance_normalization_31/strided_slice_2/stack_1:output:0Econv_2d_29/instance_normalization_31/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_29/instance_normalization_31/strided_slice_2Â
:conv_2d_29/instance_normalization_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice_3/stackÆ
<conv_2d_29/instance_normalization_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_3/stack_1Æ
<conv_2d_29/instance_normalization_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_3/stack_2Ê
4conv_2d_29/instance_normalization_31/strided_slice_3StridedSlice3conv_2d_29/instance_normalization_31/Shape:output:0Cconv_2d_29/instance_normalization_31/strided_slice_3/stack:output:0Econv_2d_29/instance_normalization_31/strided_slice_3/stack_1:output:0Econv_2d_29/instance_normalization_31/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_29/instance_normalization_31/strided_slice_3Û
Cconv_2d_29/instance_normalization_31/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_29/instance_normalization_31/moments/mean/reduction_indices­
1conv_2d_29/instance_normalization_31/moments/meanMean$conv_2d_29/conv2d_29/Conv2D:output:0Lconv_2d_29/instance_normalization_31/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(23
1conv_2d_29/instance_normalization_31/moments/meanü
9conv_2d_29/instance_normalization_31/moments/StopGradientStopGradient:conv_2d_29/instance_normalization_31/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2;
9conv_2d_29/instance_normalization_31/moments/StopGradient»
>conv_2d_29/instance_normalization_31/moments/SquaredDifferenceSquaredDifference$conv_2d_29/conv2d_29/Conv2D:output:0Bconv_2d_29/instance_normalization_31/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2@
>conv_2d_29/instance_normalization_31/moments/SquaredDifferenceã
Gconv_2d_29/instance_normalization_31/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_29/instance_normalization_31/moments/variance/reduction_indices×
5conv_2d_29/instance_normalization_31/moments/varianceMeanBconv_2d_29/instance_normalization_31/moments/SquaredDifference:z:0Pconv_2d_29/instance_normalization_31/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(27
5conv_2d_29/instance_normalization_31/moments/varianceû
;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOpReadVariableOpDconv_2d_29_instance_normalization_31_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02=
;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOpÁ
2conv_2d_29/instance_normalization_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   24
2conv_2d_29/instance_normalization_31/Reshape/shape
,conv_2d_29/instance_normalization_31/ReshapeReshapeCconv_2d_29/instance_normalization_31/Reshape/ReadVariableOp:value:0;conv_2d_29/instance_normalization_31/Reshape/shape:output:0*
T0*&
_output_shapes
:@2.
,conv_2d_29/instance_normalization_31/Reshape
=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_29_instance_normalization_31_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02?
=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOpÅ
4conv_2d_29/instance_normalization_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   26
4conv_2d_29/instance_normalization_31/Reshape_1/shape¢
.conv_2d_29/instance_normalization_31/Reshape_1ReshapeEconv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp:value:0=conv_2d_29/instance_normalization_31/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@20
.conv_2d_29/instance_normalization_31/Reshape_1±
4conv_2d_29/instance_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_29/instance_normalization_31/batchnorm/add/yª
2conv_2d_29/instance_normalization_31/batchnorm/addAddV2>conv_2d_29/instance_normalization_31/moments/variance:output:0=conv_2d_29/instance_normalization_31/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_29/instance_normalization_31/batchnorm/addç
4conv_2d_29/instance_normalization_31/batchnorm/RsqrtRsqrt6conv_2d_29/instance_normalization_31/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4conv_2d_29/instance_normalization_31/batchnorm/Rsqrt
2conv_2d_29/instance_normalization_31/batchnorm/mulMul8conv_2d_29/instance_normalization_31/batchnorm/Rsqrt:y:05conv_2d_29/instance_normalization_31/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_29/instance_normalization_31/batchnorm/mul
4conv_2d_29/instance_normalization_31/batchnorm/mul_1Mul$conv_2d_29/conv2d_29/Conv2D:output:06conv_2d_29/instance_normalization_31/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@26
4conv_2d_29/instance_normalization_31/batchnorm/mul_1¡
4conv_2d_29/instance_normalization_31/batchnorm/mul_2Mul:conv_2d_29/instance_normalization_31/moments/mean:output:06conv_2d_29/instance_normalization_31/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4conv_2d_29/instance_normalization_31/batchnorm/mul_2
2conv_2d_29/instance_normalization_31/batchnorm/subSub7conv_2d_29/instance_normalization_31/Reshape_1:output:08conv_2d_29/instance_normalization_31/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_29/instance_normalization_31/batchnorm/sub£
4conv_2d_29/instance_normalization_31/batchnorm/add_1AddV28conv_2d_29/instance_normalization_31/batchnorm/mul_1:z:06conv_2d_29/instance_normalization_31/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@26
4conv_2d_29/instance_normalization_31/batchnorm/add_1 
conv_2d_29/ReluRelu8conv_2d_29/instance_normalization_31/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2
conv_2d_29/Relu¦
IdentityIdentityconv_2d_29/Relu:activations:0+^conv_2d_29/conv2d_29/Conv2D/ReadVariableOp<^conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp>^conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿúú::::2X
*conv_2d_29/conv2d_29/Conv2D/ReadVariableOp*conv_2d_29/conv2d_29/Conv2D/ReadVariableOp2z
;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp2~
=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

:
¨P
³
D__inference_conv_2d_16_layer_call_and_return_conditional_losses_5037

inputs
mirrorpad_paddings,
(conv2d_16_conv2d_readvariableop_resource=
9instance_normalization_18_reshape_readvariableop_resource?
;instance_normalization_18_reshape_1_readvariableop_resource
identity¢conv2d_16/Conv2D/ReadVariableOp¢0instance_normalization_18/Reshape/ReadVariableOp¢2instance_normalization_18/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð*
mode	REFLECT2
	MirrorPad³
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_16/Conv2D/ReadVariableOpÐ
conv2d_16/Conv2DConv2DMirrorPad:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2
conv2d_16/Conv2D
instance_normalization_18/ShapeShapeconv2d_16/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_18/Shape¨
-instance_normalization_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_18/strided_slice/stack¬
/instance_normalization_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice/stack_1¬
/instance_normalization_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice/stack_2þ
'instance_normalization_18/strided_sliceStridedSlice(instance_normalization_18/Shape:output:06instance_normalization_18/strided_slice/stack:output:08instance_normalization_18/strided_slice/stack_1:output:08instance_normalization_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_18/strided_slice¬
/instance_normalization_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice_1/stack°
1instance_normalization_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_1/stack_1°
1instance_normalization_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_1/stack_2
)instance_normalization_18/strided_slice_1StridedSlice(instance_normalization_18/Shape:output:08instance_normalization_18/strided_slice_1/stack:output:0:instance_normalization_18/strided_slice_1/stack_1:output:0:instance_normalization_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_18/strided_slice_1¬
/instance_normalization_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice_2/stack°
1instance_normalization_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_2/stack_1°
1instance_normalization_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_2/stack_2
)instance_normalization_18/strided_slice_2StridedSlice(instance_normalization_18/Shape:output:08instance_normalization_18/strided_slice_2/stack:output:0:instance_normalization_18/strided_slice_2/stack_1:output:0:instance_normalization_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_18/strided_slice_2¬
/instance_normalization_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice_3/stack°
1instance_normalization_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_3/stack_1°
1instance_normalization_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_3/stack_2
)instance_normalization_18/strided_slice_3StridedSlice(instance_normalization_18/Shape:output:08instance_normalization_18/strided_slice_3/stack:output:0:instance_normalization_18/strided_slice_3/stack_1:output:0:instance_normalization_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_18/strided_slice_3Å
8instance_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_18/moments/mean/reduction_indices
&instance_normalization_18/moments/meanMeanconv2d_16/Conv2D:output:0Ainstance_normalization_18/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2(
&instance_normalization_18/moments/meanÛ
.instance_normalization_18/moments/StopGradientStopGradient/instance_normalization_18/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.instance_normalization_18/moments/StopGradient
3instance_normalization_18/moments/SquaredDifferenceSquaredDifferenceconv2d_16/Conv2D:output:07instance_normalization_18/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 25
3instance_normalization_18/moments/SquaredDifferenceÍ
<instance_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_18/moments/variance/reduction_indices«
*instance_normalization_18/moments/varianceMean7instance_normalization_18/moments/SquaredDifference:z:0Einstance_normalization_18/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2,
*instance_normalization_18/moments/varianceÚ
0instance_normalization_18/Reshape/ReadVariableOpReadVariableOp9instance_normalization_18_reshape_readvariableop_resource*
_output_shapes
: *
dtype022
0instance_normalization_18/Reshape/ReadVariableOp«
'instance_normalization_18/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'instance_normalization_18/Reshape/shapeî
!instance_normalization_18/ReshapeReshape8instance_normalization_18/Reshape/ReadVariableOp:value:00instance_normalization_18/Reshape/shape:output:0*
T0*&
_output_shapes
: 2#
!instance_normalization_18/Reshapeà
2instance_normalization_18/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_18_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype024
2instance_normalization_18/Reshape_1/ReadVariableOp¯
)instance_normalization_18/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2+
)instance_normalization_18/Reshape_1/shapeö
#instance_normalization_18/Reshape_1Reshape:instance_normalization_18/Reshape_1/ReadVariableOp:value:02instance_normalization_18/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2%
#instance_normalization_18/Reshape_1
)instance_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_18/batchnorm/add/yþ
'instance_normalization_18/batchnorm/addAddV23instance_normalization_18/moments/variance:output:02instance_normalization_18/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_18/batchnorm/addÆ
)instance_normalization_18/batchnorm/RsqrtRsqrt+instance_normalization_18/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)instance_normalization_18/batchnorm/Rsqrtî
'instance_normalization_18/batchnorm/mulMul-instance_normalization_18/batchnorm/Rsqrt:y:0*instance_normalization_18/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_18/batchnorm/mulá
)instance_normalization_18/batchnorm/mul_1Mulconv2d_16/Conv2D:output:0+instance_normalization_18/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2+
)instance_normalization_18/batchnorm/mul_1õ
)instance_normalization_18/batchnorm/mul_2Mul/instance_normalization_18/moments/mean:output:0+instance_normalization_18/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)instance_normalization_18/batchnorm/mul_2ð
'instance_normalization_18/batchnorm/subSub,instance_normalization_18/Reshape_1:output:0-instance_normalization_18/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_18/batchnorm/sub÷
)instance_normalization_18/batchnorm/add_1AddV2-instance_normalization_18/batchnorm/mul_1:z:0+instance_normalization_18/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2+
)instance_normalization_18/batchnorm/add_1
ReluRelu-instance_normalization_18/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2
Reluú
IdentityIdentityRelu:activations:0 ^conv2d_16/Conv2D/ReadVariableOp1^instance_normalization_18/Reshape/ReadVariableOp3^instance_normalization_18/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè::::2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2d
0instance_normalization_18/Reshape/ReadVariableOp0instance_normalization_18/Reshape/ReadVariableOp2h
2instance_normalization_18/Reshape_1/ReadVariableOp2instance_normalization_18/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè
 
_user_specified_nameinputs:$ 

_output_shapes

:
ó

)__inference_conv_2d_31_layer_call_fn_5938

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv_2d_31_layer_call_and_return_conditional_losses_46932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
¢	
Ø
)__inference_residual_5_layer_call_fn_5289

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_5_layer_call_and_return_conditional_losses_39192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
·

D__inference_residual_8_layer_call_and_return_conditional_losses_4321

inputs!
conv_2d_25_mirrorpad_paddings7
3conv_2d_25_conv2d_25_conv2d_readvariableop_resourceH
Dconv_2d_25_instance_normalization_27_reshape_readvariableop_resourceJ
Fconv_2d_25_instance_normalization_27_reshape_1_readvariableop_resource!
conv_2d_26_mirrorpad_paddings7
3conv_2d_26_conv2d_26_conv2d_readvariableop_resourceH
Dconv_2d_26_instance_normalization_28_reshape_readvariableop_resourceJ
Fconv_2d_26_instance_normalization_28_reshape_1_readvariableop_resource
identity¢*conv_2d_25/conv2d_25/Conv2D/ReadVariableOp¢;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp¢=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp¢*conv_2d_26/conv2d_26/Conv2D/ReadVariableOp¢;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp¢=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp°
conv_2d_25/MirrorPad	MirrorPadinputsconv_2d_25_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_25/MirrorPadÖ
*conv_2d_25/conv2d_25/Conv2D/ReadVariableOpReadVariableOp3conv_2d_25_conv2d_25_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_25/conv2d_25/Conv2D/ReadVariableOpý
conv_2d_25/conv2d_25/Conv2DConv2Dconv_2d_25/MirrorPad:output:02conv_2d_25/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_25/conv2d_25/Conv2D¬
*conv_2d_25/instance_normalization_27/ShapeShape$conv_2d_25/conv2d_25/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_25/instance_normalization_27/Shape¾
8conv_2d_25/instance_normalization_27/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_25/instance_normalization_27/strided_slice/stackÂ
:conv_2d_25/instance_normalization_27/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice/stack_1Â
:conv_2d_25/instance_normalization_27/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice/stack_2À
2conv_2d_25/instance_normalization_27/strided_sliceStridedSlice3conv_2d_25/instance_normalization_27/Shape:output:0Aconv_2d_25/instance_normalization_27/strided_slice/stack:output:0Cconv_2d_25/instance_normalization_27/strided_slice/stack_1:output:0Cconv_2d_25/instance_normalization_27/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_25/instance_normalization_27/strided_sliceÂ
:conv_2d_25/instance_normalization_27/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice_1/stackÆ
<conv_2d_25/instance_normalization_27/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_1/stack_1Æ
<conv_2d_25/instance_normalization_27/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_1/stack_2Ê
4conv_2d_25/instance_normalization_27/strided_slice_1StridedSlice3conv_2d_25/instance_normalization_27/Shape:output:0Cconv_2d_25/instance_normalization_27/strided_slice_1/stack:output:0Econv_2d_25/instance_normalization_27/strided_slice_1/stack_1:output:0Econv_2d_25/instance_normalization_27/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_25/instance_normalization_27/strided_slice_1Â
:conv_2d_25/instance_normalization_27/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice_2/stackÆ
<conv_2d_25/instance_normalization_27/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_2/stack_1Æ
<conv_2d_25/instance_normalization_27/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_2/stack_2Ê
4conv_2d_25/instance_normalization_27/strided_slice_2StridedSlice3conv_2d_25/instance_normalization_27/Shape:output:0Cconv_2d_25/instance_normalization_27/strided_slice_2/stack:output:0Econv_2d_25/instance_normalization_27/strided_slice_2/stack_1:output:0Econv_2d_25/instance_normalization_27/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_25/instance_normalization_27/strided_slice_2Â
:conv_2d_25/instance_normalization_27/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_25/instance_normalization_27/strided_slice_3/stackÆ
<conv_2d_25/instance_normalization_27/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_3/stack_1Æ
<conv_2d_25/instance_normalization_27/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_25/instance_normalization_27/strided_slice_3/stack_2Ê
4conv_2d_25/instance_normalization_27/strided_slice_3StridedSlice3conv_2d_25/instance_normalization_27/Shape:output:0Cconv_2d_25/instance_normalization_27/strided_slice_3/stack:output:0Econv_2d_25/instance_normalization_27/strided_slice_3/stack_1:output:0Econv_2d_25/instance_normalization_27/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_25/instance_normalization_27/strided_slice_3Û
Cconv_2d_25/instance_normalization_27/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_25/instance_normalization_27/moments/mean/reduction_indices®
1conv_2d_25/instance_normalization_27/moments/meanMean$conv_2d_25/conv2d_25/Conv2D:output:0Lconv_2d_25/instance_normalization_27/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_25/instance_normalization_27/moments/meaný
9conv_2d_25/instance_normalization_27/moments/StopGradientStopGradient:conv_2d_25/instance_normalization_27/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_25/instance_normalization_27/moments/StopGradient¼
>conv_2d_25/instance_normalization_27/moments/SquaredDifferenceSquaredDifference$conv_2d_25/conv2d_25/Conv2D:output:0Bconv_2d_25/instance_normalization_27/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_25/instance_normalization_27/moments/SquaredDifferenceã
Gconv_2d_25/instance_normalization_27/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_25/instance_normalization_27/moments/variance/reduction_indicesØ
5conv_2d_25/instance_normalization_27/moments/varianceMeanBconv_2d_25/instance_normalization_27/moments/SquaredDifference:z:0Pconv_2d_25/instance_normalization_27/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_25/instance_normalization_27/moments/varianceü
;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOpReadVariableOpDconv_2d_25_instance_normalization_27_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOpÁ
2conv_2d_25/instance_normalization_27/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_25/instance_normalization_27/Reshape/shape
,conv_2d_25/instance_normalization_27/ReshapeReshapeCconv_2d_25/instance_normalization_27/Reshape/ReadVariableOp:value:0;conv_2d_25/instance_normalization_27/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_25/instance_normalization_27/Reshape
=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_25_instance_normalization_27_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOpÅ
4conv_2d_25/instance_normalization_27/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_25/instance_normalization_27/Reshape_1/shape£
.conv_2d_25/instance_normalization_27/Reshape_1ReshapeEconv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp:value:0=conv_2d_25/instance_normalization_27/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_25/instance_normalization_27/Reshape_1±
4conv_2d_25/instance_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_25/instance_normalization_27/batchnorm/add/y«
2conv_2d_25/instance_normalization_27/batchnorm/addAddV2>conv_2d_25/instance_normalization_27/moments/variance:output:0=conv_2d_25/instance_normalization_27/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_25/instance_normalization_27/batchnorm/addè
4conv_2d_25/instance_normalization_27/batchnorm/RsqrtRsqrt6conv_2d_25/instance_normalization_27/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_25/instance_normalization_27/batchnorm/Rsqrt
2conv_2d_25/instance_normalization_27/batchnorm/mulMul8conv_2d_25/instance_normalization_27/batchnorm/Rsqrt:y:05conv_2d_25/instance_normalization_27/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_25/instance_normalization_27/batchnorm/mul
4conv_2d_25/instance_normalization_27/batchnorm/mul_1Mul$conv_2d_25/conv2d_25/Conv2D:output:06conv_2d_25/instance_normalization_27/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_25/instance_normalization_27/batchnorm/mul_1¢
4conv_2d_25/instance_normalization_27/batchnorm/mul_2Mul:conv_2d_25/instance_normalization_27/moments/mean:output:06conv_2d_25/instance_normalization_27/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_25/instance_normalization_27/batchnorm/mul_2
2conv_2d_25/instance_normalization_27/batchnorm/subSub7conv_2d_25/instance_normalization_27/Reshape_1:output:08conv_2d_25/instance_normalization_27/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_25/instance_normalization_27/batchnorm/sub¤
4conv_2d_25/instance_normalization_27/batchnorm/add_1AddV28conv_2d_25/instance_normalization_27/batchnorm/mul_1:z:06conv_2d_25/instance_normalization_27/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_25/instance_normalization_27/batchnorm/add_1¡
conv_2d_25/ReluRelu8conv_2d_25/instance_normalization_27/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_25/ReluÇ
conv_2d_26/MirrorPad	MirrorPadconv_2d_25/Relu:activations:0conv_2d_26_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_26/MirrorPadÖ
*conv_2d_26/conv2d_26/Conv2D/ReadVariableOpReadVariableOp3conv_2d_26_conv2d_26_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_26/conv2d_26/Conv2D/ReadVariableOpý
conv_2d_26/conv2d_26/Conv2DConv2Dconv_2d_26/MirrorPad:output:02conv_2d_26/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_26/conv2d_26/Conv2D¬
*conv_2d_26/instance_normalization_28/ShapeShape$conv_2d_26/conv2d_26/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_26/instance_normalization_28/Shape¾
8conv_2d_26/instance_normalization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_26/instance_normalization_28/strided_slice/stackÂ
:conv_2d_26/instance_normalization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice/stack_1Â
:conv_2d_26/instance_normalization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice/stack_2À
2conv_2d_26/instance_normalization_28/strided_sliceStridedSlice3conv_2d_26/instance_normalization_28/Shape:output:0Aconv_2d_26/instance_normalization_28/strided_slice/stack:output:0Cconv_2d_26/instance_normalization_28/strided_slice/stack_1:output:0Cconv_2d_26/instance_normalization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_26/instance_normalization_28/strided_sliceÂ
:conv_2d_26/instance_normalization_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice_1/stackÆ
<conv_2d_26/instance_normalization_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_1/stack_1Æ
<conv_2d_26/instance_normalization_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_1/stack_2Ê
4conv_2d_26/instance_normalization_28/strided_slice_1StridedSlice3conv_2d_26/instance_normalization_28/Shape:output:0Cconv_2d_26/instance_normalization_28/strided_slice_1/stack:output:0Econv_2d_26/instance_normalization_28/strided_slice_1/stack_1:output:0Econv_2d_26/instance_normalization_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_26/instance_normalization_28/strided_slice_1Â
:conv_2d_26/instance_normalization_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice_2/stackÆ
<conv_2d_26/instance_normalization_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_2/stack_1Æ
<conv_2d_26/instance_normalization_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_2/stack_2Ê
4conv_2d_26/instance_normalization_28/strided_slice_2StridedSlice3conv_2d_26/instance_normalization_28/Shape:output:0Cconv_2d_26/instance_normalization_28/strided_slice_2/stack:output:0Econv_2d_26/instance_normalization_28/strided_slice_2/stack_1:output:0Econv_2d_26/instance_normalization_28/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_26/instance_normalization_28/strided_slice_2Â
:conv_2d_26/instance_normalization_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_26/instance_normalization_28/strided_slice_3/stackÆ
<conv_2d_26/instance_normalization_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_3/stack_1Æ
<conv_2d_26/instance_normalization_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_26/instance_normalization_28/strided_slice_3/stack_2Ê
4conv_2d_26/instance_normalization_28/strided_slice_3StridedSlice3conv_2d_26/instance_normalization_28/Shape:output:0Cconv_2d_26/instance_normalization_28/strided_slice_3/stack:output:0Econv_2d_26/instance_normalization_28/strided_slice_3/stack_1:output:0Econv_2d_26/instance_normalization_28/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_26/instance_normalization_28/strided_slice_3Û
Cconv_2d_26/instance_normalization_28/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_26/instance_normalization_28/moments/mean/reduction_indices®
1conv_2d_26/instance_normalization_28/moments/meanMean$conv_2d_26/conv2d_26/Conv2D:output:0Lconv_2d_26/instance_normalization_28/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_26/instance_normalization_28/moments/meaný
9conv_2d_26/instance_normalization_28/moments/StopGradientStopGradient:conv_2d_26/instance_normalization_28/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_26/instance_normalization_28/moments/StopGradient¼
>conv_2d_26/instance_normalization_28/moments/SquaredDifferenceSquaredDifference$conv_2d_26/conv2d_26/Conv2D:output:0Bconv_2d_26/instance_normalization_28/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_26/instance_normalization_28/moments/SquaredDifferenceã
Gconv_2d_26/instance_normalization_28/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_26/instance_normalization_28/moments/variance/reduction_indicesØ
5conv_2d_26/instance_normalization_28/moments/varianceMeanBconv_2d_26/instance_normalization_28/moments/SquaredDifference:z:0Pconv_2d_26/instance_normalization_28/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_26/instance_normalization_28/moments/varianceü
;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOpReadVariableOpDconv_2d_26_instance_normalization_28_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOpÁ
2conv_2d_26/instance_normalization_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_26/instance_normalization_28/Reshape/shape
,conv_2d_26/instance_normalization_28/ReshapeReshapeCconv_2d_26/instance_normalization_28/Reshape/ReadVariableOp:value:0;conv_2d_26/instance_normalization_28/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_26/instance_normalization_28/Reshape
=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_26_instance_normalization_28_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOpÅ
4conv_2d_26/instance_normalization_28/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_26/instance_normalization_28/Reshape_1/shape£
.conv_2d_26/instance_normalization_28/Reshape_1ReshapeEconv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp:value:0=conv_2d_26/instance_normalization_28/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_26/instance_normalization_28/Reshape_1±
4conv_2d_26/instance_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_26/instance_normalization_28/batchnorm/add/y«
2conv_2d_26/instance_normalization_28/batchnorm/addAddV2>conv_2d_26/instance_normalization_28/moments/variance:output:0=conv_2d_26/instance_normalization_28/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_26/instance_normalization_28/batchnorm/addè
4conv_2d_26/instance_normalization_28/batchnorm/RsqrtRsqrt6conv_2d_26/instance_normalization_28/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_26/instance_normalization_28/batchnorm/Rsqrt
2conv_2d_26/instance_normalization_28/batchnorm/mulMul8conv_2d_26/instance_normalization_28/batchnorm/Rsqrt:y:05conv_2d_26/instance_normalization_28/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_26/instance_normalization_28/batchnorm/mul
4conv_2d_26/instance_normalization_28/batchnorm/mul_1Mul$conv_2d_26/conv2d_26/Conv2D:output:06conv_2d_26/instance_normalization_28/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_26/instance_normalization_28/batchnorm/mul_1¢
4conv_2d_26/instance_normalization_28/batchnorm/mul_2Mul:conv_2d_26/instance_normalization_28/moments/mean:output:06conv_2d_26/instance_normalization_28/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_26/instance_normalization_28/batchnorm/mul_2
2conv_2d_26/instance_normalization_28/batchnorm/subSub7conv_2d_26/instance_normalization_28/Reshape_1:output:08conv_2d_26/instance_normalization_28/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_26/instance_normalization_28/batchnorm/sub¤
4conv_2d_26/instance_normalization_28/batchnorm/add_1AddV28conv_2d_26/instance_normalization_28/batchnorm/mul_1:z:06conv_2d_26/instance_normalization_28/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_26/instance_normalization_28/batchnorm/add_1
addAddV2inputs8conv_2d_26/instance_normalization_28/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_25/conv2d_25/Conv2D/ReadVariableOp<^conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp>^conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp+^conv_2d_26/conv2d_26/Conv2D/ReadVariableOp<^conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp>^conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_25/conv2d_25/Conv2D/ReadVariableOp*conv_2d_25/conv2d_25/Conv2D/ReadVariableOp2z
;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp;conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp2~
=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp=conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp2X
*conv_2d_26/conv2d_26/Conv2D/ReadVariableOp*conv_2d_26/conv2d_26/Conv2D/ReadVariableOp2z
;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp;conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp2~
=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp=conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
ãå
I
__inference__wrapped_model_2738
input_10
,feed_forward_1_conv_2d_16_mirrorpad_paddingsF
Bfeed_forward_1_conv_2d_16_conv2d_16_conv2d_readvariableop_resourceW
Sfeed_forward_1_conv_2d_16_instance_normalization_18_reshape_readvariableop_resourceY
Ufeed_forward_1_conv_2d_16_instance_normalization_18_reshape_1_readvariableop_resource0
,feed_forward_1_conv_2d_17_mirrorpad_paddingsF
Bfeed_forward_1_conv_2d_17_conv2d_17_conv2d_readvariableop_resourceW
Sfeed_forward_1_conv_2d_17_instance_normalization_19_reshape_readvariableop_resourceY
Ufeed_forward_1_conv_2d_17_instance_normalization_19_reshape_1_readvariableop_resource0
,feed_forward_1_conv_2d_18_mirrorpad_paddingsF
Bfeed_forward_1_conv_2d_18_conv2d_18_conv2d_readvariableop_resourceW
Sfeed_forward_1_conv_2d_18_instance_normalization_20_reshape_readvariableop_resourceY
Ufeed_forward_1_conv_2d_18_instance_normalization_20_reshape_1_readvariableop_resource;
7feed_forward_1_residual_5_conv_2d_19_mirrorpad_paddingsQ
Mfeed_forward_1_residual_5_conv_2d_19_conv2d_19_conv2d_readvariableop_resourceb
^feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_reshape_readvariableop_resourced
`feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_reshape_1_readvariableop_resource;
7feed_forward_1_residual_5_conv_2d_20_mirrorpad_paddingsQ
Mfeed_forward_1_residual_5_conv_2d_20_conv2d_20_conv2d_readvariableop_resourceb
^feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_reshape_readvariableop_resourced
`feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_reshape_1_readvariableop_resource;
7feed_forward_1_residual_6_conv_2d_21_mirrorpad_paddingsQ
Mfeed_forward_1_residual_6_conv_2d_21_conv2d_21_conv2d_readvariableop_resourceb
^feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_reshape_readvariableop_resourced
`feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_reshape_1_readvariableop_resource;
7feed_forward_1_residual_6_conv_2d_22_mirrorpad_paddingsQ
Mfeed_forward_1_residual_6_conv_2d_22_conv2d_22_conv2d_readvariableop_resourceb
^feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_reshape_readvariableop_resourced
`feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_reshape_1_readvariableop_resource;
7feed_forward_1_residual_7_conv_2d_23_mirrorpad_paddingsQ
Mfeed_forward_1_residual_7_conv_2d_23_conv2d_23_conv2d_readvariableop_resourceb
^feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_reshape_readvariableop_resourced
`feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_reshape_1_readvariableop_resource;
7feed_forward_1_residual_7_conv_2d_24_mirrorpad_paddingsQ
Mfeed_forward_1_residual_7_conv_2d_24_conv2d_24_conv2d_readvariableop_resourceb
^feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_reshape_readvariableop_resourced
`feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_reshape_1_readvariableop_resource;
7feed_forward_1_residual_8_conv_2d_25_mirrorpad_paddingsQ
Mfeed_forward_1_residual_8_conv_2d_25_conv2d_25_conv2d_readvariableop_resourceb
^feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_reshape_readvariableop_resourced
`feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_reshape_1_readvariableop_resource;
7feed_forward_1_residual_8_conv_2d_26_mirrorpad_paddingsQ
Mfeed_forward_1_residual_8_conv_2d_26_conv2d_26_conv2d_readvariableop_resourceb
^feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_reshape_readvariableop_resourced
`feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_reshape_1_readvariableop_resource;
7feed_forward_1_residual_9_conv_2d_27_mirrorpad_paddingsQ
Mfeed_forward_1_residual_9_conv_2d_27_conv2d_27_conv2d_readvariableop_resourceb
^feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_reshape_readvariableop_resourced
`feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_reshape_1_readvariableop_resource;
7feed_forward_1_residual_9_conv_2d_28_mirrorpad_paddingsQ
Mfeed_forward_1_residual_9_conv_2d_28_conv2d_28_conv2d_readvariableop_resourceb
^feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_reshape_readvariableop_resourced
`feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_reshape_1_readvariableop_resourceA
=feed_forward_1_resize_conv_2d_2_conv_2d_29_mirrorpad_paddingsW
Sfeed_forward_1_resize_conv_2d_2_conv_2d_29_conv2d_29_conv2d_readvariableop_resourceh
dfeed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_reshape_readvariableop_resourcej
ffeed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_reshape_1_readvariableop_resourceA
=feed_forward_1_resize_conv_2d_3_conv_2d_30_mirrorpad_paddingsW
Sfeed_forward_1_resize_conv_2d_3_conv_2d_30_conv2d_30_conv2d_readvariableop_resourceh
dfeed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_reshape_readvariableop_resourcej
ffeed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_reshape_1_readvariableop_resource0
,feed_forward_1_conv_2d_31_mirrorpad_paddingsF
Bfeed_forward_1_conv_2d_31_conv2d_31_conv2d_readvariableop_resourceW
Sfeed_forward_1_conv_2d_31_instance_normalization_35_reshape_readvariableop_resourceY
Ufeed_forward_1_conv_2d_31_instance_normalization_35_reshape_1_readvariableop_resource
identity¢9feed_forward_1/conv_2d_16/conv2d_16/Conv2D/ReadVariableOp¢Jfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape/ReadVariableOp¢Lfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/ReadVariableOp¢9feed_forward_1/conv_2d_17/conv2d_17/Conv2D/ReadVariableOp¢Jfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape/ReadVariableOp¢Lfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/ReadVariableOp¢9feed_forward_1/conv_2d_18/conv2d_18/Conv2D/ReadVariableOp¢Jfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape/ReadVariableOp¢Lfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/ReadVariableOp¢9feed_forward_1/conv_2d_31/conv2d_31/Conv2D/ReadVariableOp¢Jfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape/ReadVariableOp¢Lfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp¢Dfeed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D/ReadVariableOp¢Ufeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp¢Wfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp¢Jfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D/ReadVariableOp¢[feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp¢]feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp¢Jfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D/ReadVariableOp¢[feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp¢]feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOpÝ
#feed_forward_1/conv_2d_16/MirrorPad	MirrorPadinput_1,feed_forward_1_conv_2d_16_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð*
mode	REFLECT2%
#feed_forward_1/conv_2d_16/MirrorPad
9feed_forward_1/conv_2d_16/conv2d_16/Conv2D/ReadVariableOpReadVariableOpBfeed_forward_1_conv_2d_16_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02;
9feed_forward_1/conv_2d_16/conv2d_16/Conv2D/ReadVariableOp¸
*feed_forward_1/conv_2d_16/conv2d_16/Conv2DConv2D,feed_forward_1/conv_2d_16/MirrorPad:output:0Afeed_forward_1/conv_2d_16/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2,
*feed_forward_1/conv_2d_16/conv2d_16/Conv2DÙ
9feed_forward_1/conv_2d_16/instance_normalization_18/ShapeShape3feed_forward_1/conv_2d_16/conv2d_16/Conv2D:output:0*
T0*
_output_shapes
:2;
9feed_forward_1/conv_2d_16/instance_normalization_18/ShapeÜ
Gfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice/stackà
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice/stack_1à
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice/stack_2
Afeed_forward_1/conv_2d_16/instance_normalization_18/strided_sliceStridedSliceBfeed_forward_1/conv_2d_16/instance_normalization_18/Shape:output:0Pfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice/stack:output:0Rfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice/stack_1:output:0Rfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Afeed_forward_1/conv_2d_16/instance_normalization_18/strided_sliceà
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1/stackä
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1/stack_1ä
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1/stack_2¤
Cfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1StridedSliceBfeed_forward_1/conv_2d_16/instance_normalization_18/Shape:output:0Rfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1/stack:output:0Tfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1/stack_1:output:0Tfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_1à
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2/stackä
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2/stack_1ä
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2/stack_2¤
Cfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2StridedSliceBfeed_forward_1/conv_2d_16/instance_normalization_18/Shape:output:0Rfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2/stack:output:0Tfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2/stack_1:output:0Tfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_2à
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3/stackä
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3/stack_1ä
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3/stack_2¤
Cfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3StridedSliceBfeed_forward_1/conv_2d_16/instance_normalization_18/Shape:output:0Rfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3/stack:output:0Tfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3/stack_1:output:0Tfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_16/instance_normalization_18/strided_slice_3ù
Rfeed_forward_1/conv_2d_16/instance_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2T
Rfeed_forward_1/conv_2d_16/instance_normalization_18/moments/mean/reduction_indicesé
@feed_forward_1/conv_2d_16/instance_normalization_18/moments/meanMean3feed_forward_1/conv_2d_16/conv2d_16/Conv2D:output:0[feed_forward_1/conv_2d_16/instance_normalization_18/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2B
@feed_forward_1/conv_2d_16/instance_normalization_18/moments/mean©
Hfeed_forward_1/conv_2d_16/instance_normalization_18/moments/StopGradientStopGradientIfeed_forward_1/conv_2d_16/instance_normalization_18/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2J
Hfeed_forward_1/conv_2d_16/instance_normalization_18/moments/StopGradient÷
Mfeed_forward_1/conv_2d_16/instance_normalization_18/moments/SquaredDifferenceSquaredDifference3feed_forward_1/conv_2d_16/conv2d_16/Conv2D:output:0Qfeed_forward_1/conv_2d_16/instance_normalization_18/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2O
Mfeed_forward_1/conv_2d_16/instance_normalization_18/moments/SquaredDifference
Vfeed_forward_1/conv_2d_16/instance_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2X
Vfeed_forward_1/conv_2d_16/instance_normalization_18/moments/variance/reduction_indices
Dfeed_forward_1/conv_2d_16/instance_normalization_18/moments/varianceMeanQfeed_forward_1/conv_2d_16/instance_normalization_18/moments/SquaredDifference:z:0_feed_forward_1/conv_2d_16/instance_normalization_18/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2F
Dfeed_forward_1/conv_2d_16/instance_normalization_18/moments/variance¨
Jfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape/ReadVariableOpReadVariableOpSfeed_forward_1_conv_2d_16_instance_normalization_18_reshape_readvariableop_resource*
_output_shapes
: *
dtype02L
Jfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape/ReadVariableOpß
Afeed_forward_1/conv_2d_16/instance_normalization_18/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2C
Afeed_forward_1/conv_2d_16/instance_normalization_18/Reshape/shapeÖ
;feed_forward_1/conv_2d_16/instance_normalization_18/ReshapeReshapeRfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape/ReadVariableOp:value:0Jfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape/shape:output:0*
T0*&
_output_shapes
: 2=
;feed_forward_1/conv_2d_16/instance_normalization_18/Reshape®
Lfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/ReadVariableOpReadVariableOpUfeed_forward_1_conv_2d_16_instance_normalization_18_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02N
Lfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/ReadVariableOpã
Cfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2E
Cfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/shapeÞ
=feed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1ReshapeTfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/ReadVariableOp:value:0Lfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2?
=feed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1Ï
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2E
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/add/yæ
Afeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/addAddV2Mfeed_forward_1/conv_2d_16/instance_normalization_18/moments/variance:output:0Lfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2C
Afeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/add
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/RsqrtRsqrtEfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2E
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/RsqrtÖ
Afeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mulMulGfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/Rsqrt:y:0Dfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2C
Afeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mulÉ
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mul_1Mul3feed_forward_1/conv_2d_16/conv2d_16/Conv2D:output:0Efeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2E
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mul_1Ý
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mul_2MulIfeed_forward_1/conv_2d_16/instance_normalization_18/moments/mean:output:0Efeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2E
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mul_2Ø
Afeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/subSubFfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1:output:0Gfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2C
Afeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/subß
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/add_1AddV2Gfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/mul_1:z:0Efeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2E
Cfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/add_1Í
feed_forward_1/conv_2d_16/ReluReluGfeed_forward_1/conv_2d_16/instance_normalization_18/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2 
feed_forward_1/conv_2d_16/Relu
#feed_forward_1/conv_2d_17/MirrorPad	MirrorPad,feed_forward_1/conv_2d_16/Relu:activations:0,feed_forward_1_conv_2d_17_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿêê *
mode	REFLECT2%
#feed_forward_1/conv_2d_17/MirrorPad
9feed_forward_1/conv_2d_17/conv2d_17/Conv2D/ReadVariableOpReadVariableOpBfeed_forward_1_conv_2d_17_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02;
9feed_forward_1/conv_2d_17/conv2d_17/Conv2D/ReadVariableOp¸
*feed_forward_1/conv_2d_17/conv2d_17/Conv2DConv2D,feed_forward_1/conv_2d_17/MirrorPad:output:0Afeed_forward_1/conv_2d_17/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2,
*feed_forward_1/conv_2d_17/conv2d_17/Conv2DÙ
9feed_forward_1/conv_2d_17/instance_normalization_19/ShapeShape3feed_forward_1/conv_2d_17/conv2d_17/Conv2D:output:0*
T0*
_output_shapes
:2;
9feed_forward_1/conv_2d_17/instance_normalization_19/ShapeÜ
Gfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice/stackà
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice/stack_1à
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice/stack_2
Afeed_forward_1/conv_2d_17/instance_normalization_19/strided_sliceStridedSliceBfeed_forward_1/conv_2d_17/instance_normalization_19/Shape:output:0Pfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice/stack:output:0Rfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice/stack_1:output:0Rfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Afeed_forward_1/conv_2d_17/instance_normalization_19/strided_sliceà
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1/stackä
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1/stack_1ä
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1/stack_2¤
Cfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1StridedSliceBfeed_forward_1/conv_2d_17/instance_normalization_19/Shape:output:0Rfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1/stack:output:0Tfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1/stack_1:output:0Tfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_1à
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2/stackä
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2/stack_1ä
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2/stack_2¤
Cfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2StridedSliceBfeed_forward_1/conv_2d_17/instance_normalization_19/Shape:output:0Rfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2/stack:output:0Tfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2/stack_1:output:0Tfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_2à
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3/stackä
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3/stack_1ä
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3/stack_2¤
Cfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3StridedSliceBfeed_forward_1/conv_2d_17/instance_normalization_19/Shape:output:0Rfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3/stack:output:0Tfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3/stack_1:output:0Tfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_17/instance_normalization_19/strided_slice_3ù
Rfeed_forward_1/conv_2d_17/instance_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2T
Rfeed_forward_1/conv_2d_17/instance_normalization_19/moments/mean/reduction_indicesé
@feed_forward_1/conv_2d_17/instance_normalization_19/moments/meanMean3feed_forward_1/conv_2d_17/conv2d_17/Conv2D:output:0[feed_forward_1/conv_2d_17/instance_normalization_19/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2B
@feed_forward_1/conv_2d_17/instance_normalization_19/moments/mean©
Hfeed_forward_1/conv_2d_17/instance_normalization_19/moments/StopGradientStopGradientIfeed_forward_1/conv_2d_17/instance_normalization_19/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2J
Hfeed_forward_1/conv_2d_17/instance_normalization_19/moments/StopGradient÷
Mfeed_forward_1/conv_2d_17/instance_normalization_19/moments/SquaredDifferenceSquaredDifference3feed_forward_1/conv_2d_17/conv2d_17/Conv2D:output:0Qfeed_forward_1/conv_2d_17/instance_normalization_19/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2O
Mfeed_forward_1/conv_2d_17/instance_normalization_19/moments/SquaredDifference
Vfeed_forward_1/conv_2d_17/instance_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2X
Vfeed_forward_1/conv_2d_17/instance_normalization_19/moments/variance/reduction_indices
Dfeed_forward_1/conv_2d_17/instance_normalization_19/moments/varianceMeanQfeed_forward_1/conv_2d_17/instance_normalization_19/moments/SquaredDifference:z:0_feed_forward_1/conv_2d_17/instance_normalization_19/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2F
Dfeed_forward_1/conv_2d_17/instance_normalization_19/moments/variance¨
Jfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape/ReadVariableOpReadVariableOpSfeed_forward_1_conv_2d_17_instance_normalization_19_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape/ReadVariableOpß
Afeed_forward_1/conv_2d_17/instance_normalization_19/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2C
Afeed_forward_1/conv_2d_17/instance_normalization_19/Reshape/shapeÖ
;feed_forward_1/conv_2d_17/instance_normalization_19/ReshapeReshapeRfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape/ReadVariableOp:value:0Jfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape/shape:output:0*
T0*&
_output_shapes
:@2=
;feed_forward_1/conv_2d_17/instance_normalization_19/Reshape®
Lfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/ReadVariableOpReadVariableOpUfeed_forward_1_conv_2d_17_instance_normalization_19_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02N
Lfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/ReadVariableOpã
Cfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2E
Cfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/shapeÞ
=feed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1ReshapeTfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/ReadVariableOp:value:0Lfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2?
=feed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1Ï
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2E
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/add/yæ
Afeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/addAddV2Mfeed_forward_1/conv_2d_17/instance_normalization_19/moments/variance:output:0Lfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2C
Afeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/add
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/RsqrtRsqrtEfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2E
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/RsqrtÖ
Afeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mulMulGfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/Rsqrt:y:0Dfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2C
Afeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mulÉ
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mul_1Mul3feed_forward_1/conv_2d_17/conv2d_17/Conv2D:output:0Efeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2E
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mul_1Ý
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mul_2MulIfeed_forward_1/conv_2d_17/instance_normalization_19/moments/mean:output:0Efeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2E
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mul_2Ø
Afeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/subSubFfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1:output:0Gfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2C
Afeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/subß
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/add_1AddV2Gfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/mul_1:z:0Efeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2E
Cfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/add_1Í
feed_forward_1/conv_2d_17/ReluReluGfeed_forward_1/conv_2d_17/instance_normalization_19/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2 
feed_forward_1/conv_2d_17/Relu
#feed_forward_1/conv_2d_18/MirrorPad	MirrorPad,feed_forward_1/conv_2d_17/Relu:activations:0,feed_forward_1_conv_2d_18_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿöö@*
mode	REFLECT2%
#feed_forward_1/conv_2d_18/MirrorPad
9feed_forward_1/conv_2d_18/conv2d_18/Conv2D/ReadVariableOpReadVariableOpBfeed_forward_1_conv_2d_18_conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02;
9feed_forward_1/conv_2d_18/conv2d_18/Conv2D/ReadVariableOp¹
*feed_forward_1/conv_2d_18/conv2d_18/Conv2DConv2D,feed_forward_1/conv_2d_18/MirrorPad:output:0Afeed_forward_1/conv_2d_18/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2,
*feed_forward_1/conv_2d_18/conv2d_18/Conv2DÙ
9feed_forward_1/conv_2d_18/instance_normalization_20/ShapeShape3feed_forward_1/conv_2d_18/conv2d_18/Conv2D:output:0*
T0*
_output_shapes
:2;
9feed_forward_1/conv_2d_18/instance_normalization_20/ShapeÜ
Gfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice/stackà
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice/stack_1à
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice/stack_2
Afeed_forward_1/conv_2d_18/instance_normalization_20/strided_sliceStridedSliceBfeed_forward_1/conv_2d_18/instance_normalization_20/Shape:output:0Pfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice/stack:output:0Rfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice/stack_1:output:0Rfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Afeed_forward_1/conv_2d_18/instance_normalization_20/strided_sliceà
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1/stackä
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1/stack_1ä
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1/stack_2¤
Cfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1StridedSliceBfeed_forward_1/conv_2d_18/instance_normalization_20/Shape:output:0Rfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1/stack:output:0Tfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1/stack_1:output:0Tfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_1à
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2/stackä
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2/stack_1ä
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2/stack_2¤
Cfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2StridedSliceBfeed_forward_1/conv_2d_18/instance_normalization_20/Shape:output:0Rfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2/stack:output:0Tfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2/stack_1:output:0Tfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_2à
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3/stackä
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3/stack_1ä
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3/stack_2¤
Cfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3StridedSliceBfeed_forward_1/conv_2d_18/instance_normalization_20/Shape:output:0Rfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3/stack:output:0Tfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3/stack_1:output:0Tfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_18/instance_normalization_20/strided_slice_3ù
Rfeed_forward_1/conv_2d_18/instance_normalization_20/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2T
Rfeed_forward_1/conv_2d_18/instance_normalization_20/moments/mean/reduction_indicesê
@feed_forward_1/conv_2d_18/instance_normalization_20/moments/meanMean3feed_forward_1/conv_2d_18/conv2d_18/Conv2D:output:0[feed_forward_1/conv_2d_18/instance_normalization_20/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2B
@feed_forward_1/conv_2d_18/instance_normalization_20/moments/meanª
Hfeed_forward_1/conv_2d_18/instance_normalization_20/moments/StopGradientStopGradientIfeed_forward_1/conv_2d_18/instance_normalization_20/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2J
Hfeed_forward_1/conv_2d_18/instance_normalization_20/moments/StopGradientø
Mfeed_forward_1/conv_2d_18/instance_normalization_20/moments/SquaredDifferenceSquaredDifference3feed_forward_1/conv_2d_18/conv2d_18/Conv2D:output:0Qfeed_forward_1/conv_2d_18/instance_normalization_20/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2O
Mfeed_forward_1/conv_2d_18/instance_normalization_20/moments/SquaredDifference
Vfeed_forward_1/conv_2d_18/instance_normalization_20/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2X
Vfeed_forward_1/conv_2d_18/instance_normalization_20/moments/variance/reduction_indices
Dfeed_forward_1/conv_2d_18/instance_normalization_20/moments/varianceMeanQfeed_forward_1/conv_2d_18/instance_normalization_20/moments/SquaredDifference:z:0_feed_forward_1/conv_2d_18/instance_normalization_20/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2F
Dfeed_forward_1/conv_2d_18/instance_normalization_20/moments/variance©
Jfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape/ReadVariableOpReadVariableOpSfeed_forward_1_conv_2d_18_instance_normalization_20_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02L
Jfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape/ReadVariableOpß
Afeed_forward_1/conv_2d_18/instance_normalization_20/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2C
Afeed_forward_1/conv_2d_18/instance_normalization_20/Reshape/shape×
;feed_forward_1/conv_2d_18/instance_normalization_20/ReshapeReshapeRfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape/ReadVariableOp:value:0Jfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape/shape:output:0*
T0*'
_output_shapes
:2=
;feed_forward_1/conv_2d_18/instance_normalization_20/Reshape¯
Lfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/ReadVariableOpReadVariableOpUfeed_forward_1_conv_2d_18_instance_normalization_20_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02N
Lfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/ReadVariableOpã
Cfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2E
Cfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/shapeß
=feed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1ReshapeTfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/ReadVariableOp:value:0Lfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2?
=feed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1Ï
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2E
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/add/yç
Afeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/addAddV2Mfeed_forward_1/conv_2d_18/instance_normalization_20/moments/variance:output:0Lfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/add
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/RsqrtRsqrtEfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/Rsqrt×
Afeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mulMulGfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/Rsqrt:y:0Dfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mulÊ
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mul_1Mul3feed_forward_1/conv_2d_18/conv2d_18/Conv2D:output:0Efeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2E
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mul_1Þ
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mul_2MulIfeed_forward_1/conv_2d_18/instance_normalization_20/moments/mean:output:0Efeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mul_2Ù
Afeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/subSubFfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1:output:0Gfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/subà
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/add_1AddV2Gfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/mul_1:z:0Efeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2E
Cfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/add_1Î
feed_forward_1/conv_2d_18/ReluReluGfeed_forward_1/conv_2d_18/instance_normalization_20/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2 
feed_forward_1/conv_2d_18/Relu¤
.feed_forward_1/residual_5/conv_2d_19/MirrorPad	MirrorPad,feed_forward_1/conv_2d_18/Relu:activations:07feed_forward_1_residual_5_conv_2d_19_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_5/conv_2d_19/MirrorPad¤
Dfeed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_5_conv_2d_19_conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D/ReadVariableOpå
5feed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2DConv2D7feed_forward_1/residual_5/conv_2d_19/MirrorPad:output:0Lfeed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2Dú
Dfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/ShapeShape>feed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Shapeò
Rfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice/stackö
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice/stack_1ö
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice/stack_2Ü
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_sliceStridedSliceMfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Shape:output:0[feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice/stack:output:0]feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice/stack_1:output:0]feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_sliceö
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1/stackú
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1StridedSliceMfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Shape:output:0]feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1/stack:output:0_feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1/stack_1:output:0_feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_1ö
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2/stackú
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2StridedSliceMfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Shape:output:0]feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2/stack:output:0_feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2/stack_1:output:0_feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_2ö
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3/stackú
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3StridedSliceMfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Shape:output:0]feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3/stack:output:0_feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3/stack_1:output:0_feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/strided_slice_3
]feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/mean/reduction_indices
Kfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/meanMean>feed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D:output:0ffeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/meanË
Sfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/StopGradientStopGradientTfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/StopGradient¤
Xfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D:output:0\feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/SquaredDifference
afeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/varianceMean\feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/SquaredDifference:z:0jfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/varianceÊ
Ufeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/shape
Ffeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/ReshapeReshape]feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/ReshapeÐ
Wfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/shape
Hfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1Reshape_feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1å
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/add/y
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/addAddV2Xfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/variance:output:0Wfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/add¶
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/Rsqrt
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mulMulRfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mulö
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mul_1Mul>feed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D:output:0Pfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mul_1
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mul_2MulTfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/moments/mean:output:0Pfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mul_2
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/subSubQfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1:output:0Rfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/sub
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/add_1AddV2Rfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/mul_1:z:0Pfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/add_1ï
)feed_forward_1/residual_5/conv_2d_19/ReluReluRfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)feed_forward_1/residual_5/conv_2d_19/Relu¯
.feed_forward_1/residual_5/conv_2d_20/MirrorPad	MirrorPad7feed_forward_1/residual_5/conv_2d_19/Relu:activations:07feed_forward_1_residual_5_conv_2d_20_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_5/conv_2d_20/MirrorPad¤
Dfeed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_5_conv_2d_20_conv2d_20_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D/ReadVariableOpå
5feed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2DConv2D7feed_forward_1/residual_5/conv_2d_20/MirrorPad:output:0Lfeed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2Dú
Dfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/ShapeShape>feed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Shapeò
Rfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice/stackö
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice/stack_1ö
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice/stack_2Ü
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_sliceStridedSliceMfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Shape:output:0[feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice/stack:output:0]feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice/stack_1:output:0]feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_sliceö
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1/stackú
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1StridedSliceMfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Shape:output:0]feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1/stack:output:0_feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1/stack_1:output:0_feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_1ö
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2/stackú
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2StridedSliceMfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Shape:output:0]feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2/stack:output:0_feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2/stack_1:output:0_feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_2ö
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3/stackú
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3StridedSliceMfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Shape:output:0]feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3/stack:output:0_feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3/stack_1:output:0_feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/strided_slice_3
]feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/mean/reduction_indices
Kfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/meanMean>feed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D:output:0ffeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/meanË
Sfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/StopGradientStopGradientTfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/StopGradient¤
Xfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D:output:0\feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/SquaredDifference
afeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/varianceMean\feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/SquaredDifference:z:0jfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/varianceÊ
Ufeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/shape
Ffeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/ReshapeReshape]feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/ReshapeÐ
Wfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/shape
Hfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1Reshape_feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1å
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/add/y
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/addAddV2Xfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/variance:output:0Wfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/add¶
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/Rsqrt
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mulMulRfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mulö
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mul_1Mul>feed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D:output:0Pfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mul_1
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mul_2MulTfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/moments/mean:output:0Pfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mul_2
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/subSubQfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1:output:0Rfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/sub
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/add_1AddV2Rfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/mul_1:z:0Pfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/add_1
feed_forward_1/residual_5/addAddV2,feed_forward_1/conv_2d_18/Relu:activations:0Rfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
feed_forward_1/residual_5/add
.feed_forward_1/residual_6/conv_2d_21/MirrorPad	MirrorPad!feed_forward_1/residual_5/add:z:07feed_forward_1_residual_6_conv_2d_21_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_6/conv_2d_21/MirrorPad¤
Dfeed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_6_conv_2d_21_conv2d_21_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D/ReadVariableOpå
5feed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2DConv2D7feed_forward_1/residual_6/conv_2d_21/MirrorPad:output:0Lfeed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2Dú
Dfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/ShapeShape>feed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Shapeò
Rfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice/stackö
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice/stack_1ö
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice/stack_2Ü
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_sliceStridedSliceMfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Shape:output:0[feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice/stack:output:0]feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice/stack_1:output:0]feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_sliceö
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1/stackú
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1StridedSliceMfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Shape:output:0]feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1/stack:output:0_feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1/stack_1:output:0_feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_1ö
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2/stackú
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2StridedSliceMfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Shape:output:0]feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2/stack:output:0_feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2/stack_1:output:0_feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_2ö
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3/stackú
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3StridedSliceMfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Shape:output:0]feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3/stack:output:0_feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3/stack_1:output:0_feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/strided_slice_3
]feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/mean/reduction_indices
Kfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/meanMean>feed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D:output:0ffeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/meanË
Sfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/StopGradientStopGradientTfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/StopGradient¤
Xfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D:output:0\feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/SquaredDifference
afeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/varianceMean\feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/SquaredDifference:z:0jfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/varianceÊ
Ufeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/shape
Ffeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/ReshapeReshape]feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/ReshapeÐ
Wfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/shape
Hfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1Reshape_feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1å
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/add/y
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/addAddV2Xfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/variance:output:0Wfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/add¶
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/Rsqrt
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mulMulRfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mulö
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mul_1Mul>feed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D:output:0Pfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mul_1
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mul_2MulTfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/moments/mean:output:0Pfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mul_2
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/subSubQfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1:output:0Rfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/sub
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/add_1AddV2Rfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/mul_1:z:0Pfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/add_1ï
)feed_forward_1/residual_6/conv_2d_21/ReluReluRfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)feed_forward_1/residual_6/conv_2d_21/Relu¯
.feed_forward_1/residual_6/conv_2d_22/MirrorPad	MirrorPad7feed_forward_1/residual_6/conv_2d_21/Relu:activations:07feed_forward_1_residual_6_conv_2d_22_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_6/conv_2d_22/MirrorPad¤
Dfeed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_6_conv_2d_22_conv2d_22_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D/ReadVariableOpå
5feed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2DConv2D7feed_forward_1/residual_6/conv_2d_22/MirrorPad:output:0Lfeed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2Dú
Dfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/ShapeShape>feed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Shapeò
Rfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice/stackö
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice/stack_1ö
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice/stack_2Ü
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_sliceStridedSliceMfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Shape:output:0[feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice/stack:output:0]feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice/stack_1:output:0]feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_sliceö
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1/stackú
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1StridedSliceMfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Shape:output:0]feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1/stack:output:0_feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1/stack_1:output:0_feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_1ö
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2/stackú
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2StridedSliceMfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Shape:output:0]feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2/stack:output:0_feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2/stack_1:output:0_feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_2ö
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3/stackú
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3StridedSliceMfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Shape:output:0]feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3/stack:output:0_feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3/stack_1:output:0_feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/strided_slice_3
]feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/mean/reduction_indices
Kfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/meanMean>feed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D:output:0ffeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/meanË
Sfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/StopGradientStopGradientTfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/StopGradient¤
Xfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D:output:0\feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/SquaredDifference
afeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/varianceMean\feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/SquaredDifference:z:0jfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/varianceÊ
Ufeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/shape
Ffeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/ReshapeReshape]feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/ReshapeÐ
Wfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/shape
Hfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1Reshape_feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1å
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/add/y
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/addAddV2Xfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/variance:output:0Wfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/add¶
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/Rsqrt
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mulMulRfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mulö
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mul_1Mul>feed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D:output:0Pfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mul_1
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mul_2MulTfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/moments/mean:output:0Pfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mul_2
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/subSubQfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1:output:0Rfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/sub
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/add_1AddV2Rfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/mul_1:z:0Pfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/add_1û
feed_forward_1/residual_6/addAddV2!feed_forward_1/residual_5/add:z:0Rfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
feed_forward_1/residual_6/add
.feed_forward_1/residual_7/conv_2d_23/MirrorPad	MirrorPad!feed_forward_1/residual_6/add:z:07feed_forward_1_residual_7_conv_2d_23_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_7/conv_2d_23/MirrorPad¤
Dfeed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_7_conv_2d_23_conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D/ReadVariableOpå
5feed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2DConv2D7feed_forward_1/residual_7/conv_2d_23/MirrorPad:output:0Lfeed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2Dú
Dfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/ShapeShape>feed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Shapeò
Rfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice/stackö
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice/stack_1ö
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice/stack_2Ü
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_sliceStridedSliceMfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Shape:output:0[feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice/stack:output:0]feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice/stack_1:output:0]feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_sliceö
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1/stackú
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1StridedSliceMfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Shape:output:0]feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1/stack:output:0_feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1/stack_1:output:0_feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_1ö
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2/stackú
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2StridedSliceMfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Shape:output:0]feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2/stack:output:0_feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2/stack_1:output:0_feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_2ö
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3/stackú
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3StridedSliceMfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Shape:output:0]feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3/stack:output:0_feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3/stack_1:output:0_feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/strided_slice_3
]feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/mean/reduction_indices
Kfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/meanMean>feed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D:output:0ffeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/meanË
Sfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/StopGradientStopGradientTfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/StopGradient¤
Xfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D:output:0\feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/SquaredDifference
afeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/varianceMean\feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/SquaredDifference:z:0jfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/varianceÊ
Ufeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/shape
Ffeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/ReshapeReshape]feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/ReshapeÐ
Wfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/shape
Hfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1Reshape_feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1å
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/add/y
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/addAddV2Xfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/variance:output:0Wfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/add¶
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/Rsqrt
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mulMulRfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mulö
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mul_1Mul>feed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D:output:0Pfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mul_1
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mul_2MulTfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/moments/mean:output:0Pfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mul_2
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/subSubQfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1:output:0Rfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/sub
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/add_1AddV2Rfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/mul_1:z:0Pfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/add_1ï
)feed_forward_1/residual_7/conv_2d_23/ReluReluRfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)feed_forward_1/residual_7/conv_2d_23/Relu¯
.feed_forward_1/residual_7/conv_2d_24/MirrorPad	MirrorPad7feed_forward_1/residual_7/conv_2d_23/Relu:activations:07feed_forward_1_residual_7_conv_2d_24_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_7/conv_2d_24/MirrorPad¤
Dfeed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_7_conv_2d_24_conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D/ReadVariableOpå
5feed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2DConv2D7feed_forward_1/residual_7/conv_2d_24/MirrorPad:output:0Lfeed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2Dú
Dfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/ShapeShape>feed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Shapeò
Rfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice/stackö
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice/stack_1ö
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice/stack_2Ü
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_sliceStridedSliceMfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Shape:output:0[feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice/stack:output:0]feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice/stack_1:output:0]feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_sliceö
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1/stackú
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1StridedSliceMfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Shape:output:0]feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1/stack:output:0_feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1/stack_1:output:0_feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_1ö
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2/stackú
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2StridedSliceMfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Shape:output:0]feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2/stack:output:0_feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2/stack_1:output:0_feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_2ö
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3/stackú
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3StridedSliceMfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Shape:output:0]feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3/stack:output:0_feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3/stack_1:output:0_feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/strided_slice_3
]feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/mean/reduction_indices
Kfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/meanMean>feed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D:output:0ffeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/meanË
Sfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/StopGradientStopGradientTfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/StopGradient¤
Xfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D:output:0\feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/SquaredDifference
afeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/varianceMean\feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/SquaredDifference:z:0jfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/varianceÊ
Ufeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/shape
Ffeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/ReshapeReshape]feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/ReshapeÐ
Wfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/shape
Hfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1Reshape_feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1å
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/add/y
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/addAddV2Xfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/variance:output:0Wfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/add¶
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/Rsqrt
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mulMulRfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mulö
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mul_1Mul>feed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D:output:0Pfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mul_1
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mul_2MulTfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/moments/mean:output:0Pfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mul_2
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/subSubQfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1:output:0Rfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/sub
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/add_1AddV2Rfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/mul_1:z:0Pfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/add_1û
feed_forward_1/residual_7/addAddV2!feed_forward_1/residual_6/add:z:0Rfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
feed_forward_1/residual_7/add
.feed_forward_1/residual_8/conv_2d_25/MirrorPad	MirrorPad!feed_forward_1/residual_7/add:z:07feed_forward_1_residual_8_conv_2d_25_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_8/conv_2d_25/MirrorPad¤
Dfeed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_8_conv_2d_25_conv2d_25_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D/ReadVariableOpå
5feed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2DConv2D7feed_forward_1/residual_8/conv_2d_25/MirrorPad:output:0Lfeed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2Dú
Dfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/ShapeShape>feed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Shapeò
Rfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice/stackö
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice/stack_1ö
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice/stack_2Ü
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_sliceStridedSliceMfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Shape:output:0[feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice/stack:output:0]feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice/stack_1:output:0]feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_sliceö
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1/stackú
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1StridedSliceMfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Shape:output:0]feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1/stack:output:0_feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1/stack_1:output:0_feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_1ö
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2/stackú
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2StridedSliceMfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Shape:output:0]feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2/stack:output:0_feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2/stack_1:output:0_feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_2ö
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3/stackú
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3StridedSliceMfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Shape:output:0]feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3/stack:output:0_feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3/stack_1:output:0_feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/strided_slice_3
]feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/mean/reduction_indices
Kfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/meanMean>feed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D:output:0ffeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/meanË
Sfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/StopGradientStopGradientTfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/StopGradient¤
Xfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D:output:0\feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/SquaredDifference
afeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/varianceMean\feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/SquaredDifference:z:0jfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/varianceÊ
Ufeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/shape
Ffeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/ReshapeReshape]feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/ReshapeÐ
Wfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/shape
Hfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1Reshape_feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1å
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/add/y
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/addAddV2Xfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/variance:output:0Wfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/add¶
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/Rsqrt
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mulMulRfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mulö
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mul_1Mul>feed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D:output:0Pfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mul_1
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mul_2MulTfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/moments/mean:output:0Pfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mul_2
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/subSubQfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1:output:0Rfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/sub
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/add_1AddV2Rfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/mul_1:z:0Pfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/add_1ï
)feed_forward_1/residual_8/conv_2d_25/ReluReluRfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)feed_forward_1/residual_8/conv_2d_25/Relu¯
.feed_forward_1/residual_8/conv_2d_26/MirrorPad	MirrorPad7feed_forward_1/residual_8/conv_2d_25/Relu:activations:07feed_forward_1_residual_8_conv_2d_26_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_8/conv_2d_26/MirrorPad¤
Dfeed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_8_conv_2d_26_conv2d_26_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D/ReadVariableOpå
5feed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2DConv2D7feed_forward_1/residual_8/conv_2d_26/MirrorPad:output:0Lfeed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2Dú
Dfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/ShapeShape>feed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Shapeò
Rfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice/stackö
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice/stack_1ö
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice/stack_2Ü
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_sliceStridedSliceMfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Shape:output:0[feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice/stack:output:0]feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice/stack_1:output:0]feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_sliceö
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1/stackú
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1StridedSliceMfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Shape:output:0]feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1/stack:output:0_feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1/stack_1:output:0_feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_1ö
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2/stackú
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2StridedSliceMfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Shape:output:0]feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2/stack:output:0_feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2/stack_1:output:0_feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_2ö
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3/stackú
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3StridedSliceMfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Shape:output:0]feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3/stack:output:0_feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3/stack_1:output:0_feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/strided_slice_3
]feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/mean/reduction_indices
Kfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/meanMean>feed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D:output:0ffeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/meanË
Sfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/StopGradientStopGradientTfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/StopGradient¤
Xfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D:output:0\feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/SquaredDifference
afeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/varianceMean\feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/SquaredDifference:z:0jfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/varianceÊ
Ufeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/shape
Ffeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/ReshapeReshape]feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/ReshapeÐ
Wfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/shape
Hfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1Reshape_feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1å
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/add/y
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/addAddV2Xfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/variance:output:0Wfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/add¶
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/Rsqrt
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mulMulRfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mulö
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mul_1Mul>feed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D:output:0Pfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mul_1
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mul_2MulTfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/moments/mean:output:0Pfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mul_2
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/subSubQfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1:output:0Rfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/sub
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/add_1AddV2Rfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/mul_1:z:0Pfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/add_1û
feed_forward_1/residual_8/addAddV2!feed_forward_1/residual_7/add:z:0Rfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
feed_forward_1/residual_8/add
.feed_forward_1/residual_9/conv_2d_27/MirrorPad	MirrorPad!feed_forward_1/residual_8/add:z:07feed_forward_1_residual_9_conv_2d_27_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_9/conv_2d_27/MirrorPad¤
Dfeed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_9_conv_2d_27_conv2d_27_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D/ReadVariableOpå
5feed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2DConv2D7feed_forward_1/residual_9/conv_2d_27/MirrorPad:output:0Lfeed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2Dú
Dfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/ShapeShape>feed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Shapeò
Rfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice/stackö
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice/stack_1ö
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice/stack_2Ü
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_sliceStridedSliceMfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Shape:output:0[feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice/stack:output:0]feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice/stack_1:output:0]feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_sliceö
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1/stackú
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1StridedSliceMfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Shape:output:0]feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1/stack:output:0_feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1/stack_1:output:0_feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_1ö
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2/stackú
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2StridedSliceMfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Shape:output:0]feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2/stack:output:0_feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2/stack_1:output:0_feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_2ö
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3/stackú
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3StridedSliceMfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Shape:output:0]feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3/stack:output:0_feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3/stack_1:output:0_feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/strided_slice_3
]feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/mean/reduction_indices
Kfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/meanMean>feed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D:output:0ffeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/meanË
Sfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/StopGradientStopGradientTfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/StopGradient¤
Xfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D:output:0\feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/SquaredDifference
afeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/varianceMean\feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/SquaredDifference:z:0jfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/varianceÊ
Ufeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/shape
Ffeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/ReshapeReshape]feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/ReshapeÐ
Wfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/shape
Hfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1Reshape_feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1å
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/add/y
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/addAddV2Xfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/variance:output:0Wfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/add¶
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/Rsqrt
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mulMulRfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mulö
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mul_1Mul>feed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D:output:0Pfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mul_1
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mul_2MulTfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/moments/mean:output:0Pfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mul_2
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/subSubQfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1:output:0Rfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/sub
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/add_1AddV2Rfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/mul_1:z:0Pfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/add_1ï
)feed_forward_1/residual_9/conv_2d_27/ReluReluRfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)feed_forward_1/residual_9/conv_2d_27/Relu¯
.feed_forward_1/residual_9/conv_2d_28/MirrorPad	MirrorPad7feed_forward_1/residual_9/conv_2d_27/Relu:activations:07feed_forward_1_residual_9_conv_2d_28_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT20
.feed_forward_1/residual_9/conv_2d_28/MirrorPad¤
Dfeed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D/ReadVariableOpReadVariableOpMfeed_forward_1_residual_9_conv_2d_28_conv2d_28_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02F
Dfeed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D/ReadVariableOpå
5feed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2DConv2D7feed_forward_1/residual_9/conv_2d_28/MirrorPad:output:0Lfeed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
27
5feed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2Dú
Dfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/ShapeShape>feed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D:output:0*
T0*
_output_shapes
:2F
Dfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Shapeò
Rfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2T
Rfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice/stackö
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice/stack_1ö
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice/stack_2Ü
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_sliceStridedSliceMfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Shape:output:0[feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice/stack:output:0]feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice/stack_1:output:0]feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2N
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_sliceö
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1/stackú
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1/stack_1ú
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1/stack_2æ
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1StridedSliceMfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Shape:output:0]feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1/stack:output:0_feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1/stack_1:output:0_feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_1ö
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2/stackú
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2/stack_1ú
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2/stack_2æ
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2StridedSliceMfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Shape:output:0]feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2/stack:output:0_feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2/stack_1:output:0_feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_2ö
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2V
Tfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3/stackú
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3/stack_1ú
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2X
Vfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3/stack_2æ
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3StridedSliceMfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Shape:output:0]feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3/stack:output:0_feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3/stack_1:output:0_feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2P
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/strided_slice_3
]feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2_
]feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/mean/reduction_indices
Kfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/meanMean>feed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D:output:0ffeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2M
Kfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/meanË
Sfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/StopGradientStopGradientTfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2U
Sfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/StopGradient¤
Xfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/SquaredDifferenceSquaredDifference>feed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D:output:0\feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Z
Xfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/SquaredDifference
afeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2c
afeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/variance/reduction_indicesÀ
Ofeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/varianceMean\feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/SquaredDifference:z:0jfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2Q
Ofeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/varianceÊ
Ufeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/ReadVariableOpReadVariableOp^feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02W
Ufeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/ReadVariableOpõ
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2N
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/shape
Ffeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/ReshapeReshape]feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp:value:0Ufeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/shape:output:0*
T0*'
_output_shapes
:2H
Ffeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/ReshapeÐ
Wfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOpReadVariableOp`feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Y
Wfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOpù
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2P
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/shape
Hfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1Reshape_feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp:value:0Wfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2J
Hfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1å
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2P
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/add/y
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/addAddV2Xfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/variance:output:0Wfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/add¶
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/RsqrtRsqrtPfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/Rsqrt
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mulMulRfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/Rsqrt:y:0Ofeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mulö
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mul_1Mul>feed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D:output:0Pfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mul_1
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mul_2MulTfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/moments/mean:output:0Pfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2P
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mul_2
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/subSubQfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1:output:0Rfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2N
Lfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/sub
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/add_1AddV2Rfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/mul_1:z:0Pfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2P
Nfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/add_1û
feed_forward_1/residual_9/addAddV2!feed_forward_1/residual_8/add:z:0Rfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
feed_forward_1/residual_9/add«
+feed_forward_1/resize_conv_2d_2/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"è  è  2-
+feed_forward_1/resize_conv_2d_2/resize/sizeÅ
<feed_forward_1/resize_conv_2d_2/resize/ResizeNearestNeighborResizeNearestNeighbor!feed_forward_1/residual_9/add:z:04feed_forward_1/resize_conv_2d_2/resize/size:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿèè*
half_pixel_centers(2>
<feed_forward_1/resize_conv_2d_2/resize/ResizeNearestNeighbor×
4feed_forward_1/resize_conv_2d_2/conv_2d_29/MirrorPad	MirrorPadMfeed_forward_1/resize_conv_2d_2/resize/ResizeNearestNeighbor:resized_images:0=feed_forward_1_resize_conv_2d_2_conv_2d_29_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿêê*
mode	REFLECT26
4feed_forward_1/resize_conv_2d_2/conv_2d_29/MirrorPadµ
Jfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D/ReadVariableOpReadVariableOpSfeed_forward_1_resize_conv_2d_2_conv_2d_29_conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02L
Jfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D/ReadVariableOpü
;feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2DConv2D=feed_forward_1/resize_conv_2d_2/conv_2d_29/MirrorPad:output:0Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2=
;feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D
Jfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/ShapeShapeDfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D:output:0*
T0*
_output_shapes
:2L
Jfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Shapeþ
Xfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2Z
Xfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice/stack
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice/stack_1
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice/stack_2
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_sliceStridedSliceSfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Shape:output:0afeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice/stack:output:0cfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice/stack_1:output:0cfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2T
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1/stack
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1/stack_1
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1/stack_2
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1StridedSliceSfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Shape:output:0cfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1/stack:output:0efeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1/stack_1:output:0efeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_1
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2/stack
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2/stack_1
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2/stack_2
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2StridedSliceSfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Shape:output:0cfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2/stack:output:0efeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2/stack_1:output:0efeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_2
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3/stack
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3/stack_1
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3/stack_2
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3StridedSliceSfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Shape:output:0cfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3/stack:output:0efeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3/stack_1:output:0efeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/strided_slice_3
cfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2e
cfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/mean/reduction_indices­
Qfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/meanMeanDfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D:output:0lfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2S
Qfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/meanÜ
Yfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/StopGradientStopGradientZfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2[
Yfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/StopGradient»
^feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/SquaredDifferenceSquaredDifferenceDfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D:output:0bfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2`
^feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/SquaredDifference£
gfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2i
gfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/variance/reduction_indices×
Ufeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/varianceMeanbfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/SquaredDifference:z:0pfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2W
Ufeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/varianceÛ
[feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/ReadVariableOpReadVariableOpdfeed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02]
[feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2T
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/shape
Lfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/ReshapeReshapecfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp:value:0[feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/shape:output:0*
T0*&
_output_shapes
:@2N
Lfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshapeá
]feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOpReadVariableOpffeed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02_
]feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2V
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/shape¢
Nfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1Reshapeefeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp:value:0]feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2P
Nfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1ñ
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2V
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/add/yª
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/addAddV2^feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/variance:output:0]feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2T
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/addÇ
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/RsqrtRsqrtVfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2V
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/Rsqrt
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mulMulXfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/Rsqrt:y:0Ufeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2T
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mul
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mul_1MulDfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D:output:0Vfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2V
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mul_1¡
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mul_2MulZfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/moments/mean:output:0Vfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2V
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mul_2
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/subSubWfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1:output:0Xfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2T
Rfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/sub£
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/add_1AddV2Xfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/mul_1:z:0Vfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2V
Tfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/add_1
/feed_forward_1/resize_conv_2d_2/conv_2d_29/ReluReluXfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@21
/feed_forward_1/resize_conv_2d_2/conv_2d_29/Relu«
+feed_forward_1/resize_conv_2d_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Ð  Ð  2-
+feed_forward_1/resize_conv_2d_3/resize/sizeà
<feed_forward_1/resize_conv_2d_3/resize/ResizeNearestNeighborResizeNearestNeighbor=feed_forward_1/resize_conv_2d_2/conv_2d_29/Relu:activations:04feed_forward_1/resize_conv_2d_3/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐÐ@*
half_pixel_centers(2>
<feed_forward_1/resize_conv_2d_3/resize/ResizeNearestNeighborÖ
4feed_forward_1/resize_conv_2d_3/conv_2d_30/MirrorPad	MirrorPadMfeed_forward_1/resize_conv_2d_3/resize/ResizeNearestNeighbor:resized_images:0=feed_forward_1_resize_conv_2d_3_conv_2d_30_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒÒ@*
mode	REFLECT26
4feed_forward_1/resize_conv_2d_3/conv_2d_30/MirrorPad´
Jfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D/ReadVariableOpReadVariableOpSfeed_forward_1_resize_conv_2d_3_conv_2d_30_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02L
Jfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D/ReadVariableOpü
;feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2DConv2D=feed_forward_1/resize_conv_2d_3/conv_2d_30/MirrorPad:output:0Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2=
;feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D
Jfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/ShapeShapeDfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D:output:0*
T0*
_output_shapes
:2L
Jfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Shapeþ
Xfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2Z
Xfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice/stack
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice/stack_1
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice/stack_2
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_sliceStridedSliceSfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Shape:output:0afeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice/stack:output:0cfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice/stack_1:output:0cfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2T
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1/stack
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1/stack_1
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1/stack_2
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1StridedSliceSfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Shape:output:0cfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1/stack:output:0efeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1/stack_1:output:0efeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_1
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2/stack
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2/stack_1
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2/stack_2
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2StridedSliceSfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Shape:output:0cfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2/stack:output:0efeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2/stack_1:output:0efeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_2
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3/stack
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3/stack_1
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3/stack_2
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3StridedSliceSfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Shape:output:0cfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3/stack:output:0efeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3/stack_1:output:0efeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/strided_slice_3
cfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2e
cfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/mean/reduction_indices­
Qfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/meanMeanDfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D:output:0lfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2S
Qfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/meanÜ
Yfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/StopGradientStopGradientZfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2[
Yfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/StopGradient»
^feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/SquaredDifferenceSquaredDifferenceDfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D:output:0bfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2`
^feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/SquaredDifference£
gfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2i
gfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/variance/reduction_indices×
Ufeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/varianceMeanbfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/SquaredDifference:z:0pfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2W
Ufeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/varianceÛ
[feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/ReadVariableOpReadVariableOpdfeed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_reshape_readvariableop_resource*
_output_shapes
: *
dtype02]
[feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2T
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/shape
Lfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/ReshapeReshapecfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp:value:0[feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/shape:output:0*
T0*&
_output_shapes
: 2N
Lfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshapeá
]feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOpReadVariableOpffeed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02_
]feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2V
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/shape¢
Nfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1Reshapeefeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp:value:0]feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2P
Nfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1ñ
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2V
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/add/yª
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/addAddV2^feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/variance:output:0]feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2T
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/addÇ
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/RsqrtRsqrtVfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2V
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/Rsqrt
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mulMulXfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/Rsqrt:y:0Ufeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2T
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mul
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mul_1MulDfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D:output:0Vfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2V
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mul_1¡
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mul_2MulZfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/moments/mean:output:0Vfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2V
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mul_2
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/subSubWfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1:output:0Xfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2T
Rfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/sub£
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/add_1AddV2Xfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/mul_1:z:0Vfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2V
Tfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/add_1
/feed_forward_1/resize_conv_2d_3/conv_2d_30/ReluReluXfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 21
/feed_forward_1/resize_conv_2d_3/conv_2d_30/Relu
#feed_forward_1/conv_2d_31/MirrorPad	MirrorPad=feed_forward_1/resize_conv_2d_3/conv_2d_30/Relu:activations:0,feed_forward_1_conv_2d_31_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð *
mode	REFLECT2%
#feed_forward_1/conv_2d_31/MirrorPad
9feed_forward_1/conv_2d_31/conv2d_31/Conv2D/ReadVariableOpReadVariableOpBfeed_forward_1_conv_2d_31_conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02;
9feed_forward_1/conv_2d_31/conv2d_31/Conv2D/ReadVariableOp¸
*feed_forward_1/conv_2d_31/conv2d_31/Conv2DConv2D,feed_forward_1/conv_2d_31/MirrorPad:output:0Afeed_forward_1/conv_2d_31/conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*
paddingVALID*
strides
2,
*feed_forward_1/conv_2d_31/conv2d_31/Conv2DÙ
9feed_forward_1/conv_2d_31/instance_normalization_35/ShapeShape3feed_forward_1/conv_2d_31/conv2d_31/Conv2D:output:0*
T0*
_output_shapes
:2;
9feed_forward_1/conv_2d_31/instance_normalization_35/ShapeÜ
Gfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice/stackà
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice/stack_1à
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice/stack_2
Afeed_forward_1/conv_2d_31/instance_normalization_35/strided_sliceStridedSliceBfeed_forward_1/conv_2d_31/instance_normalization_35/Shape:output:0Pfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice/stack:output:0Rfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice/stack_1:output:0Rfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Afeed_forward_1/conv_2d_31/instance_normalization_35/strided_sliceà
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1/stackä
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1/stack_1ä
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1/stack_2¤
Cfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1StridedSliceBfeed_forward_1/conv_2d_31/instance_normalization_35/Shape:output:0Rfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1/stack:output:0Tfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1/stack_1:output:0Tfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_1à
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2/stackä
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2/stack_1ä
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2/stack_2¤
Cfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2StridedSliceBfeed_forward_1/conv_2d_31/instance_normalization_35/Shape:output:0Rfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2/stack:output:0Tfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2/stack_1:output:0Tfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_2à
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3/stackä
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3/stack_1ä
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3/stack_2¤
Cfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3StridedSliceBfeed_forward_1/conv_2d_31/instance_normalization_35/Shape:output:0Rfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3/stack:output:0Tfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3/stack_1:output:0Tfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_1/conv_2d_31/instance_normalization_35/strided_slice_3ù
Rfeed_forward_1/conv_2d_31/instance_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2T
Rfeed_forward_1/conv_2d_31/instance_normalization_35/moments/mean/reduction_indicesé
@feed_forward_1/conv_2d_31/instance_normalization_35/moments/meanMean3feed_forward_1/conv_2d_31/conv2d_31/Conv2D:output:0[feed_forward_1/conv_2d_31/instance_normalization_35/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2B
@feed_forward_1/conv_2d_31/instance_normalization_35/moments/mean©
Hfeed_forward_1/conv_2d_31/instance_normalization_35/moments/StopGradientStopGradientIfeed_forward_1/conv_2d_31/instance_normalization_35/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2J
Hfeed_forward_1/conv_2d_31/instance_normalization_35/moments/StopGradient÷
Mfeed_forward_1/conv_2d_31/instance_normalization_35/moments/SquaredDifferenceSquaredDifference3feed_forward_1/conv_2d_31/conv2d_31/Conv2D:output:0Qfeed_forward_1/conv_2d_31/instance_normalization_35/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2O
Mfeed_forward_1/conv_2d_31/instance_normalization_35/moments/SquaredDifference
Vfeed_forward_1/conv_2d_31/instance_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2X
Vfeed_forward_1/conv_2d_31/instance_normalization_35/moments/variance/reduction_indices
Dfeed_forward_1/conv_2d_31/instance_normalization_35/moments/varianceMeanQfeed_forward_1/conv_2d_31/instance_normalization_35/moments/SquaredDifference:z:0_feed_forward_1/conv_2d_31/instance_normalization_35/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2F
Dfeed_forward_1/conv_2d_31/instance_normalization_35/moments/variance¨
Jfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape/ReadVariableOpReadVariableOpSfeed_forward_1_conv_2d_31_instance_normalization_35_reshape_readvariableop_resource*
_output_shapes
:*
dtype02L
Jfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape/ReadVariableOpß
Afeed_forward_1/conv_2d_31/instance_normalization_35/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2C
Afeed_forward_1/conv_2d_31/instance_normalization_35/Reshape/shapeÖ
;feed_forward_1/conv_2d_31/instance_normalization_35/ReshapeReshapeRfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape/ReadVariableOp:value:0Jfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape/shape:output:0*
T0*&
_output_shapes
:2=
;feed_forward_1/conv_2d_31/instance_normalization_35/Reshape®
Lfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/ReadVariableOpReadVariableOpUfeed_forward_1_conv_2d_31_instance_normalization_35_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02N
Lfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/ReadVariableOpã
Cfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2E
Cfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/shapeÞ
=feed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1ReshapeTfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/ReadVariableOp:value:0Lfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2?
=feed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1Ï
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2E
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/add/yæ
Afeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/addAddV2Mfeed_forward_1/conv_2d_31/instance_normalization_35/moments/variance:output:0Lfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/add
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/RsqrtRsqrtEfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/RsqrtÖ
Afeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mulMulGfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/Rsqrt:y:0Dfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mulÉ
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mul_1Mul3feed_forward_1/conv_2d_31/conv2d_31/Conv2D:output:0Efeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2E
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mul_1Ý
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mul_2MulIfeed_forward_1/conv_2d_31/instance_normalization_35/moments/mean:output:0Efeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mul_2Ø
Afeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/subSubFfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1:output:0Gfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/subß
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/add_1AddV2Gfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/mul_1:z:0Efeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2E
Cfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/add_1·
feed_forward_1/TanhTanhGfeed_forward_1/conv_2d_31/instance_normalization_35/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2
feed_forward_1/Tanh¥
IdentityIdentityfeed_forward_1/Tanh:y:0:^feed_forward_1/conv_2d_16/conv2d_16/Conv2D/ReadVariableOpK^feed_forward_1/conv_2d_16/instance_normalization_18/Reshape/ReadVariableOpM^feed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/ReadVariableOp:^feed_forward_1/conv_2d_17/conv2d_17/Conv2D/ReadVariableOpK^feed_forward_1/conv_2d_17/instance_normalization_19/Reshape/ReadVariableOpM^feed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/ReadVariableOp:^feed_forward_1/conv_2d_18/conv2d_18/Conv2D/ReadVariableOpK^feed_forward_1/conv_2d_18/instance_normalization_20/Reshape/ReadVariableOpM^feed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/ReadVariableOp:^feed_forward_1/conv_2d_31/conv2d_31/Conv2D/ReadVariableOpK^feed_forward_1/conv_2d_31/instance_normalization_35/Reshape/ReadVariableOpM^feed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/ReadVariableOpE^feed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D/ReadVariableOpV^feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/ReadVariableOpX^feed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOpE^feed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D/ReadVariableOpV^feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/ReadVariableOpX^feed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOpE^feed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D/ReadVariableOpV^feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/ReadVariableOpX^feed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOpE^feed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D/ReadVariableOpV^feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/ReadVariableOpX^feed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOpE^feed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D/ReadVariableOpV^feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/ReadVariableOpX^feed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOpE^feed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D/ReadVariableOpV^feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/ReadVariableOpX^feed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOpE^feed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D/ReadVariableOpV^feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/ReadVariableOpX^feed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOpE^feed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D/ReadVariableOpV^feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/ReadVariableOpX^feed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOpE^feed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D/ReadVariableOpV^feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/ReadVariableOpX^feed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOpE^feed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D/ReadVariableOpV^feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/ReadVariableOpX^feed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOpK^feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D/ReadVariableOp\^feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp^^feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOpK^feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D/ReadVariableOp\^feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp^^feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*
_input_shapes
ý:ÿÿÿÿÿÿÿÿÿèè::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2v
9feed_forward_1/conv_2d_16/conv2d_16/Conv2D/ReadVariableOp9feed_forward_1/conv_2d_16/conv2d_16/Conv2D/ReadVariableOp2
Jfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape/ReadVariableOpJfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape/ReadVariableOp2
Lfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/ReadVariableOpLfeed_forward_1/conv_2d_16/instance_normalization_18/Reshape_1/ReadVariableOp2v
9feed_forward_1/conv_2d_17/conv2d_17/Conv2D/ReadVariableOp9feed_forward_1/conv_2d_17/conv2d_17/Conv2D/ReadVariableOp2
Jfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape/ReadVariableOpJfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape/ReadVariableOp2
Lfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/ReadVariableOpLfeed_forward_1/conv_2d_17/instance_normalization_19/Reshape_1/ReadVariableOp2v
9feed_forward_1/conv_2d_18/conv2d_18/Conv2D/ReadVariableOp9feed_forward_1/conv_2d_18/conv2d_18/Conv2D/ReadVariableOp2
Jfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape/ReadVariableOpJfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape/ReadVariableOp2
Lfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/ReadVariableOpLfeed_forward_1/conv_2d_18/instance_normalization_20/Reshape_1/ReadVariableOp2v
9feed_forward_1/conv_2d_31/conv2d_31/Conv2D/ReadVariableOp9feed_forward_1/conv_2d_31/conv2d_31/Conv2D/ReadVariableOp2
Jfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape/ReadVariableOpJfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape/ReadVariableOp2
Lfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/ReadVariableOpLfeed_forward_1/conv_2d_31/instance_normalization_35/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D/ReadVariableOpDfeed_forward_1/residual_5/conv_2d_19/conv2d_19/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/ReadVariableOpUfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOpWfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D/ReadVariableOpDfeed_forward_1/residual_5/conv_2d_20/conv2d_20/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/ReadVariableOpUfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOpWfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D/ReadVariableOpDfeed_forward_1/residual_6/conv_2d_21/conv2d_21/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/ReadVariableOpUfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOpWfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D/ReadVariableOpDfeed_forward_1/residual_6/conv_2d_22/conv2d_22/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/ReadVariableOpUfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOpWfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D/ReadVariableOpDfeed_forward_1/residual_7/conv_2d_23/conv2d_23/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/ReadVariableOpUfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOpWfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D/ReadVariableOpDfeed_forward_1/residual_7/conv_2d_24/conv2d_24/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/ReadVariableOpUfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOpWfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D/ReadVariableOpDfeed_forward_1/residual_8/conv_2d_25/conv2d_25/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/ReadVariableOpUfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOpWfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D/ReadVariableOpDfeed_forward_1/residual_8/conv_2d_26/conv2d_26/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/ReadVariableOpUfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOpWfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D/ReadVariableOpDfeed_forward_1/residual_9/conv_2d_27/conv2d_27/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/ReadVariableOpUfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOpWfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp2
Dfeed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D/ReadVariableOpDfeed_forward_1/residual_9/conv_2d_28/conv2d_28/Conv2D/ReadVariableOp2®
Ufeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/ReadVariableOpUfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp2²
Wfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOpWfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp2
Jfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D/ReadVariableOpJfeed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/Conv2D/ReadVariableOp2º
[feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp[feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp2¾
]feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp]feed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp2
Jfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D/ReadVariableOpJfeed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/Conv2D/ReadVariableOp2º
[feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp[feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp2¾
]feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp]feed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè
!
_user_specified_name	input_1:$ 

_output_shapes

::$ 

_output_shapes

::$	 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$! 

_output_shapes

::$% 

_output_shapes

::$) 

_output_shapes

::$- 

_output_shapes

::$1 

_output_shapes

::$5 

_output_shapes

::$9 

_output_shapes

::$= 

_output_shapes

:
ê

8__inference_instance_normalization_26_layer_call_fn_3224

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_26_layer_call_and_return_conditional_losses_32142
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ

)__inference_conv_2d_18_layer_call_fn_5174

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv_2d_18_layer_call_and_return_conditional_losses_38012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:
ó

)__inference_conv_2d_16_layer_call_fn_5050

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv_2d_16_layer_call_and_return_conditional_losses_36552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè
 
_user_specified_nameinputs:$ 

_output_shapes

:
 0
ò
S__inference_instance_normalization_19_layer_call_and_return_conditional_losses_2836

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÃ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
:@*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
:@2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/addx
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1µ
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¼
Ï
"__inference_signature_wrapper_4988
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62
identity¢StatefulPartitionedCall¨	
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*R
_read_only_resource_inputs4
20
 "#$&'(*+,./0234678:;<>?@*0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__wrapped_model_27382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*
_input_shapes
ý:ÿÿÿÿÿÿÿÿÿèè::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè
!
_user_specified_name	input_1:$ 

_output_shapes

::$ 

_output_shapes

::$	 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$! 

_output_shapes

::$% 

_output_shapes

::$) 

_output_shapes

::$- 

_output_shapes

::$1 

_output_shapes

::$5 

_output_shapes

::$9 

_output_shapes

::$= 

_output_shapes

:
¼P
³
D__inference_conv_2d_18_layer_call_and_return_conditional_losses_5161

inputs
mirrorpad_paddings,
(conv2d_18_conv2d_readvariableop_resource=
9instance_normalization_20_reshape_readvariableop_resource?
;instance_normalization_20_reshape_1_readvariableop_resource
identity¢conv2d_18/Conv2D/ReadVariableOp¢0instance_normalization_20/Reshape/ReadVariableOp¢2instance_normalization_20/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿöö@*
mode	REFLECT2
	MirrorPad´
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_18/Conv2D/ReadVariableOpÑ
conv2d_18/Conv2DConv2DMirrorPad:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv2d_18/Conv2D
instance_normalization_20/ShapeShapeconv2d_18/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_20/Shape¨
-instance_normalization_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_20/strided_slice/stack¬
/instance_normalization_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice/stack_1¬
/instance_normalization_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice/stack_2þ
'instance_normalization_20/strided_sliceStridedSlice(instance_normalization_20/Shape:output:06instance_normalization_20/strided_slice/stack:output:08instance_normalization_20/strided_slice/stack_1:output:08instance_normalization_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_20/strided_slice¬
/instance_normalization_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice_1/stack°
1instance_normalization_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_1/stack_1°
1instance_normalization_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_1/stack_2
)instance_normalization_20/strided_slice_1StridedSlice(instance_normalization_20/Shape:output:08instance_normalization_20/strided_slice_1/stack:output:0:instance_normalization_20/strided_slice_1/stack_1:output:0:instance_normalization_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_20/strided_slice_1¬
/instance_normalization_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice_2/stack°
1instance_normalization_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_2/stack_1°
1instance_normalization_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_2/stack_2
)instance_normalization_20/strided_slice_2StridedSlice(instance_normalization_20/Shape:output:08instance_normalization_20/strided_slice_2/stack:output:0:instance_normalization_20/strided_slice_2/stack_1:output:0:instance_normalization_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_20/strided_slice_2¬
/instance_normalization_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice_3/stack°
1instance_normalization_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_3/stack_1°
1instance_normalization_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_3/stack_2
)instance_normalization_20/strided_slice_3StridedSlice(instance_normalization_20/Shape:output:08instance_normalization_20/strided_slice_3/stack:output:0:instance_normalization_20/strided_slice_3/stack_1:output:0:instance_normalization_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_20/strided_slice_3Å
8instance_normalization_20/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_20/moments/mean/reduction_indices
&instance_normalization_20/moments/meanMeanconv2d_18/Conv2D:output:0Ainstance_normalization_20/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2(
&instance_normalization_20/moments/meanÜ
.instance_normalization_20/moments/StopGradientStopGradient/instance_normalization_20/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.instance_normalization_20/moments/StopGradient
3instance_normalization_20/moments/SquaredDifferenceSquaredDifferenceconv2d_18/Conv2D:output:07instance_normalization_20/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú25
3instance_normalization_20/moments/SquaredDifferenceÍ
<instance_normalization_20/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_20/moments/variance/reduction_indices¬
*instance_normalization_20/moments/varianceMean7instance_normalization_20/moments/SquaredDifference:z:0Einstance_normalization_20/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2,
*instance_normalization_20/moments/varianceÛ
0instance_normalization_20/Reshape/ReadVariableOpReadVariableOp9instance_normalization_20_reshape_readvariableop_resource*
_output_shapes	
:*
dtype022
0instance_normalization_20/Reshape/ReadVariableOp«
'instance_normalization_20/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'instance_normalization_20/Reshape/shapeï
!instance_normalization_20/ReshapeReshape8instance_normalization_20/Reshape/ReadVariableOp:value:00instance_normalization_20/Reshape/shape:output:0*
T0*'
_output_shapes
:2#
!instance_normalization_20/Reshapeá
2instance_normalization_20/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_20_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype024
2instance_normalization_20/Reshape_1/ReadVariableOp¯
)instance_normalization_20/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)instance_normalization_20/Reshape_1/shape÷
#instance_normalization_20/Reshape_1Reshape:instance_normalization_20/Reshape_1/ReadVariableOp:value:02instance_normalization_20/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2%
#instance_normalization_20/Reshape_1
)instance_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_20/batchnorm/add/yÿ
'instance_normalization_20/batchnorm/addAddV23instance_normalization_20/moments/variance:output:02instance_normalization_20/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_20/batchnorm/addÇ
)instance_normalization_20/batchnorm/RsqrtRsqrt+instance_normalization_20/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_20/batchnorm/Rsqrtï
'instance_normalization_20/batchnorm/mulMul-instance_normalization_20/batchnorm/Rsqrt:y:0*instance_normalization_20/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_20/batchnorm/mulâ
)instance_normalization_20/batchnorm/mul_1Mulconv2d_18/Conv2D:output:0+instance_normalization_20/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)instance_normalization_20/batchnorm/mul_1ö
)instance_normalization_20/batchnorm/mul_2Mul/instance_normalization_20/moments/mean:output:0+instance_normalization_20/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_20/batchnorm/mul_2ñ
'instance_normalization_20/batchnorm/subSub,instance_normalization_20/Reshape_1:output:0-instance_normalization_20/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_20/batchnorm/subø
)instance_normalization_20/batchnorm/add_1AddV2-instance_normalization_20/batchnorm/mul_1:z:0+instance_normalization_20/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)instance_normalization_20/batchnorm/add_1
ReluRelu-instance_normalization_20/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
Reluû
IdentityIdentityRelu:activations:0 ^conv2d_18/Conv2D/ReadVariableOp1^instance_normalization_20/Reshape/ReadVariableOp3^instance_normalization_20/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2d
0instance_normalization_20/Reshape/ReadVariableOp0instance_normalization_20/Reshape/ReadVariableOp2h
2instance_normalization_20/Reshape_1/ReadVariableOp2instance_normalization_20/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:
·

D__inference_residual_9_layer_call_and_return_conditional_losses_5728

inputs!
conv_2d_27_mirrorpad_paddings7
3conv_2d_27_conv2d_27_conv2d_readvariableop_resourceH
Dconv_2d_27_instance_normalization_29_reshape_readvariableop_resourceJ
Fconv_2d_27_instance_normalization_29_reshape_1_readvariableop_resource!
conv_2d_28_mirrorpad_paddings7
3conv_2d_28_conv2d_28_conv2d_readvariableop_resourceH
Dconv_2d_28_instance_normalization_30_reshape_readvariableop_resourceJ
Fconv_2d_28_instance_normalization_30_reshape_1_readvariableop_resource
identity¢*conv_2d_27/conv2d_27/Conv2D/ReadVariableOp¢;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp¢=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp¢*conv_2d_28/conv2d_28/Conv2D/ReadVariableOp¢;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp¢=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp°
conv_2d_27/MirrorPad	MirrorPadinputsconv_2d_27_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_27/MirrorPadÖ
*conv_2d_27/conv2d_27/Conv2D/ReadVariableOpReadVariableOp3conv_2d_27_conv2d_27_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_27/conv2d_27/Conv2D/ReadVariableOpý
conv_2d_27/conv2d_27/Conv2DConv2Dconv_2d_27/MirrorPad:output:02conv_2d_27/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_27/conv2d_27/Conv2D¬
*conv_2d_27/instance_normalization_29/ShapeShape$conv_2d_27/conv2d_27/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_27/instance_normalization_29/Shape¾
8conv_2d_27/instance_normalization_29/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_27/instance_normalization_29/strided_slice/stackÂ
:conv_2d_27/instance_normalization_29/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice/stack_1Â
:conv_2d_27/instance_normalization_29/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice/stack_2À
2conv_2d_27/instance_normalization_29/strided_sliceStridedSlice3conv_2d_27/instance_normalization_29/Shape:output:0Aconv_2d_27/instance_normalization_29/strided_slice/stack:output:0Cconv_2d_27/instance_normalization_29/strided_slice/stack_1:output:0Cconv_2d_27/instance_normalization_29/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_27/instance_normalization_29/strided_sliceÂ
:conv_2d_27/instance_normalization_29/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice_1/stackÆ
<conv_2d_27/instance_normalization_29/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_1/stack_1Æ
<conv_2d_27/instance_normalization_29/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_1/stack_2Ê
4conv_2d_27/instance_normalization_29/strided_slice_1StridedSlice3conv_2d_27/instance_normalization_29/Shape:output:0Cconv_2d_27/instance_normalization_29/strided_slice_1/stack:output:0Econv_2d_27/instance_normalization_29/strided_slice_1/stack_1:output:0Econv_2d_27/instance_normalization_29/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_27/instance_normalization_29/strided_slice_1Â
:conv_2d_27/instance_normalization_29/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice_2/stackÆ
<conv_2d_27/instance_normalization_29/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_2/stack_1Æ
<conv_2d_27/instance_normalization_29/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_2/stack_2Ê
4conv_2d_27/instance_normalization_29/strided_slice_2StridedSlice3conv_2d_27/instance_normalization_29/Shape:output:0Cconv_2d_27/instance_normalization_29/strided_slice_2/stack:output:0Econv_2d_27/instance_normalization_29/strided_slice_2/stack_1:output:0Econv_2d_27/instance_normalization_29/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_27/instance_normalization_29/strided_slice_2Â
:conv_2d_27/instance_normalization_29/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_27/instance_normalization_29/strided_slice_3/stackÆ
<conv_2d_27/instance_normalization_29/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_3/stack_1Æ
<conv_2d_27/instance_normalization_29/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_27/instance_normalization_29/strided_slice_3/stack_2Ê
4conv_2d_27/instance_normalization_29/strided_slice_3StridedSlice3conv_2d_27/instance_normalization_29/Shape:output:0Cconv_2d_27/instance_normalization_29/strided_slice_3/stack:output:0Econv_2d_27/instance_normalization_29/strided_slice_3/stack_1:output:0Econv_2d_27/instance_normalization_29/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_27/instance_normalization_29/strided_slice_3Û
Cconv_2d_27/instance_normalization_29/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_27/instance_normalization_29/moments/mean/reduction_indices®
1conv_2d_27/instance_normalization_29/moments/meanMean$conv_2d_27/conv2d_27/Conv2D:output:0Lconv_2d_27/instance_normalization_29/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_27/instance_normalization_29/moments/meaný
9conv_2d_27/instance_normalization_29/moments/StopGradientStopGradient:conv_2d_27/instance_normalization_29/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_27/instance_normalization_29/moments/StopGradient¼
>conv_2d_27/instance_normalization_29/moments/SquaredDifferenceSquaredDifference$conv_2d_27/conv2d_27/Conv2D:output:0Bconv_2d_27/instance_normalization_29/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_27/instance_normalization_29/moments/SquaredDifferenceã
Gconv_2d_27/instance_normalization_29/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_27/instance_normalization_29/moments/variance/reduction_indicesØ
5conv_2d_27/instance_normalization_29/moments/varianceMeanBconv_2d_27/instance_normalization_29/moments/SquaredDifference:z:0Pconv_2d_27/instance_normalization_29/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_27/instance_normalization_29/moments/varianceü
;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOpReadVariableOpDconv_2d_27_instance_normalization_29_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOpÁ
2conv_2d_27/instance_normalization_29/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_27/instance_normalization_29/Reshape/shape
,conv_2d_27/instance_normalization_29/ReshapeReshapeCconv_2d_27/instance_normalization_29/Reshape/ReadVariableOp:value:0;conv_2d_27/instance_normalization_29/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_27/instance_normalization_29/Reshape
=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_27_instance_normalization_29_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOpÅ
4conv_2d_27/instance_normalization_29/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_27/instance_normalization_29/Reshape_1/shape£
.conv_2d_27/instance_normalization_29/Reshape_1ReshapeEconv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp:value:0=conv_2d_27/instance_normalization_29/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_27/instance_normalization_29/Reshape_1±
4conv_2d_27/instance_normalization_29/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_27/instance_normalization_29/batchnorm/add/y«
2conv_2d_27/instance_normalization_29/batchnorm/addAddV2>conv_2d_27/instance_normalization_29/moments/variance:output:0=conv_2d_27/instance_normalization_29/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_27/instance_normalization_29/batchnorm/addè
4conv_2d_27/instance_normalization_29/batchnorm/RsqrtRsqrt6conv_2d_27/instance_normalization_29/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_27/instance_normalization_29/batchnorm/Rsqrt
2conv_2d_27/instance_normalization_29/batchnorm/mulMul8conv_2d_27/instance_normalization_29/batchnorm/Rsqrt:y:05conv_2d_27/instance_normalization_29/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_27/instance_normalization_29/batchnorm/mul
4conv_2d_27/instance_normalization_29/batchnorm/mul_1Mul$conv_2d_27/conv2d_27/Conv2D:output:06conv_2d_27/instance_normalization_29/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_27/instance_normalization_29/batchnorm/mul_1¢
4conv_2d_27/instance_normalization_29/batchnorm/mul_2Mul:conv_2d_27/instance_normalization_29/moments/mean:output:06conv_2d_27/instance_normalization_29/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_27/instance_normalization_29/batchnorm/mul_2
2conv_2d_27/instance_normalization_29/batchnorm/subSub7conv_2d_27/instance_normalization_29/Reshape_1:output:08conv_2d_27/instance_normalization_29/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_27/instance_normalization_29/batchnorm/sub¤
4conv_2d_27/instance_normalization_29/batchnorm/add_1AddV28conv_2d_27/instance_normalization_29/batchnorm/mul_1:z:06conv_2d_27/instance_normalization_29/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_27/instance_normalization_29/batchnorm/add_1¡
conv_2d_27/ReluRelu8conv_2d_27/instance_normalization_29/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_27/ReluÇ
conv_2d_28/MirrorPad	MirrorPadconv_2d_27/Relu:activations:0conv_2d_28_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_28/MirrorPadÖ
*conv_2d_28/conv2d_28/Conv2D/ReadVariableOpReadVariableOp3conv_2d_28_conv2d_28_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_28/conv2d_28/Conv2D/ReadVariableOpý
conv_2d_28/conv2d_28/Conv2DConv2Dconv_2d_28/MirrorPad:output:02conv_2d_28/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_28/conv2d_28/Conv2D¬
*conv_2d_28/instance_normalization_30/ShapeShape$conv_2d_28/conv2d_28/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_28/instance_normalization_30/Shape¾
8conv_2d_28/instance_normalization_30/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_28/instance_normalization_30/strided_slice/stackÂ
:conv_2d_28/instance_normalization_30/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice/stack_1Â
:conv_2d_28/instance_normalization_30/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice/stack_2À
2conv_2d_28/instance_normalization_30/strided_sliceStridedSlice3conv_2d_28/instance_normalization_30/Shape:output:0Aconv_2d_28/instance_normalization_30/strided_slice/stack:output:0Cconv_2d_28/instance_normalization_30/strided_slice/stack_1:output:0Cconv_2d_28/instance_normalization_30/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_28/instance_normalization_30/strided_sliceÂ
:conv_2d_28/instance_normalization_30/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice_1/stackÆ
<conv_2d_28/instance_normalization_30/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_1/stack_1Æ
<conv_2d_28/instance_normalization_30/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_1/stack_2Ê
4conv_2d_28/instance_normalization_30/strided_slice_1StridedSlice3conv_2d_28/instance_normalization_30/Shape:output:0Cconv_2d_28/instance_normalization_30/strided_slice_1/stack:output:0Econv_2d_28/instance_normalization_30/strided_slice_1/stack_1:output:0Econv_2d_28/instance_normalization_30/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_28/instance_normalization_30/strided_slice_1Â
:conv_2d_28/instance_normalization_30/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice_2/stackÆ
<conv_2d_28/instance_normalization_30/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_2/stack_1Æ
<conv_2d_28/instance_normalization_30/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_2/stack_2Ê
4conv_2d_28/instance_normalization_30/strided_slice_2StridedSlice3conv_2d_28/instance_normalization_30/Shape:output:0Cconv_2d_28/instance_normalization_30/strided_slice_2/stack:output:0Econv_2d_28/instance_normalization_30/strided_slice_2/stack_1:output:0Econv_2d_28/instance_normalization_30/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_28/instance_normalization_30/strided_slice_2Â
:conv_2d_28/instance_normalization_30/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_28/instance_normalization_30/strided_slice_3/stackÆ
<conv_2d_28/instance_normalization_30/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_3/stack_1Æ
<conv_2d_28/instance_normalization_30/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_28/instance_normalization_30/strided_slice_3/stack_2Ê
4conv_2d_28/instance_normalization_30/strided_slice_3StridedSlice3conv_2d_28/instance_normalization_30/Shape:output:0Cconv_2d_28/instance_normalization_30/strided_slice_3/stack:output:0Econv_2d_28/instance_normalization_30/strided_slice_3/stack_1:output:0Econv_2d_28/instance_normalization_30/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_28/instance_normalization_30/strided_slice_3Û
Cconv_2d_28/instance_normalization_30/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_28/instance_normalization_30/moments/mean/reduction_indices®
1conv_2d_28/instance_normalization_30/moments/meanMean$conv_2d_28/conv2d_28/Conv2D:output:0Lconv_2d_28/instance_normalization_30/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_28/instance_normalization_30/moments/meaný
9conv_2d_28/instance_normalization_30/moments/StopGradientStopGradient:conv_2d_28/instance_normalization_30/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_28/instance_normalization_30/moments/StopGradient¼
>conv_2d_28/instance_normalization_30/moments/SquaredDifferenceSquaredDifference$conv_2d_28/conv2d_28/Conv2D:output:0Bconv_2d_28/instance_normalization_30/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_28/instance_normalization_30/moments/SquaredDifferenceã
Gconv_2d_28/instance_normalization_30/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_28/instance_normalization_30/moments/variance/reduction_indicesØ
5conv_2d_28/instance_normalization_30/moments/varianceMeanBconv_2d_28/instance_normalization_30/moments/SquaredDifference:z:0Pconv_2d_28/instance_normalization_30/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_28/instance_normalization_30/moments/varianceü
;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOpReadVariableOpDconv_2d_28_instance_normalization_30_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOpÁ
2conv_2d_28/instance_normalization_30/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_28/instance_normalization_30/Reshape/shape
,conv_2d_28/instance_normalization_30/ReshapeReshapeCconv_2d_28/instance_normalization_30/Reshape/ReadVariableOp:value:0;conv_2d_28/instance_normalization_30/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_28/instance_normalization_30/Reshape
=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_28_instance_normalization_30_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOpÅ
4conv_2d_28/instance_normalization_30/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_28/instance_normalization_30/Reshape_1/shape£
.conv_2d_28/instance_normalization_30/Reshape_1ReshapeEconv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp:value:0=conv_2d_28/instance_normalization_30/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_28/instance_normalization_30/Reshape_1±
4conv_2d_28/instance_normalization_30/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_28/instance_normalization_30/batchnorm/add/y«
2conv_2d_28/instance_normalization_30/batchnorm/addAddV2>conv_2d_28/instance_normalization_30/moments/variance:output:0=conv_2d_28/instance_normalization_30/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_28/instance_normalization_30/batchnorm/addè
4conv_2d_28/instance_normalization_30/batchnorm/RsqrtRsqrt6conv_2d_28/instance_normalization_30/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_28/instance_normalization_30/batchnorm/Rsqrt
2conv_2d_28/instance_normalization_30/batchnorm/mulMul8conv_2d_28/instance_normalization_30/batchnorm/Rsqrt:y:05conv_2d_28/instance_normalization_30/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_28/instance_normalization_30/batchnorm/mul
4conv_2d_28/instance_normalization_30/batchnorm/mul_1Mul$conv_2d_28/conv2d_28/Conv2D:output:06conv_2d_28/instance_normalization_30/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_28/instance_normalization_30/batchnorm/mul_1¢
4conv_2d_28/instance_normalization_30/batchnorm/mul_2Mul:conv_2d_28/instance_normalization_30/moments/mean:output:06conv_2d_28/instance_normalization_30/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_28/instance_normalization_30/batchnorm/mul_2
2conv_2d_28/instance_normalization_30/batchnorm/subSub7conv_2d_28/instance_normalization_30/Reshape_1:output:08conv_2d_28/instance_normalization_30/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_28/instance_normalization_30/batchnorm/sub¤
4conv_2d_28/instance_normalization_30/batchnorm/add_1AddV28conv_2d_28/instance_normalization_30/batchnorm/mul_1:z:06conv_2d_28/instance_normalization_30/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_28/instance_normalization_30/batchnorm/add_1
addAddV2inputs8conv_2d_28/instance_normalization_30/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_27/conv2d_27/Conv2D/ReadVariableOp<^conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp>^conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp+^conv_2d_28/conv2d_28/Conv2D/ReadVariableOp<^conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp>^conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_27/conv2d_27/Conv2D/ReadVariableOp*conv_2d_27/conv2d_27/Conv2D/ReadVariableOp2z
;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp;conv_2d_27/instance_normalization_29/Reshape/ReadVariableOp2~
=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp=conv_2d_27/instance_normalization_29/Reshape_1/ReadVariableOp2X
*conv_2d_28/conv2d_28/Conv2D/ReadVariableOp*conv_2d_28/conv2d_28/Conv2D/ReadVariableOp2z
;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp;conv_2d_28/instance_normalization_30/Reshape/ReadVariableOp2~
=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp=conv_2d_28/instance_normalization_30/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
å_

J__inference_resize_conv_2d_2_layer_call_and_return_conditional_losses_4546

inputs!
conv_2d_29_mirrorpad_paddings7
3conv_2d_29_conv2d_29_conv2d_readvariableop_resourceH
Dconv_2d_29_instance_normalization_31_reshape_readvariableop_resourceJ
Fconv_2d_29_instance_normalization_31_reshape_1_readvariableop_resource
identity¢*conv_2d_29/conv2d_29/Conv2D/ReadVariableOp¢;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp¢=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOpk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"è  è  2
resize/sizeÊ
resize/ResizeNearestNeighborResizeNearestNeighborinputsresize/size:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿèè*
half_pixel_centers(2
resize/ResizeNearestNeighbor×
conv_2d_29/MirrorPad	MirrorPad-resize/ResizeNearestNeighbor:resized_images:0conv_2d_29_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿêê*
mode	REFLECT2
conv_2d_29/MirrorPadÕ
*conv_2d_29/conv2d_29/Conv2D/ReadVariableOpReadVariableOp3conv_2d_29_conv2d_29_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02,
*conv_2d_29/conv2d_29/Conv2D/ReadVariableOpü
conv_2d_29/conv2d_29/Conv2DConv2Dconv_2d_29/MirrorPad:output:02conv_2d_29/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2
conv_2d_29/conv2d_29/Conv2D¬
*conv_2d_29/instance_normalization_31/ShapeShape$conv_2d_29/conv2d_29/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_29/instance_normalization_31/Shape¾
8conv_2d_29/instance_normalization_31/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_29/instance_normalization_31/strided_slice/stackÂ
:conv_2d_29/instance_normalization_31/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice/stack_1Â
:conv_2d_29/instance_normalization_31/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice/stack_2À
2conv_2d_29/instance_normalization_31/strided_sliceStridedSlice3conv_2d_29/instance_normalization_31/Shape:output:0Aconv_2d_29/instance_normalization_31/strided_slice/stack:output:0Cconv_2d_29/instance_normalization_31/strided_slice/stack_1:output:0Cconv_2d_29/instance_normalization_31/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_29/instance_normalization_31/strided_sliceÂ
:conv_2d_29/instance_normalization_31/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice_1/stackÆ
<conv_2d_29/instance_normalization_31/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_1/stack_1Æ
<conv_2d_29/instance_normalization_31/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_1/stack_2Ê
4conv_2d_29/instance_normalization_31/strided_slice_1StridedSlice3conv_2d_29/instance_normalization_31/Shape:output:0Cconv_2d_29/instance_normalization_31/strided_slice_1/stack:output:0Econv_2d_29/instance_normalization_31/strided_slice_1/stack_1:output:0Econv_2d_29/instance_normalization_31/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_29/instance_normalization_31/strided_slice_1Â
:conv_2d_29/instance_normalization_31/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice_2/stackÆ
<conv_2d_29/instance_normalization_31/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_2/stack_1Æ
<conv_2d_29/instance_normalization_31/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_2/stack_2Ê
4conv_2d_29/instance_normalization_31/strided_slice_2StridedSlice3conv_2d_29/instance_normalization_31/Shape:output:0Cconv_2d_29/instance_normalization_31/strided_slice_2/stack:output:0Econv_2d_29/instance_normalization_31/strided_slice_2/stack_1:output:0Econv_2d_29/instance_normalization_31/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_29/instance_normalization_31/strided_slice_2Â
:conv_2d_29/instance_normalization_31/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_29/instance_normalization_31/strided_slice_3/stackÆ
<conv_2d_29/instance_normalization_31/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_3/stack_1Æ
<conv_2d_29/instance_normalization_31/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_29/instance_normalization_31/strided_slice_3/stack_2Ê
4conv_2d_29/instance_normalization_31/strided_slice_3StridedSlice3conv_2d_29/instance_normalization_31/Shape:output:0Cconv_2d_29/instance_normalization_31/strided_slice_3/stack:output:0Econv_2d_29/instance_normalization_31/strided_slice_3/stack_1:output:0Econv_2d_29/instance_normalization_31/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_29/instance_normalization_31/strided_slice_3Û
Cconv_2d_29/instance_normalization_31/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_29/instance_normalization_31/moments/mean/reduction_indices­
1conv_2d_29/instance_normalization_31/moments/meanMean$conv_2d_29/conv2d_29/Conv2D:output:0Lconv_2d_29/instance_normalization_31/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(23
1conv_2d_29/instance_normalization_31/moments/meanü
9conv_2d_29/instance_normalization_31/moments/StopGradientStopGradient:conv_2d_29/instance_normalization_31/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2;
9conv_2d_29/instance_normalization_31/moments/StopGradient»
>conv_2d_29/instance_normalization_31/moments/SquaredDifferenceSquaredDifference$conv_2d_29/conv2d_29/Conv2D:output:0Bconv_2d_29/instance_normalization_31/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2@
>conv_2d_29/instance_normalization_31/moments/SquaredDifferenceã
Gconv_2d_29/instance_normalization_31/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_29/instance_normalization_31/moments/variance/reduction_indices×
5conv_2d_29/instance_normalization_31/moments/varianceMeanBconv_2d_29/instance_normalization_31/moments/SquaredDifference:z:0Pconv_2d_29/instance_normalization_31/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(27
5conv_2d_29/instance_normalization_31/moments/varianceû
;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOpReadVariableOpDconv_2d_29_instance_normalization_31_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02=
;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOpÁ
2conv_2d_29/instance_normalization_31/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   24
2conv_2d_29/instance_normalization_31/Reshape/shape
,conv_2d_29/instance_normalization_31/ReshapeReshapeCconv_2d_29/instance_normalization_31/Reshape/ReadVariableOp:value:0;conv_2d_29/instance_normalization_31/Reshape/shape:output:0*
T0*&
_output_shapes
:@2.
,conv_2d_29/instance_normalization_31/Reshape
=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_29_instance_normalization_31_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02?
=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOpÅ
4conv_2d_29/instance_normalization_31/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   26
4conv_2d_29/instance_normalization_31/Reshape_1/shape¢
.conv_2d_29/instance_normalization_31/Reshape_1ReshapeEconv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp:value:0=conv_2d_29/instance_normalization_31/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@20
.conv_2d_29/instance_normalization_31/Reshape_1±
4conv_2d_29/instance_normalization_31/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_29/instance_normalization_31/batchnorm/add/yª
2conv_2d_29/instance_normalization_31/batchnorm/addAddV2>conv_2d_29/instance_normalization_31/moments/variance:output:0=conv_2d_29/instance_normalization_31/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_29/instance_normalization_31/batchnorm/addç
4conv_2d_29/instance_normalization_31/batchnorm/RsqrtRsqrt6conv_2d_29/instance_normalization_31/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4conv_2d_29/instance_normalization_31/batchnorm/Rsqrt
2conv_2d_29/instance_normalization_31/batchnorm/mulMul8conv_2d_29/instance_normalization_31/batchnorm/Rsqrt:y:05conv_2d_29/instance_normalization_31/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_29/instance_normalization_31/batchnorm/mul
4conv_2d_29/instance_normalization_31/batchnorm/mul_1Mul$conv_2d_29/conv2d_29/Conv2D:output:06conv_2d_29/instance_normalization_31/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@26
4conv_2d_29/instance_normalization_31/batchnorm/mul_1¡
4conv_2d_29/instance_normalization_31/batchnorm/mul_2Mul:conv_2d_29/instance_normalization_31/moments/mean:output:06conv_2d_29/instance_normalization_31/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4conv_2d_29/instance_normalization_31/batchnorm/mul_2
2conv_2d_29/instance_normalization_31/batchnorm/subSub7conv_2d_29/instance_normalization_31/Reshape_1:output:08conv_2d_29/instance_normalization_31/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_29/instance_normalization_31/batchnorm/sub£
4conv_2d_29/instance_normalization_31/batchnorm/add_1AddV28conv_2d_29/instance_normalization_31/batchnorm/mul_1:z:06conv_2d_29/instance_normalization_31/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@26
4conv_2d_29/instance_normalization_31/batchnorm/add_1 
conv_2d_29/ReluRelu8conv_2d_29/instance_normalization_31/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2
conv_2d_29/Relu¦
IdentityIdentityconv_2d_29/Relu:activations:0+^conv_2d_29/conv2d_29/Conv2D/ReadVariableOp<^conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp>^conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿúú::::2X
*conv_2d_29/conv2d_29/Conv2D/ReadVariableOp*conv_2d_29/conv2d_29/Conv2D/ReadVariableOp2z
;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp;conv_2d_29/instance_normalization_31/Reshape/ReadVariableOp2~
=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp=conv_2d_29/instance_normalization_31/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

:
ÂO
³
D__inference_conv_2d_31_layer_call_and_return_conditional_losses_4693

inputs
mirrorpad_paddings,
(conv2d_31_conv2d_readvariableop_resource=
9instance_normalization_35_reshape_readvariableop_resource?
;instance_normalization_35_reshape_1_readvariableop_resource
identity¢conv2d_31/Conv2D/ReadVariableOp¢0instance_normalization_35/Reshape/ReadVariableOp¢2instance_normalization_35/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð *
mode	REFLECT2
	MirrorPad³
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_31/Conv2D/ReadVariableOpÐ
conv2d_31/Conv2DConv2DMirrorPad:output:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*
paddingVALID*
strides
2
conv2d_31/Conv2D
instance_normalization_35/ShapeShapeconv2d_31/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_35/Shape¨
-instance_normalization_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_35/strided_slice/stack¬
/instance_normalization_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice/stack_1¬
/instance_normalization_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice/stack_2þ
'instance_normalization_35/strided_sliceStridedSlice(instance_normalization_35/Shape:output:06instance_normalization_35/strided_slice/stack:output:08instance_normalization_35/strided_slice/stack_1:output:08instance_normalization_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_35/strided_slice¬
/instance_normalization_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice_1/stack°
1instance_normalization_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_1/stack_1°
1instance_normalization_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_1/stack_2
)instance_normalization_35/strided_slice_1StridedSlice(instance_normalization_35/Shape:output:08instance_normalization_35/strided_slice_1/stack:output:0:instance_normalization_35/strided_slice_1/stack_1:output:0:instance_normalization_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_35/strided_slice_1¬
/instance_normalization_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice_2/stack°
1instance_normalization_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_2/stack_1°
1instance_normalization_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_2/stack_2
)instance_normalization_35/strided_slice_2StridedSlice(instance_normalization_35/Shape:output:08instance_normalization_35/strided_slice_2/stack:output:0:instance_normalization_35/strided_slice_2/stack_1:output:0:instance_normalization_35/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_35/strided_slice_2¬
/instance_normalization_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice_3/stack°
1instance_normalization_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_3/stack_1°
1instance_normalization_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_3/stack_2
)instance_normalization_35/strided_slice_3StridedSlice(instance_normalization_35/Shape:output:08instance_normalization_35/strided_slice_3/stack:output:0:instance_normalization_35/strided_slice_3/stack_1:output:0:instance_normalization_35/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_35/strided_slice_3Å
8instance_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_35/moments/mean/reduction_indices
&instance_normalization_35/moments/meanMeanconv2d_31/Conv2D:output:0Ainstance_normalization_35/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2(
&instance_normalization_35/moments/meanÛ
.instance_normalization_35/moments/StopGradientStopGradient/instance_normalization_35/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.instance_normalization_35/moments/StopGradient
3instance_normalization_35/moments/SquaredDifferenceSquaredDifferenceconv2d_31/Conv2D:output:07instance_normalization_35/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè25
3instance_normalization_35/moments/SquaredDifferenceÍ
<instance_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_35/moments/variance/reduction_indices«
*instance_normalization_35/moments/varianceMean7instance_normalization_35/moments/SquaredDifference:z:0Einstance_normalization_35/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2,
*instance_normalization_35/moments/varianceÚ
0instance_normalization_35/Reshape/ReadVariableOpReadVariableOp9instance_normalization_35_reshape_readvariableop_resource*
_output_shapes
:*
dtype022
0instance_normalization_35/Reshape/ReadVariableOp«
'instance_normalization_35/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'instance_normalization_35/Reshape/shapeî
!instance_normalization_35/ReshapeReshape8instance_normalization_35/Reshape/ReadVariableOp:value:00instance_normalization_35/Reshape/shape:output:0*
T0*&
_output_shapes
:2#
!instance_normalization_35/Reshapeà
2instance_normalization_35/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_35_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype024
2instance_normalization_35/Reshape_1/ReadVariableOp¯
)instance_normalization_35/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)instance_normalization_35/Reshape_1/shapeö
#instance_normalization_35/Reshape_1Reshape:instance_normalization_35/Reshape_1/ReadVariableOp:value:02instance_normalization_35/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2%
#instance_normalization_35/Reshape_1
)instance_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_35/batchnorm/add/yþ
'instance_normalization_35/batchnorm/addAddV23instance_normalization_35/moments/variance:output:02instance_normalization_35/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_35/batchnorm/addÆ
)instance_normalization_35/batchnorm/RsqrtRsqrt+instance_normalization_35/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_35/batchnorm/Rsqrtî
'instance_normalization_35/batchnorm/mulMul-instance_normalization_35/batchnorm/Rsqrt:y:0*instance_normalization_35/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_35/batchnorm/mulá
)instance_normalization_35/batchnorm/mul_1Mulconv2d_31/Conv2D:output:0+instance_normalization_35/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2+
)instance_normalization_35/batchnorm/mul_1õ
)instance_normalization_35/batchnorm/mul_2Mul/instance_normalization_35/moments/mean:output:0+instance_normalization_35/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_35/batchnorm/mul_2ð
'instance_normalization_35/batchnorm/subSub,instance_normalization_35/Reshape_1:output:0-instance_normalization_35/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_35/batchnorm/sub÷
)instance_normalization_35/batchnorm/add_1AddV2-instance_normalization_35/batchnorm/mul_1:z:0+instance_normalization_35/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2+
)instance_normalization_35/batchnorm/add_1
IdentityIdentity-instance_normalization_35/batchnorm/add_1:z:0 ^conv2d_31/Conv2D/ReadVariableOp1^instance_normalization_35/Reshape/ReadVariableOp3^instance_normalization_35/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2d
0instance_normalization_35/Reshape/ReadVariableOp0instance_normalization_35/Reshape/ReadVariableOp2h
2instance_normalization_35/Reshape_1/ReadVariableOp2instance_normalization_35/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
æ

8__inference_instance_normalization_35_layer_call_fn_3602

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_35_layer_call_and_return_conditional_losses_35922
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²0
ò
S__inference_instance_normalization_26_layer_call_and_return_conditional_losses_3214

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®~
ý#
__inference__traced_save_6121
file_prefixI
Esavev2_feed_forward_1_conv_2d_16_conv2d_16_kernel_read_readvariableopX
Tsavev2_feed_forward_1_conv_2d_16_instance_normalization_18_gamma_read_readvariableopW
Ssavev2_feed_forward_1_conv_2d_16_instance_normalization_18_beta_read_readvariableopI
Esavev2_feed_forward_1_conv_2d_17_conv2d_17_kernel_read_readvariableopX
Tsavev2_feed_forward_1_conv_2d_17_instance_normalization_19_gamma_read_readvariableopW
Ssavev2_feed_forward_1_conv_2d_17_instance_normalization_19_beta_read_readvariableopI
Esavev2_feed_forward_1_conv_2d_18_conv2d_18_kernel_read_readvariableopX
Tsavev2_feed_forward_1_conv_2d_18_instance_normalization_20_gamma_read_readvariableopW
Ssavev2_feed_forward_1_conv_2d_18_instance_normalization_20_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_5_conv_2d_19_conv2d_19_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_5_conv_2d_20_conv2d_20_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_6_conv_2d_21_conv2d_21_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_6_conv_2d_22_conv2d_22_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_7_conv_2d_23_conv2d_23_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_7_conv_2d_24_conv2d_24_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_8_conv_2d_25_conv2d_25_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_8_conv_2d_26_conv2d_26_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_9_conv_2d_27_conv2d_27_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_beta_read_readvariableopT
Psavev2_feed_forward_1_residual_9_conv_2d_28_conv2d_28_kernel_read_readvariableopc
_savev2_feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_gamma_read_readvariableopb
^savev2_feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_beta_read_readvariableopZ
Vsavev2_feed_forward_1_resize_conv_2d_2_conv_2d_29_conv2d_29_kernel_read_readvariableopi
esavev2_feed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_gamma_read_readvariableoph
dsavev2_feed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_beta_read_readvariableopZ
Vsavev2_feed_forward_1_resize_conv_2d_3_conv_2d_30_conv2d_30_kernel_read_readvariableopi
esavev2_feed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_gamma_read_readvariableoph
dsavev2_feed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_beta_read_readvariableopI
Esavev2_feed_forward_1_conv_2d_31_conv2d_31_kernel_read_readvariableopX
Tsavev2_feed_forward_1_conv_2d_31_instance_normalization_35_gamma_read_readvariableopW
Ssavev2_feed_forward_1_conv_2d_31_instance_normalization_35_beta_read_readvariableop
savev2_const_16

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename§
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*¹
value¯B¬1B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/30/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/31/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/32/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/33/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/34/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/35/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/36/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/37/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/38/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/39/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/40/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/41/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/42/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/43/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/44/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/45/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/46/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/47/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesê
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices½#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Esavev2_feed_forward_1_conv_2d_16_conv2d_16_kernel_read_readvariableopTsavev2_feed_forward_1_conv_2d_16_instance_normalization_18_gamma_read_readvariableopSsavev2_feed_forward_1_conv_2d_16_instance_normalization_18_beta_read_readvariableopEsavev2_feed_forward_1_conv_2d_17_conv2d_17_kernel_read_readvariableopTsavev2_feed_forward_1_conv_2d_17_instance_normalization_19_gamma_read_readvariableopSsavev2_feed_forward_1_conv_2d_17_instance_normalization_19_beta_read_readvariableopEsavev2_feed_forward_1_conv_2d_18_conv2d_18_kernel_read_readvariableopTsavev2_feed_forward_1_conv_2d_18_instance_normalization_20_gamma_read_readvariableopSsavev2_feed_forward_1_conv_2d_18_instance_normalization_20_beta_read_readvariableopPsavev2_feed_forward_1_residual_5_conv_2d_19_conv2d_19_kernel_read_readvariableop_savev2_feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_gamma_read_readvariableop^savev2_feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_beta_read_readvariableopPsavev2_feed_forward_1_residual_5_conv_2d_20_conv2d_20_kernel_read_readvariableop_savev2_feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_gamma_read_readvariableop^savev2_feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_beta_read_readvariableopPsavev2_feed_forward_1_residual_6_conv_2d_21_conv2d_21_kernel_read_readvariableop_savev2_feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_gamma_read_readvariableop^savev2_feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_beta_read_readvariableopPsavev2_feed_forward_1_residual_6_conv_2d_22_conv2d_22_kernel_read_readvariableop_savev2_feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_gamma_read_readvariableop^savev2_feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_beta_read_readvariableopPsavev2_feed_forward_1_residual_7_conv_2d_23_conv2d_23_kernel_read_readvariableop_savev2_feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_gamma_read_readvariableop^savev2_feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_beta_read_readvariableopPsavev2_feed_forward_1_residual_7_conv_2d_24_conv2d_24_kernel_read_readvariableop_savev2_feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_gamma_read_readvariableop^savev2_feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_beta_read_readvariableopPsavev2_feed_forward_1_residual_8_conv_2d_25_conv2d_25_kernel_read_readvariableop_savev2_feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_gamma_read_readvariableop^savev2_feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_beta_read_readvariableopPsavev2_feed_forward_1_residual_8_conv_2d_26_conv2d_26_kernel_read_readvariableop_savev2_feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_gamma_read_readvariableop^savev2_feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_beta_read_readvariableopPsavev2_feed_forward_1_residual_9_conv_2d_27_conv2d_27_kernel_read_readvariableop_savev2_feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_gamma_read_readvariableop^savev2_feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_beta_read_readvariableopPsavev2_feed_forward_1_residual_9_conv_2d_28_conv2d_28_kernel_read_readvariableop_savev2_feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_gamma_read_readvariableop^savev2_feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_beta_read_readvariableopVsavev2_feed_forward_1_resize_conv_2d_2_conv_2d_29_conv2d_29_kernel_read_readvariableopesavev2_feed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_gamma_read_readvariableopdsavev2_feed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_beta_read_readvariableopVsavev2_feed_forward_1_resize_conv_2d_3_conv_2d_30_conv2d_30_kernel_read_readvariableopesavev2_feed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_gamma_read_readvariableopdsavev2_feed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_beta_read_readvariableopEsavev2_feed_forward_1_conv_2d_31_conv2d_31_kernel_read_readvariableopTsavev2_feed_forward_1_conv_2d_31_instance_normalization_35_gamma_read_readvariableopSsavev2_feed_forward_1_conv_2d_31_instance_normalization_35_beta_read_readvariableopsavev2_const_16"/device:CPU:0*
_output_shapes
 *?
dtypes5
3212
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*¥
_input_shapes
: :		 : : : @:@:@:@:::::::::::::::::::::::::::::::::@:@:@:@ : : :		 ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:		 : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!	

_output_shapes	
::.
*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::! 

_output_shapes	
::!!

_output_shapes	
::."*
(
_output_shapes
::!#

_output_shapes	
::!$

_output_shapes	
::.%*
(
_output_shapes
::!&

_output_shapes	
::!'

_output_shapes	
::-()
'
_output_shapes
:@: )

_output_shapes
:@: *

_output_shapes
:@:,+(
&
_output_shapes
:@ : ,

_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
:		 : /

_output_shapes
:: 0

_output_shapes
::1

_output_shapes
: 
²0
ò
S__inference_instance_normalization_22_layer_call_and_return_conditional_losses_2998

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢	
Ø
)__inference_residual_7_layer_call_fn_5519

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_7_layer_call_and_return_conditional_losses_41872
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
²0
ò
S__inference_instance_normalization_23_layer_call_and_return_conditional_losses_3052

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê

8__inference_instance_normalization_23_layer_call_fn_3062

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_23_layer_call_and_return_conditional_losses_30522
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÞQ
û
H__inference_feed_forward_1_layer_call_and_return_conditional_losses_4719
input_1
conv_2d_16_3670
conv_2d_16_3672
conv_2d_16_3674
conv_2d_16_3676
conv_2d_17_3743
conv_2d_17_3745
conv_2d_17_3747
conv_2d_17_3749
conv_2d_18_3816
conv_2d_18_3818
conv_2d_18_3820
conv_2d_18_3822
residual_5_3942
residual_5_3944
residual_5_3946
residual_5_3948
residual_5_3950
residual_5_3952
residual_5_3954
residual_5_3956
residual_6_4076
residual_6_4078
residual_6_4080
residual_6_4082
residual_6_4084
residual_6_4086
residual_6_4088
residual_6_4090
residual_7_4210
residual_7_4212
residual_7_4214
residual_7_4216
residual_7_4218
residual_7_4220
residual_7_4222
residual_7_4224
residual_8_4344
residual_8_4346
residual_8_4348
residual_8_4350
residual_8_4352
residual_8_4354
residual_8_4356
residual_8_4358
residual_9_4478
residual_9_4480
residual_9_4482
residual_9_4484
residual_9_4486
residual_9_4488
residual_9_4490
residual_9_4492
resize_conv_2d_2_4561
resize_conv_2d_2_4563
resize_conv_2d_2_4565
resize_conv_2d_2_4567
resize_conv_2d_3_4636
resize_conv_2d_3_4638
resize_conv_2d_3_4640
resize_conv_2d_3_4642
conv_2d_31_4708
conv_2d_31_4710
conv_2d_31_4712
conv_2d_31_4714
identity¢"conv_2d_16/StatefulPartitionedCall¢"conv_2d_17/StatefulPartitionedCall¢"conv_2d_18/StatefulPartitionedCall¢"conv_2d_31/StatefulPartitionedCall¢"residual_5/StatefulPartitionedCall¢"residual_6/StatefulPartitionedCall¢"residual_7/StatefulPartitionedCall¢"residual_8/StatefulPartitionedCall¢"residual_9/StatefulPartitionedCall¢(resize_conv_2d_2/StatefulPartitionedCall¢(resize_conv_2d_3/StatefulPartitionedCallË
"conv_2d_16/StatefulPartitionedCallStatefulPartitionedCallinput_1conv_2d_16_3670conv_2d_16_3672conv_2d_16_3674conv_2d_16_3676*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv_2d_16_layer_call_and_return_conditional_losses_36552$
"conv_2d_16/StatefulPartitionedCallï
"conv_2d_17/StatefulPartitionedCallStatefulPartitionedCall+conv_2d_16/StatefulPartitionedCall:output:0conv_2d_17_3743conv_2d_17_3745conv_2d_17_3747conv_2d_17_3749*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv_2d_17_layer_call_and_return_conditional_losses_37282$
"conv_2d_17/StatefulPartitionedCallð
"conv_2d_18/StatefulPartitionedCallStatefulPartitionedCall+conv_2d_17/StatefulPartitionedCall:output:0conv_2d_18_3816conv_2d_18_3818conv_2d_18_3820conv_2d_18_3822*
Tin	
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv_2d_18_layer_call_and_return_conditional_losses_38012$
"conv_2d_18/StatefulPartitionedCall»
"residual_5/StatefulPartitionedCallStatefulPartitionedCall+conv_2d_18/StatefulPartitionedCall:output:0residual_5_3942residual_5_3944residual_5_3946residual_5_3948residual_5_3950residual_5_3952residual_5_3954residual_5_3956*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_5_layer_call_and_return_conditional_losses_39192$
"residual_5/StatefulPartitionedCall»
"residual_6/StatefulPartitionedCallStatefulPartitionedCall+residual_5/StatefulPartitionedCall:output:0residual_6_4076residual_6_4078residual_6_4080residual_6_4082residual_6_4084residual_6_4086residual_6_4088residual_6_4090*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_6_layer_call_and_return_conditional_losses_40532$
"residual_6/StatefulPartitionedCall»
"residual_7/StatefulPartitionedCallStatefulPartitionedCall+residual_6/StatefulPartitionedCall:output:0residual_7_4210residual_7_4212residual_7_4214residual_7_4216residual_7_4218residual_7_4220residual_7_4222residual_7_4224*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_7_layer_call_and_return_conditional_losses_41872$
"residual_7/StatefulPartitionedCall»
"residual_8/StatefulPartitionedCallStatefulPartitionedCall+residual_7/StatefulPartitionedCall:output:0residual_8_4344residual_8_4346residual_8_4348residual_8_4350residual_8_4352residual_8_4354residual_8_4356residual_8_4358*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_8_layer_call_and_return_conditional_losses_43212$
"residual_8/StatefulPartitionedCall»
"residual_9/StatefulPartitionedCallStatefulPartitionedCall+residual_8/StatefulPartitionedCall:output:0residual_9_4478residual_9_4480residual_9_4482residual_9_4484residual_9_4486residual_9_4488residual_9_4490residual_9_4492*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_9_layer_call_and_return_conditional_losses_44552$
"residual_9/StatefulPartitionedCall
(resize_conv_2d_2/StatefulPartitionedCallStatefulPartitionedCall+residual_9/StatefulPartitionedCall:output:0resize_conv_2d_2_4561resize_conv_2d_2_4563resize_conv_2d_2_4565resize_conv_2d_2_4567*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_resize_conv_2d_2_layer_call_and_return_conditional_losses_45462*
(resize_conv_2d_2/StatefulPartitionedCall
(resize_conv_2d_3/StatefulPartitionedCallStatefulPartitionedCall1resize_conv_2d_2/StatefulPartitionedCall:output:0resize_conv_2d_3_4636resize_conv_2d_3_4638resize_conv_2d_3_4640resize_conv_2d_3_4642*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_resize_conv_2d_3_layer_call_and_return_conditional_losses_46212*
(resize_conv_2d_3/StatefulPartitionedCallõ
"conv_2d_31/StatefulPartitionedCallStatefulPartitionedCall1resize_conv_2d_3/StatefulPartitionedCall:output:0conv_2d_31_4708conv_2d_31_4710conv_2d_31_4712conv_2d_31_4714*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv_2d_31_layer_call_and_return_conditional_losses_46932$
"conv_2d_31/StatefulPartitionedCall}
TanhTanh+conv_2d_31/StatefulPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2
Tanh
IdentityIdentityTanh:y:0#^conv_2d_16/StatefulPartitionedCall#^conv_2d_17/StatefulPartitionedCall#^conv_2d_18/StatefulPartitionedCall#^conv_2d_31/StatefulPartitionedCall#^residual_5/StatefulPartitionedCall#^residual_6/StatefulPartitionedCall#^residual_7/StatefulPartitionedCall#^residual_8/StatefulPartitionedCall#^residual_9/StatefulPartitionedCall)^resize_conv_2d_2/StatefulPartitionedCall)^resize_conv_2d_3/StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*
_input_shapes
ý:ÿÿÿÿÿÿÿÿÿèè::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2H
"conv_2d_16/StatefulPartitionedCall"conv_2d_16/StatefulPartitionedCall2H
"conv_2d_17/StatefulPartitionedCall"conv_2d_17/StatefulPartitionedCall2H
"conv_2d_18/StatefulPartitionedCall"conv_2d_18/StatefulPartitionedCall2H
"conv_2d_31/StatefulPartitionedCall"conv_2d_31/StatefulPartitionedCall2H
"residual_5/StatefulPartitionedCall"residual_5/StatefulPartitionedCall2H
"residual_6/StatefulPartitionedCall"residual_6/StatefulPartitionedCall2H
"residual_7/StatefulPartitionedCall"residual_7/StatefulPartitionedCall2H
"residual_8/StatefulPartitionedCall"residual_8/StatefulPartitionedCall2H
"residual_9/StatefulPartitionedCall"residual_9/StatefulPartitionedCall2T
(resize_conv_2d_2/StatefulPartitionedCall(resize_conv_2d_2/StatefulPartitionedCall2T
(resize_conv_2d_3/StatefulPartitionedCall(resize_conv_2d_3/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè
!
_user_specified_name	input_1:$ 

_output_shapes

::$ 

_output_shapes

::$	 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$! 

_output_shapes

::$% 

_output_shapes

::$) 

_output_shapes

::$- 

_output_shapes

::$1 

_output_shapes

::$5 

_output_shapes

::$9 

_output_shapes

::$= 

_output_shapes

:
ð
Ú
-__inference_feed_forward_1_layer_call_fn_4853
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40

unknown_41

unknown_42

unknown_43

unknown_44

unknown_45

unknown_46

unknown_47

unknown_48

unknown_49

unknown_50

unknown_51

unknown_52

unknown_53

unknown_54

unknown_55

unknown_56

unknown_57

unknown_58

unknown_59

unknown_60

unknown_61

unknown_62
identity¢StatefulPartitionedCallÑ	
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60
unknown_61
unknown_62*L
TinE
C2A*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*R
_read_only_resource_inputs4
20
 "#$&'(*+,./0234678:;<>?@*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_feed_forward_1_layer_call_and_return_conditional_losses_47192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*
_input_shapes
ý:ÿÿÿÿÿÿÿÿÿèè::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè
!
_user_specified_name	input_1:$ 

_output_shapes

::$ 

_output_shapes

::$	 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$! 

_output_shapes

::$% 

_output_shapes

::$) 

_output_shapes

::$- 

_output_shapes

::$1 

_output_shapes

::$5 

_output_shapes

::$9 

_output_shapes

::$= 

_output_shapes

:
·

D__inference_residual_5_layer_call_and_return_conditional_losses_5268

inputs!
conv_2d_19_mirrorpad_paddings7
3conv_2d_19_conv2d_19_conv2d_readvariableop_resourceH
Dconv_2d_19_instance_normalization_21_reshape_readvariableop_resourceJ
Fconv_2d_19_instance_normalization_21_reshape_1_readvariableop_resource!
conv_2d_20_mirrorpad_paddings7
3conv_2d_20_conv2d_20_conv2d_readvariableop_resourceH
Dconv_2d_20_instance_normalization_22_reshape_readvariableop_resourceJ
Fconv_2d_20_instance_normalization_22_reshape_1_readvariableop_resource
identity¢*conv_2d_19/conv2d_19/Conv2D/ReadVariableOp¢;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp¢=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp¢*conv_2d_20/conv2d_20/Conv2D/ReadVariableOp¢;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp¢=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp°
conv_2d_19/MirrorPad	MirrorPadinputsconv_2d_19_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_19/MirrorPadÖ
*conv_2d_19/conv2d_19/Conv2D/ReadVariableOpReadVariableOp3conv_2d_19_conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_19/conv2d_19/Conv2D/ReadVariableOpý
conv_2d_19/conv2d_19/Conv2DConv2Dconv_2d_19/MirrorPad:output:02conv_2d_19/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_19/conv2d_19/Conv2D¬
*conv_2d_19/instance_normalization_21/ShapeShape$conv_2d_19/conv2d_19/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_19/instance_normalization_21/Shape¾
8conv_2d_19/instance_normalization_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_19/instance_normalization_21/strided_slice/stackÂ
:conv_2d_19/instance_normalization_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice/stack_1Â
:conv_2d_19/instance_normalization_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice/stack_2À
2conv_2d_19/instance_normalization_21/strided_sliceStridedSlice3conv_2d_19/instance_normalization_21/Shape:output:0Aconv_2d_19/instance_normalization_21/strided_slice/stack:output:0Cconv_2d_19/instance_normalization_21/strided_slice/stack_1:output:0Cconv_2d_19/instance_normalization_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_19/instance_normalization_21/strided_sliceÂ
:conv_2d_19/instance_normalization_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice_1/stackÆ
<conv_2d_19/instance_normalization_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_1/stack_1Æ
<conv_2d_19/instance_normalization_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_1/stack_2Ê
4conv_2d_19/instance_normalization_21/strided_slice_1StridedSlice3conv_2d_19/instance_normalization_21/Shape:output:0Cconv_2d_19/instance_normalization_21/strided_slice_1/stack:output:0Econv_2d_19/instance_normalization_21/strided_slice_1/stack_1:output:0Econv_2d_19/instance_normalization_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_19/instance_normalization_21/strided_slice_1Â
:conv_2d_19/instance_normalization_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice_2/stackÆ
<conv_2d_19/instance_normalization_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_2/stack_1Æ
<conv_2d_19/instance_normalization_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_2/stack_2Ê
4conv_2d_19/instance_normalization_21/strided_slice_2StridedSlice3conv_2d_19/instance_normalization_21/Shape:output:0Cconv_2d_19/instance_normalization_21/strided_slice_2/stack:output:0Econv_2d_19/instance_normalization_21/strided_slice_2/stack_1:output:0Econv_2d_19/instance_normalization_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_19/instance_normalization_21/strided_slice_2Â
:conv_2d_19/instance_normalization_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice_3/stackÆ
<conv_2d_19/instance_normalization_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_3/stack_1Æ
<conv_2d_19/instance_normalization_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_3/stack_2Ê
4conv_2d_19/instance_normalization_21/strided_slice_3StridedSlice3conv_2d_19/instance_normalization_21/Shape:output:0Cconv_2d_19/instance_normalization_21/strided_slice_3/stack:output:0Econv_2d_19/instance_normalization_21/strided_slice_3/stack_1:output:0Econv_2d_19/instance_normalization_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_19/instance_normalization_21/strided_slice_3Û
Cconv_2d_19/instance_normalization_21/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_19/instance_normalization_21/moments/mean/reduction_indices®
1conv_2d_19/instance_normalization_21/moments/meanMean$conv_2d_19/conv2d_19/Conv2D:output:0Lconv_2d_19/instance_normalization_21/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_19/instance_normalization_21/moments/meaný
9conv_2d_19/instance_normalization_21/moments/StopGradientStopGradient:conv_2d_19/instance_normalization_21/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_19/instance_normalization_21/moments/StopGradient¼
>conv_2d_19/instance_normalization_21/moments/SquaredDifferenceSquaredDifference$conv_2d_19/conv2d_19/Conv2D:output:0Bconv_2d_19/instance_normalization_21/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_19/instance_normalization_21/moments/SquaredDifferenceã
Gconv_2d_19/instance_normalization_21/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_19/instance_normalization_21/moments/variance/reduction_indicesØ
5conv_2d_19/instance_normalization_21/moments/varianceMeanBconv_2d_19/instance_normalization_21/moments/SquaredDifference:z:0Pconv_2d_19/instance_normalization_21/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_19/instance_normalization_21/moments/varianceü
;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOpReadVariableOpDconv_2d_19_instance_normalization_21_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOpÁ
2conv_2d_19/instance_normalization_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_19/instance_normalization_21/Reshape/shape
,conv_2d_19/instance_normalization_21/ReshapeReshapeCconv_2d_19/instance_normalization_21/Reshape/ReadVariableOp:value:0;conv_2d_19/instance_normalization_21/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_19/instance_normalization_21/Reshape
=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_19_instance_normalization_21_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOpÅ
4conv_2d_19/instance_normalization_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_19/instance_normalization_21/Reshape_1/shape£
.conv_2d_19/instance_normalization_21/Reshape_1ReshapeEconv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp:value:0=conv_2d_19/instance_normalization_21/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_19/instance_normalization_21/Reshape_1±
4conv_2d_19/instance_normalization_21/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_19/instance_normalization_21/batchnorm/add/y«
2conv_2d_19/instance_normalization_21/batchnorm/addAddV2>conv_2d_19/instance_normalization_21/moments/variance:output:0=conv_2d_19/instance_normalization_21/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_19/instance_normalization_21/batchnorm/addè
4conv_2d_19/instance_normalization_21/batchnorm/RsqrtRsqrt6conv_2d_19/instance_normalization_21/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_19/instance_normalization_21/batchnorm/Rsqrt
2conv_2d_19/instance_normalization_21/batchnorm/mulMul8conv_2d_19/instance_normalization_21/batchnorm/Rsqrt:y:05conv_2d_19/instance_normalization_21/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_19/instance_normalization_21/batchnorm/mul
4conv_2d_19/instance_normalization_21/batchnorm/mul_1Mul$conv_2d_19/conv2d_19/Conv2D:output:06conv_2d_19/instance_normalization_21/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_19/instance_normalization_21/batchnorm/mul_1¢
4conv_2d_19/instance_normalization_21/batchnorm/mul_2Mul:conv_2d_19/instance_normalization_21/moments/mean:output:06conv_2d_19/instance_normalization_21/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_19/instance_normalization_21/batchnorm/mul_2
2conv_2d_19/instance_normalization_21/batchnorm/subSub7conv_2d_19/instance_normalization_21/Reshape_1:output:08conv_2d_19/instance_normalization_21/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_19/instance_normalization_21/batchnorm/sub¤
4conv_2d_19/instance_normalization_21/batchnorm/add_1AddV28conv_2d_19/instance_normalization_21/batchnorm/mul_1:z:06conv_2d_19/instance_normalization_21/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_19/instance_normalization_21/batchnorm/add_1¡
conv_2d_19/ReluRelu8conv_2d_19/instance_normalization_21/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_19/ReluÇ
conv_2d_20/MirrorPad	MirrorPadconv_2d_19/Relu:activations:0conv_2d_20_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_20/MirrorPadÖ
*conv_2d_20/conv2d_20/Conv2D/ReadVariableOpReadVariableOp3conv_2d_20_conv2d_20_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_20/conv2d_20/Conv2D/ReadVariableOpý
conv_2d_20/conv2d_20/Conv2DConv2Dconv_2d_20/MirrorPad:output:02conv_2d_20/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_20/conv2d_20/Conv2D¬
*conv_2d_20/instance_normalization_22/ShapeShape$conv_2d_20/conv2d_20/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_20/instance_normalization_22/Shape¾
8conv_2d_20/instance_normalization_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_20/instance_normalization_22/strided_slice/stackÂ
:conv_2d_20/instance_normalization_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice/stack_1Â
:conv_2d_20/instance_normalization_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice/stack_2À
2conv_2d_20/instance_normalization_22/strided_sliceStridedSlice3conv_2d_20/instance_normalization_22/Shape:output:0Aconv_2d_20/instance_normalization_22/strided_slice/stack:output:0Cconv_2d_20/instance_normalization_22/strided_slice/stack_1:output:0Cconv_2d_20/instance_normalization_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_20/instance_normalization_22/strided_sliceÂ
:conv_2d_20/instance_normalization_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice_1/stackÆ
<conv_2d_20/instance_normalization_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_1/stack_1Æ
<conv_2d_20/instance_normalization_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_1/stack_2Ê
4conv_2d_20/instance_normalization_22/strided_slice_1StridedSlice3conv_2d_20/instance_normalization_22/Shape:output:0Cconv_2d_20/instance_normalization_22/strided_slice_1/stack:output:0Econv_2d_20/instance_normalization_22/strided_slice_1/stack_1:output:0Econv_2d_20/instance_normalization_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_20/instance_normalization_22/strided_slice_1Â
:conv_2d_20/instance_normalization_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice_2/stackÆ
<conv_2d_20/instance_normalization_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_2/stack_1Æ
<conv_2d_20/instance_normalization_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_2/stack_2Ê
4conv_2d_20/instance_normalization_22/strided_slice_2StridedSlice3conv_2d_20/instance_normalization_22/Shape:output:0Cconv_2d_20/instance_normalization_22/strided_slice_2/stack:output:0Econv_2d_20/instance_normalization_22/strided_slice_2/stack_1:output:0Econv_2d_20/instance_normalization_22/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_20/instance_normalization_22/strided_slice_2Â
:conv_2d_20/instance_normalization_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice_3/stackÆ
<conv_2d_20/instance_normalization_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_3/stack_1Æ
<conv_2d_20/instance_normalization_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_3/stack_2Ê
4conv_2d_20/instance_normalization_22/strided_slice_3StridedSlice3conv_2d_20/instance_normalization_22/Shape:output:0Cconv_2d_20/instance_normalization_22/strided_slice_3/stack:output:0Econv_2d_20/instance_normalization_22/strided_slice_3/stack_1:output:0Econv_2d_20/instance_normalization_22/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_20/instance_normalization_22/strided_slice_3Û
Cconv_2d_20/instance_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_20/instance_normalization_22/moments/mean/reduction_indices®
1conv_2d_20/instance_normalization_22/moments/meanMean$conv_2d_20/conv2d_20/Conv2D:output:0Lconv_2d_20/instance_normalization_22/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_20/instance_normalization_22/moments/meaný
9conv_2d_20/instance_normalization_22/moments/StopGradientStopGradient:conv_2d_20/instance_normalization_22/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_20/instance_normalization_22/moments/StopGradient¼
>conv_2d_20/instance_normalization_22/moments/SquaredDifferenceSquaredDifference$conv_2d_20/conv2d_20/Conv2D:output:0Bconv_2d_20/instance_normalization_22/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_20/instance_normalization_22/moments/SquaredDifferenceã
Gconv_2d_20/instance_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_20/instance_normalization_22/moments/variance/reduction_indicesØ
5conv_2d_20/instance_normalization_22/moments/varianceMeanBconv_2d_20/instance_normalization_22/moments/SquaredDifference:z:0Pconv_2d_20/instance_normalization_22/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_20/instance_normalization_22/moments/varianceü
;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOpReadVariableOpDconv_2d_20_instance_normalization_22_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOpÁ
2conv_2d_20/instance_normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_20/instance_normalization_22/Reshape/shape
,conv_2d_20/instance_normalization_22/ReshapeReshapeCconv_2d_20/instance_normalization_22/Reshape/ReadVariableOp:value:0;conv_2d_20/instance_normalization_22/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_20/instance_normalization_22/Reshape
=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_20_instance_normalization_22_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOpÅ
4conv_2d_20/instance_normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_20/instance_normalization_22/Reshape_1/shape£
.conv_2d_20/instance_normalization_22/Reshape_1ReshapeEconv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp:value:0=conv_2d_20/instance_normalization_22/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_20/instance_normalization_22/Reshape_1±
4conv_2d_20/instance_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_20/instance_normalization_22/batchnorm/add/y«
2conv_2d_20/instance_normalization_22/batchnorm/addAddV2>conv_2d_20/instance_normalization_22/moments/variance:output:0=conv_2d_20/instance_normalization_22/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_20/instance_normalization_22/batchnorm/addè
4conv_2d_20/instance_normalization_22/batchnorm/RsqrtRsqrt6conv_2d_20/instance_normalization_22/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_20/instance_normalization_22/batchnorm/Rsqrt
2conv_2d_20/instance_normalization_22/batchnorm/mulMul8conv_2d_20/instance_normalization_22/batchnorm/Rsqrt:y:05conv_2d_20/instance_normalization_22/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_20/instance_normalization_22/batchnorm/mul
4conv_2d_20/instance_normalization_22/batchnorm/mul_1Mul$conv_2d_20/conv2d_20/Conv2D:output:06conv_2d_20/instance_normalization_22/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_20/instance_normalization_22/batchnorm/mul_1¢
4conv_2d_20/instance_normalization_22/batchnorm/mul_2Mul:conv_2d_20/instance_normalization_22/moments/mean:output:06conv_2d_20/instance_normalization_22/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_20/instance_normalization_22/batchnorm/mul_2
2conv_2d_20/instance_normalization_22/batchnorm/subSub7conv_2d_20/instance_normalization_22/Reshape_1:output:08conv_2d_20/instance_normalization_22/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_20/instance_normalization_22/batchnorm/sub¤
4conv_2d_20/instance_normalization_22/batchnorm/add_1AddV28conv_2d_20/instance_normalization_22/batchnorm/mul_1:z:06conv_2d_20/instance_normalization_22/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_20/instance_normalization_22/batchnorm/add_1
addAddV2inputs8conv_2d_20/instance_normalization_22/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_19/conv2d_19/Conv2D/ReadVariableOp<^conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp>^conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp+^conv_2d_20/conv2d_20/Conv2D/ReadVariableOp<^conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp>^conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_19/conv2d_19/Conv2D/ReadVariableOp*conv_2d_19/conv2d_19/Conv2D/ReadVariableOp2z
;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp2~
=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp2X
*conv_2d_20/conv2d_20/Conv2D/ReadVariableOp*conv_2d_20/conv2d_20/Conv2D/ReadVariableOp2z
;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp2~
=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
²0
ò
S__inference_instance_normalization_20_layer_call_and_return_conditional_losses_2890

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ

8__inference_instance_normalization_18_layer_call_fn_2792

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_18_layer_call_and_return_conditional_losses_27822
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¨P
³
D__inference_conv_2d_16_layer_call_and_return_conditional_losses_3655

inputs
mirrorpad_paddings,
(conv2d_16_conv2d_readvariableop_resource=
9instance_normalization_18_reshape_readvariableop_resource?
;instance_normalization_18_reshape_1_readvariableop_resource
identity¢conv2d_16/Conv2D/ReadVariableOp¢0instance_normalization_18/Reshape/ReadVariableOp¢2instance_normalization_18/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð*
mode	REFLECT2
	MirrorPad³
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_16/Conv2D/ReadVariableOpÐ
conv2d_16/Conv2DConv2DMirrorPad:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2
conv2d_16/Conv2D
instance_normalization_18/ShapeShapeconv2d_16/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_18/Shape¨
-instance_normalization_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_18/strided_slice/stack¬
/instance_normalization_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice/stack_1¬
/instance_normalization_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice/stack_2þ
'instance_normalization_18/strided_sliceStridedSlice(instance_normalization_18/Shape:output:06instance_normalization_18/strided_slice/stack:output:08instance_normalization_18/strided_slice/stack_1:output:08instance_normalization_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_18/strided_slice¬
/instance_normalization_18/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice_1/stack°
1instance_normalization_18/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_1/stack_1°
1instance_normalization_18/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_1/stack_2
)instance_normalization_18/strided_slice_1StridedSlice(instance_normalization_18/Shape:output:08instance_normalization_18/strided_slice_1/stack:output:0:instance_normalization_18/strided_slice_1/stack_1:output:0:instance_normalization_18/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_18/strided_slice_1¬
/instance_normalization_18/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice_2/stack°
1instance_normalization_18/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_2/stack_1°
1instance_normalization_18/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_2/stack_2
)instance_normalization_18/strided_slice_2StridedSlice(instance_normalization_18/Shape:output:08instance_normalization_18/strided_slice_2/stack:output:0:instance_normalization_18/strided_slice_2/stack_1:output:0:instance_normalization_18/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_18/strided_slice_2¬
/instance_normalization_18/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_18/strided_slice_3/stack°
1instance_normalization_18/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_3/stack_1°
1instance_normalization_18/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_18/strided_slice_3/stack_2
)instance_normalization_18/strided_slice_3StridedSlice(instance_normalization_18/Shape:output:08instance_normalization_18/strided_slice_3/stack:output:0:instance_normalization_18/strided_slice_3/stack_1:output:0:instance_normalization_18/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_18/strided_slice_3Å
8instance_normalization_18/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_18/moments/mean/reduction_indices
&instance_normalization_18/moments/meanMeanconv2d_16/Conv2D:output:0Ainstance_normalization_18/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2(
&instance_normalization_18/moments/meanÛ
.instance_normalization_18/moments/StopGradientStopGradient/instance_normalization_18/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.instance_normalization_18/moments/StopGradient
3instance_normalization_18/moments/SquaredDifferenceSquaredDifferenceconv2d_16/Conv2D:output:07instance_normalization_18/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 25
3instance_normalization_18/moments/SquaredDifferenceÍ
<instance_normalization_18/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_18/moments/variance/reduction_indices«
*instance_normalization_18/moments/varianceMean7instance_normalization_18/moments/SquaredDifference:z:0Einstance_normalization_18/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2,
*instance_normalization_18/moments/varianceÚ
0instance_normalization_18/Reshape/ReadVariableOpReadVariableOp9instance_normalization_18_reshape_readvariableop_resource*
_output_shapes
: *
dtype022
0instance_normalization_18/Reshape/ReadVariableOp«
'instance_normalization_18/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'instance_normalization_18/Reshape/shapeî
!instance_normalization_18/ReshapeReshape8instance_normalization_18/Reshape/ReadVariableOp:value:00instance_normalization_18/Reshape/shape:output:0*
T0*&
_output_shapes
: 2#
!instance_normalization_18/Reshapeà
2instance_normalization_18/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_18_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype024
2instance_normalization_18/Reshape_1/ReadVariableOp¯
)instance_normalization_18/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2+
)instance_normalization_18/Reshape_1/shapeö
#instance_normalization_18/Reshape_1Reshape:instance_normalization_18/Reshape_1/ReadVariableOp:value:02instance_normalization_18/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2%
#instance_normalization_18/Reshape_1
)instance_normalization_18/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_18/batchnorm/add/yþ
'instance_normalization_18/batchnorm/addAddV23instance_normalization_18/moments/variance:output:02instance_normalization_18/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_18/batchnorm/addÆ
)instance_normalization_18/batchnorm/RsqrtRsqrt+instance_normalization_18/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)instance_normalization_18/batchnorm/Rsqrtî
'instance_normalization_18/batchnorm/mulMul-instance_normalization_18/batchnorm/Rsqrt:y:0*instance_normalization_18/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_18/batchnorm/mulá
)instance_normalization_18/batchnorm/mul_1Mulconv2d_16/Conv2D:output:0+instance_normalization_18/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2+
)instance_normalization_18/batchnorm/mul_1õ
)instance_normalization_18/batchnorm/mul_2Mul/instance_normalization_18/moments/mean:output:0+instance_normalization_18/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)instance_normalization_18/batchnorm/mul_2ð
'instance_normalization_18/batchnorm/subSub,instance_normalization_18/Reshape_1:output:0-instance_normalization_18/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_18/batchnorm/sub÷
)instance_normalization_18/batchnorm/add_1AddV2-instance_normalization_18/batchnorm/mul_1:z:0+instance_normalization_18/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2+
)instance_normalization_18/batchnorm/add_1
ReluRelu-instance_normalization_18/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2
Reluú
IdentityIdentityRelu:activations:0 ^conv2d_16/Conv2D/ReadVariableOp1^instance_normalization_18/Reshape/ReadVariableOp3^instance_normalization_18/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè::::2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2d
0instance_normalization_18/Reshape/ReadVariableOp0instance_normalization_18/Reshape/ReadVariableOp2h
2instance_normalization_18/Reshape_1/ReadVariableOp2instance_normalization_18/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè
 
_user_specified_nameinputs:$ 

_output_shapes

:
ê

8__inference_instance_normalization_24_layer_call_fn_3116

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_24_layer_call_and_return_conditional_losses_31062
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨P
³
D__inference_conv_2d_17_layer_call_and_return_conditional_losses_3728

inputs
mirrorpad_paddings,
(conv2d_17_conv2d_readvariableop_resource=
9instance_normalization_19_reshape_readvariableop_resource?
;instance_normalization_19_reshape_1_readvariableop_resource
identity¢conv2d_17/Conv2D/ReadVariableOp¢0instance_normalization_19/Reshape/ReadVariableOp¢2instance_normalization_19/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿêê *
mode	REFLECT2
	MirrorPad³
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_17/Conv2D/ReadVariableOpÐ
conv2d_17/Conv2DConv2DMirrorPad:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2
conv2d_17/Conv2D
instance_normalization_19/ShapeShapeconv2d_17/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_19/Shape¨
-instance_normalization_19/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_19/strided_slice/stack¬
/instance_normalization_19/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice/stack_1¬
/instance_normalization_19/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice/stack_2þ
'instance_normalization_19/strided_sliceStridedSlice(instance_normalization_19/Shape:output:06instance_normalization_19/strided_slice/stack:output:08instance_normalization_19/strided_slice/stack_1:output:08instance_normalization_19/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_19/strided_slice¬
/instance_normalization_19/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice_1/stack°
1instance_normalization_19/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_1/stack_1°
1instance_normalization_19/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_1/stack_2
)instance_normalization_19/strided_slice_1StridedSlice(instance_normalization_19/Shape:output:08instance_normalization_19/strided_slice_1/stack:output:0:instance_normalization_19/strided_slice_1/stack_1:output:0:instance_normalization_19/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_19/strided_slice_1¬
/instance_normalization_19/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice_2/stack°
1instance_normalization_19/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_2/stack_1°
1instance_normalization_19/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_2/stack_2
)instance_normalization_19/strided_slice_2StridedSlice(instance_normalization_19/Shape:output:08instance_normalization_19/strided_slice_2/stack:output:0:instance_normalization_19/strided_slice_2/stack_1:output:0:instance_normalization_19/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_19/strided_slice_2¬
/instance_normalization_19/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_19/strided_slice_3/stack°
1instance_normalization_19/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_3/stack_1°
1instance_normalization_19/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_19/strided_slice_3/stack_2
)instance_normalization_19/strided_slice_3StridedSlice(instance_normalization_19/Shape:output:08instance_normalization_19/strided_slice_3/stack:output:0:instance_normalization_19/strided_slice_3/stack_1:output:0:instance_normalization_19/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_19/strided_slice_3Å
8instance_normalization_19/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_19/moments/mean/reduction_indices
&instance_normalization_19/moments/meanMeanconv2d_17/Conv2D:output:0Ainstance_normalization_19/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2(
&instance_normalization_19/moments/meanÛ
.instance_normalization_19/moments/StopGradientStopGradient/instance_normalization_19/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.instance_normalization_19/moments/StopGradient
3instance_normalization_19/moments/SquaredDifferenceSquaredDifferenceconv2d_17/Conv2D:output:07instance_normalization_19/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@25
3instance_normalization_19/moments/SquaredDifferenceÍ
<instance_normalization_19/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_19/moments/variance/reduction_indices«
*instance_normalization_19/moments/varianceMean7instance_normalization_19/moments/SquaredDifference:z:0Einstance_normalization_19/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2,
*instance_normalization_19/moments/varianceÚ
0instance_normalization_19/Reshape/ReadVariableOpReadVariableOp9instance_normalization_19_reshape_readvariableop_resource*
_output_shapes
:@*
dtype022
0instance_normalization_19/Reshape/ReadVariableOp«
'instance_normalization_19/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2)
'instance_normalization_19/Reshape/shapeî
!instance_normalization_19/ReshapeReshape8instance_normalization_19/Reshape/ReadVariableOp:value:00instance_normalization_19/Reshape/shape:output:0*
T0*&
_output_shapes
:@2#
!instance_normalization_19/Reshapeà
2instance_normalization_19/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_19_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype024
2instance_normalization_19/Reshape_1/ReadVariableOp¯
)instance_normalization_19/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2+
)instance_normalization_19/Reshape_1/shapeö
#instance_normalization_19/Reshape_1Reshape:instance_normalization_19/Reshape_1/ReadVariableOp:value:02instance_normalization_19/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2%
#instance_normalization_19/Reshape_1
)instance_normalization_19/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_19/batchnorm/add/yþ
'instance_normalization_19/batchnorm/addAddV23instance_normalization_19/moments/variance:output:02instance_normalization_19/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_19/batchnorm/addÆ
)instance_normalization_19/batchnorm/RsqrtRsqrt+instance_normalization_19/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)instance_normalization_19/batchnorm/Rsqrtî
'instance_normalization_19/batchnorm/mulMul-instance_normalization_19/batchnorm/Rsqrt:y:0*instance_normalization_19/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_19/batchnorm/mulá
)instance_normalization_19/batchnorm/mul_1Mulconv2d_17/Conv2D:output:0+instance_normalization_19/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2+
)instance_normalization_19/batchnorm/mul_1õ
)instance_normalization_19/batchnorm/mul_2Mul/instance_normalization_19/moments/mean:output:0+instance_normalization_19/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)instance_normalization_19/batchnorm/mul_2ð
'instance_normalization_19/batchnorm/subSub,instance_normalization_19/Reshape_1:output:0-instance_normalization_19/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_19/batchnorm/sub÷
)instance_normalization_19/batchnorm/add_1AddV2-instance_normalization_19/batchnorm/mul_1:z:0+instance_normalization_19/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2+
)instance_normalization_19/batchnorm/add_1
ReluRelu-instance_normalization_19/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2
Reluú
IdentityIdentityRelu:activations:0 ^conv2d_17/Conv2D/ReadVariableOp1^instance_normalization_19/Reshape/ReadVariableOp3^instance_normalization_19/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2d
0instance_normalization_19/Reshape/ReadVariableOp0instance_normalization_19/Reshape/ReadVariableOp2h
2instance_normalization_19/Reshape_1/ReadVariableOp2instance_normalization_19/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
ê

8__inference_instance_normalization_20_layer_call_fn_2900

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_20_layer_call_and_return_conditional_losses_28902
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²0
ò
S__inference_instance_normalization_30_layer_call_and_return_conditional_losses_3430

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢	
Ø
)__inference_residual_9_layer_call_fn_5749

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_9_layer_call_and_return_conditional_losses_44552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
ê

8__inference_instance_normalization_22_layer_call_fn_3008

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_22_layer_call_and_return_conditional_losses_29982
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê

8__inference_instance_normalization_29_layer_call_fn_3386

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_29_layer_call_and_return_conditional_losses_33762
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÂO
³
D__inference_conv_2d_31_layer_call_and_return_conditional_losses_5925

inputs
mirrorpad_paddings,
(conv2d_31_conv2d_readvariableop_resource=
9instance_normalization_35_reshape_readvariableop_resource?
;instance_normalization_35_reshape_1_readvariableop_resource
identity¢conv2d_31/Conv2D/ReadVariableOp¢0instance_normalization_35/Reshape/ReadVariableOp¢2instance_normalization_35/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð *
mode	REFLECT2
	MirrorPad³
conv2d_31/Conv2D/ReadVariableOpReadVariableOp(conv2d_31_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_31/Conv2D/ReadVariableOpÐ
conv2d_31/Conv2DConv2DMirrorPad:output:0'conv2d_31/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*
paddingVALID*
strides
2
conv2d_31/Conv2D
instance_normalization_35/ShapeShapeconv2d_31/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_35/Shape¨
-instance_normalization_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_35/strided_slice/stack¬
/instance_normalization_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice/stack_1¬
/instance_normalization_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice/stack_2þ
'instance_normalization_35/strided_sliceStridedSlice(instance_normalization_35/Shape:output:06instance_normalization_35/strided_slice/stack:output:08instance_normalization_35/strided_slice/stack_1:output:08instance_normalization_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_35/strided_slice¬
/instance_normalization_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice_1/stack°
1instance_normalization_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_1/stack_1°
1instance_normalization_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_1/stack_2
)instance_normalization_35/strided_slice_1StridedSlice(instance_normalization_35/Shape:output:08instance_normalization_35/strided_slice_1/stack:output:0:instance_normalization_35/strided_slice_1/stack_1:output:0:instance_normalization_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_35/strided_slice_1¬
/instance_normalization_35/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice_2/stack°
1instance_normalization_35/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_2/stack_1°
1instance_normalization_35/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_2/stack_2
)instance_normalization_35/strided_slice_2StridedSlice(instance_normalization_35/Shape:output:08instance_normalization_35/strided_slice_2/stack:output:0:instance_normalization_35/strided_slice_2/stack_1:output:0:instance_normalization_35/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_35/strided_slice_2¬
/instance_normalization_35/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_35/strided_slice_3/stack°
1instance_normalization_35/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_3/stack_1°
1instance_normalization_35/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_35/strided_slice_3/stack_2
)instance_normalization_35/strided_slice_3StridedSlice(instance_normalization_35/Shape:output:08instance_normalization_35/strided_slice_3/stack:output:0:instance_normalization_35/strided_slice_3/stack_1:output:0:instance_normalization_35/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_35/strided_slice_3Å
8instance_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_35/moments/mean/reduction_indices
&instance_normalization_35/moments/meanMeanconv2d_31/Conv2D:output:0Ainstance_normalization_35/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2(
&instance_normalization_35/moments/meanÛ
.instance_normalization_35/moments/StopGradientStopGradient/instance_normalization_35/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.instance_normalization_35/moments/StopGradient
3instance_normalization_35/moments/SquaredDifferenceSquaredDifferenceconv2d_31/Conv2D:output:07instance_normalization_35/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè25
3instance_normalization_35/moments/SquaredDifferenceÍ
<instance_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_35/moments/variance/reduction_indices«
*instance_normalization_35/moments/varianceMean7instance_normalization_35/moments/SquaredDifference:z:0Einstance_normalization_35/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2,
*instance_normalization_35/moments/varianceÚ
0instance_normalization_35/Reshape/ReadVariableOpReadVariableOp9instance_normalization_35_reshape_readvariableop_resource*
_output_shapes
:*
dtype022
0instance_normalization_35/Reshape/ReadVariableOp«
'instance_normalization_35/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'instance_normalization_35/Reshape/shapeî
!instance_normalization_35/ReshapeReshape8instance_normalization_35/Reshape/ReadVariableOp:value:00instance_normalization_35/Reshape/shape:output:0*
T0*&
_output_shapes
:2#
!instance_normalization_35/Reshapeà
2instance_normalization_35/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_35_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype024
2instance_normalization_35/Reshape_1/ReadVariableOp¯
)instance_normalization_35/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)instance_normalization_35/Reshape_1/shapeö
#instance_normalization_35/Reshape_1Reshape:instance_normalization_35/Reshape_1/ReadVariableOp:value:02instance_normalization_35/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2%
#instance_normalization_35/Reshape_1
)instance_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_35/batchnorm/add/yþ
'instance_normalization_35/batchnorm/addAddV23instance_normalization_35/moments/variance:output:02instance_normalization_35/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_35/batchnorm/addÆ
)instance_normalization_35/batchnorm/RsqrtRsqrt+instance_normalization_35/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_35/batchnorm/Rsqrtî
'instance_normalization_35/batchnorm/mulMul-instance_normalization_35/batchnorm/Rsqrt:y:0*instance_normalization_35/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_35/batchnorm/mulá
)instance_normalization_35/batchnorm/mul_1Mulconv2d_31/Conv2D:output:0+instance_normalization_35/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2+
)instance_normalization_35/batchnorm/mul_1õ
)instance_normalization_35/batchnorm/mul_2Mul/instance_normalization_35/moments/mean:output:0+instance_normalization_35/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_35/batchnorm/mul_2ð
'instance_normalization_35/batchnorm/subSub,instance_normalization_35/Reshape_1:output:0-instance_normalization_35/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_35/batchnorm/sub÷
)instance_normalization_35/batchnorm/add_1AddV2-instance_normalization_35/batchnorm/mul_1:z:0+instance_normalization_35/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2+
)instance_normalization_35/batchnorm/add_1
IdentityIdentity-instance_normalization_35/batchnorm/add_1:z:0 ^conv2d_31/Conv2D/ReadVariableOp1^instance_normalization_35/Reshape/ReadVariableOp3^instance_normalization_35/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::2B
conv2d_31/Conv2D/ReadVariableOpconv2d_31/Conv2D/ReadVariableOp2d
0instance_normalization_35/Reshape/ReadVariableOp0instance_normalization_35/Reshape/ReadVariableOp2h
2instance_normalization_35/Reshape_1/ReadVariableOp2instance_normalization_35/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
·

D__inference_residual_5_layer_call_and_return_conditional_losses_3919

inputs!
conv_2d_19_mirrorpad_paddings7
3conv_2d_19_conv2d_19_conv2d_readvariableop_resourceH
Dconv_2d_19_instance_normalization_21_reshape_readvariableop_resourceJ
Fconv_2d_19_instance_normalization_21_reshape_1_readvariableop_resource!
conv_2d_20_mirrorpad_paddings7
3conv_2d_20_conv2d_20_conv2d_readvariableop_resourceH
Dconv_2d_20_instance_normalization_22_reshape_readvariableop_resourceJ
Fconv_2d_20_instance_normalization_22_reshape_1_readvariableop_resource
identity¢*conv_2d_19/conv2d_19/Conv2D/ReadVariableOp¢;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp¢=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp¢*conv_2d_20/conv2d_20/Conv2D/ReadVariableOp¢;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp¢=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp°
conv_2d_19/MirrorPad	MirrorPadinputsconv_2d_19_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_19/MirrorPadÖ
*conv_2d_19/conv2d_19/Conv2D/ReadVariableOpReadVariableOp3conv_2d_19_conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_19/conv2d_19/Conv2D/ReadVariableOpý
conv_2d_19/conv2d_19/Conv2DConv2Dconv_2d_19/MirrorPad:output:02conv_2d_19/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_19/conv2d_19/Conv2D¬
*conv_2d_19/instance_normalization_21/ShapeShape$conv_2d_19/conv2d_19/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_19/instance_normalization_21/Shape¾
8conv_2d_19/instance_normalization_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_19/instance_normalization_21/strided_slice/stackÂ
:conv_2d_19/instance_normalization_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice/stack_1Â
:conv_2d_19/instance_normalization_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice/stack_2À
2conv_2d_19/instance_normalization_21/strided_sliceStridedSlice3conv_2d_19/instance_normalization_21/Shape:output:0Aconv_2d_19/instance_normalization_21/strided_slice/stack:output:0Cconv_2d_19/instance_normalization_21/strided_slice/stack_1:output:0Cconv_2d_19/instance_normalization_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_19/instance_normalization_21/strided_sliceÂ
:conv_2d_19/instance_normalization_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice_1/stackÆ
<conv_2d_19/instance_normalization_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_1/stack_1Æ
<conv_2d_19/instance_normalization_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_1/stack_2Ê
4conv_2d_19/instance_normalization_21/strided_slice_1StridedSlice3conv_2d_19/instance_normalization_21/Shape:output:0Cconv_2d_19/instance_normalization_21/strided_slice_1/stack:output:0Econv_2d_19/instance_normalization_21/strided_slice_1/stack_1:output:0Econv_2d_19/instance_normalization_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_19/instance_normalization_21/strided_slice_1Â
:conv_2d_19/instance_normalization_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice_2/stackÆ
<conv_2d_19/instance_normalization_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_2/stack_1Æ
<conv_2d_19/instance_normalization_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_2/stack_2Ê
4conv_2d_19/instance_normalization_21/strided_slice_2StridedSlice3conv_2d_19/instance_normalization_21/Shape:output:0Cconv_2d_19/instance_normalization_21/strided_slice_2/stack:output:0Econv_2d_19/instance_normalization_21/strided_slice_2/stack_1:output:0Econv_2d_19/instance_normalization_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_19/instance_normalization_21/strided_slice_2Â
:conv_2d_19/instance_normalization_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_19/instance_normalization_21/strided_slice_3/stackÆ
<conv_2d_19/instance_normalization_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_3/stack_1Æ
<conv_2d_19/instance_normalization_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_19/instance_normalization_21/strided_slice_3/stack_2Ê
4conv_2d_19/instance_normalization_21/strided_slice_3StridedSlice3conv_2d_19/instance_normalization_21/Shape:output:0Cconv_2d_19/instance_normalization_21/strided_slice_3/stack:output:0Econv_2d_19/instance_normalization_21/strided_slice_3/stack_1:output:0Econv_2d_19/instance_normalization_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_19/instance_normalization_21/strided_slice_3Û
Cconv_2d_19/instance_normalization_21/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_19/instance_normalization_21/moments/mean/reduction_indices®
1conv_2d_19/instance_normalization_21/moments/meanMean$conv_2d_19/conv2d_19/Conv2D:output:0Lconv_2d_19/instance_normalization_21/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_19/instance_normalization_21/moments/meaný
9conv_2d_19/instance_normalization_21/moments/StopGradientStopGradient:conv_2d_19/instance_normalization_21/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_19/instance_normalization_21/moments/StopGradient¼
>conv_2d_19/instance_normalization_21/moments/SquaredDifferenceSquaredDifference$conv_2d_19/conv2d_19/Conv2D:output:0Bconv_2d_19/instance_normalization_21/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_19/instance_normalization_21/moments/SquaredDifferenceã
Gconv_2d_19/instance_normalization_21/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_19/instance_normalization_21/moments/variance/reduction_indicesØ
5conv_2d_19/instance_normalization_21/moments/varianceMeanBconv_2d_19/instance_normalization_21/moments/SquaredDifference:z:0Pconv_2d_19/instance_normalization_21/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_19/instance_normalization_21/moments/varianceü
;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOpReadVariableOpDconv_2d_19_instance_normalization_21_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOpÁ
2conv_2d_19/instance_normalization_21/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_19/instance_normalization_21/Reshape/shape
,conv_2d_19/instance_normalization_21/ReshapeReshapeCconv_2d_19/instance_normalization_21/Reshape/ReadVariableOp:value:0;conv_2d_19/instance_normalization_21/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_19/instance_normalization_21/Reshape
=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_19_instance_normalization_21_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOpÅ
4conv_2d_19/instance_normalization_21/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_19/instance_normalization_21/Reshape_1/shape£
.conv_2d_19/instance_normalization_21/Reshape_1ReshapeEconv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp:value:0=conv_2d_19/instance_normalization_21/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_19/instance_normalization_21/Reshape_1±
4conv_2d_19/instance_normalization_21/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_19/instance_normalization_21/batchnorm/add/y«
2conv_2d_19/instance_normalization_21/batchnorm/addAddV2>conv_2d_19/instance_normalization_21/moments/variance:output:0=conv_2d_19/instance_normalization_21/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_19/instance_normalization_21/batchnorm/addè
4conv_2d_19/instance_normalization_21/batchnorm/RsqrtRsqrt6conv_2d_19/instance_normalization_21/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_19/instance_normalization_21/batchnorm/Rsqrt
2conv_2d_19/instance_normalization_21/batchnorm/mulMul8conv_2d_19/instance_normalization_21/batchnorm/Rsqrt:y:05conv_2d_19/instance_normalization_21/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_19/instance_normalization_21/batchnorm/mul
4conv_2d_19/instance_normalization_21/batchnorm/mul_1Mul$conv_2d_19/conv2d_19/Conv2D:output:06conv_2d_19/instance_normalization_21/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_19/instance_normalization_21/batchnorm/mul_1¢
4conv_2d_19/instance_normalization_21/batchnorm/mul_2Mul:conv_2d_19/instance_normalization_21/moments/mean:output:06conv_2d_19/instance_normalization_21/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_19/instance_normalization_21/batchnorm/mul_2
2conv_2d_19/instance_normalization_21/batchnorm/subSub7conv_2d_19/instance_normalization_21/Reshape_1:output:08conv_2d_19/instance_normalization_21/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_19/instance_normalization_21/batchnorm/sub¤
4conv_2d_19/instance_normalization_21/batchnorm/add_1AddV28conv_2d_19/instance_normalization_21/batchnorm/mul_1:z:06conv_2d_19/instance_normalization_21/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_19/instance_normalization_21/batchnorm/add_1¡
conv_2d_19/ReluRelu8conv_2d_19/instance_normalization_21/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_19/ReluÇ
conv_2d_20/MirrorPad	MirrorPadconv_2d_19/Relu:activations:0conv_2d_20_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_20/MirrorPadÖ
*conv_2d_20/conv2d_20/Conv2D/ReadVariableOpReadVariableOp3conv_2d_20_conv2d_20_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_20/conv2d_20/Conv2D/ReadVariableOpý
conv_2d_20/conv2d_20/Conv2DConv2Dconv_2d_20/MirrorPad:output:02conv_2d_20/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_20/conv2d_20/Conv2D¬
*conv_2d_20/instance_normalization_22/ShapeShape$conv_2d_20/conv2d_20/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_20/instance_normalization_22/Shape¾
8conv_2d_20/instance_normalization_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_20/instance_normalization_22/strided_slice/stackÂ
:conv_2d_20/instance_normalization_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice/stack_1Â
:conv_2d_20/instance_normalization_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice/stack_2À
2conv_2d_20/instance_normalization_22/strided_sliceStridedSlice3conv_2d_20/instance_normalization_22/Shape:output:0Aconv_2d_20/instance_normalization_22/strided_slice/stack:output:0Cconv_2d_20/instance_normalization_22/strided_slice/stack_1:output:0Cconv_2d_20/instance_normalization_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_20/instance_normalization_22/strided_sliceÂ
:conv_2d_20/instance_normalization_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice_1/stackÆ
<conv_2d_20/instance_normalization_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_1/stack_1Æ
<conv_2d_20/instance_normalization_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_1/stack_2Ê
4conv_2d_20/instance_normalization_22/strided_slice_1StridedSlice3conv_2d_20/instance_normalization_22/Shape:output:0Cconv_2d_20/instance_normalization_22/strided_slice_1/stack:output:0Econv_2d_20/instance_normalization_22/strided_slice_1/stack_1:output:0Econv_2d_20/instance_normalization_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_20/instance_normalization_22/strided_slice_1Â
:conv_2d_20/instance_normalization_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice_2/stackÆ
<conv_2d_20/instance_normalization_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_2/stack_1Æ
<conv_2d_20/instance_normalization_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_2/stack_2Ê
4conv_2d_20/instance_normalization_22/strided_slice_2StridedSlice3conv_2d_20/instance_normalization_22/Shape:output:0Cconv_2d_20/instance_normalization_22/strided_slice_2/stack:output:0Econv_2d_20/instance_normalization_22/strided_slice_2/stack_1:output:0Econv_2d_20/instance_normalization_22/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_20/instance_normalization_22/strided_slice_2Â
:conv_2d_20/instance_normalization_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_20/instance_normalization_22/strided_slice_3/stackÆ
<conv_2d_20/instance_normalization_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_3/stack_1Æ
<conv_2d_20/instance_normalization_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_20/instance_normalization_22/strided_slice_3/stack_2Ê
4conv_2d_20/instance_normalization_22/strided_slice_3StridedSlice3conv_2d_20/instance_normalization_22/Shape:output:0Cconv_2d_20/instance_normalization_22/strided_slice_3/stack:output:0Econv_2d_20/instance_normalization_22/strided_slice_3/stack_1:output:0Econv_2d_20/instance_normalization_22/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_20/instance_normalization_22/strided_slice_3Û
Cconv_2d_20/instance_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_20/instance_normalization_22/moments/mean/reduction_indices®
1conv_2d_20/instance_normalization_22/moments/meanMean$conv_2d_20/conv2d_20/Conv2D:output:0Lconv_2d_20/instance_normalization_22/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_20/instance_normalization_22/moments/meaný
9conv_2d_20/instance_normalization_22/moments/StopGradientStopGradient:conv_2d_20/instance_normalization_22/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_20/instance_normalization_22/moments/StopGradient¼
>conv_2d_20/instance_normalization_22/moments/SquaredDifferenceSquaredDifference$conv_2d_20/conv2d_20/Conv2D:output:0Bconv_2d_20/instance_normalization_22/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_20/instance_normalization_22/moments/SquaredDifferenceã
Gconv_2d_20/instance_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_20/instance_normalization_22/moments/variance/reduction_indicesØ
5conv_2d_20/instance_normalization_22/moments/varianceMeanBconv_2d_20/instance_normalization_22/moments/SquaredDifference:z:0Pconv_2d_20/instance_normalization_22/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_20/instance_normalization_22/moments/varianceü
;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOpReadVariableOpDconv_2d_20_instance_normalization_22_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOpÁ
2conv_2d_20/instance_normalization_22/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_20/instance_normalization_22/Reshape/shape
,conv_2d_20/instance_normalization_22/ReshapeReshapeCconv_2d_20/instance_normalization_22/Reshape/ReadVariableOp:value:0;conv_2d_20/instance_normalization_22/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_20/instance_normalization_22/Reshape
=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_20_instance_normalization_22_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOpÅ
4conv_2d_20/instance_normalization_22/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_20/instance_normalization_22/Reshape_1/shape£
.conv_2d_20/instance_normalization_22/Reshape_1ReshapeEconv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp:value:0=conv_2d_20/instance_normalization_22/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_20/instance_normalization_22/Reshape_1±
4conv_2d_20/instance_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_20/instance_normalization_22/batchnorm/add/y«
2conv_2d_20/instance_normalization_22/batchnorm/addAddV2>conv_2d_20/instance_normalization_22/moments/variance:output:0=conv_2d_20/instance_normalization_22/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_20/instance_normalization_22/batchnorm/addè
4conv_2d_20/instance_normalization_22/batchnorm/RsqrtRsqrt6conv_2d_20/instance_normalization_22/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_20/instance_normalization_22/batchnorm/Rsqrt
2conv_2d_20/instance_normalization_22/batchnorm/mulMul8conv_2d_20/instance_normalization_22/batchnorm/Rsqrt:y:05conv_2d_20/instance_normalization_22/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_20/instance_normalization_22/batchnorm/mul
4conv_2d_20/instance_normalization_22/batchnorm/mul_1Mul$conv_2d_20/conv2d_20/Conv2D:output:06conv_2d_20/instance_normalization_22/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_20/instance_normalization_22/batchnorm/mul_1¢
4conv_2d_20/instance_normalization_22/batchnorm/mul_2Mul:conv_2d_20/instance_normalization_22/moments/mean:output:06conv_2d_20/instance_normalization_22/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_20/instance_normalization_22/batchnorm/mul_2
2conv_2d_20/instance_normalization_22/batchnorm/subSub7conv_2d_20/instance_normalization_22/Reshape_1:output:08conv_2d_20/instance_normalization_22/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_20/instance_normalization_22/batchnorm/sub¤
4conv_2d_20/instance_normalization_22/batchnorm/add_1AddV28conv_2d_20/instance_normalization_22/batchnorm/mul_1:z:06conv_2d_20/instance_normalization_22/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_20/instance_normalization_22/batchnorm/add_1
addAddV2inputs8conv_2d_20/instance_normalization_22/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_19/conv2d_19/Conv2D/ReadVariableOp<^conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp>^conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp+^conv_2d_20/conv2d_20/Conv2D/ReadVariableOp<^conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp>^conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_19/conv2d_19/Conv2D/ReadVariableOp*conv_2d_19/conv2d_19/Conv2D/ReadVariableOp2z
;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp;conv_2d_19/instance_normalization_21/Reshape/ReadVariableOp2~
=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp=conv_2d_19/instance_normalization_21/Reshape_1/ReadVariableOp2X
*conv_2d_20/conv2d_20/Conv2D/ReadVariableOp*conv_2d_20/conv2d_20/Conv2D/ReadVariableOp2z
;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp;conv_2d_20/instance_normalization_22/Reshape/ReadVariableOp2~
=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp=conv_2d_20/instance_normalization_22/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
 0
ò
S__inference_instance_normalization_18_layer_call_and_return_conditional_losses_2782

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
moments/StopGradient¾
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÃ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes
: *
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*&
_output_shapes
: 2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/addx
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
batchnorm/add_1µ
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ê

8__inference_instance_normalization_25_layer_call_fn_3170

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_25_layer_call_and_return_conditional_losses_31602
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²0
ò
S__inference_instance_normalization_25_layer_call_and_return_conditional_losses_3160

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²0
ò
S__inference_instance_normalization_21_layer_call_and_return_conditional_losses_2944

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²0
ò
S__inference_instance_normalization_24_layer_call_and_return_conditional_losses_3106

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à_

J__inference_resize_conv_2d_3_layer_call_and_return_conditional_losses_4621

inputs!
conv_2d_30_mirrorpad_paddings7
3conv_2d_30_conv2d_30_conv2d_readvariableop_resourceH
Dconv_2d_30_instance_normalization_33_reshape_readvariableop_resourceJ
Fconv_2d_30_instance_normalization_33_reshape_1_readvariableop_resource
identity¢*conv_2d_30/conv2d_30/Conv2D/ReadVariableOp¢;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp¢=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOpk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Ð  Ð  2
resize/sizeÉ
resize/ResizeNearestNeighborResizeNearestNeighborinputsresize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐÐ@*
half_pixel_centers(2
resize/ResizeNearestNeighborÖ
conv_2d_30/MirrorPad	MirrorPad-resize/ResizeNearestNeighbor:resized_images:0conv_2d_30_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒÒ@*
mode	REFLECT2
conv_2d_30/MirrorPadÔ
*conv_2d_30/conv2d_30/Conv2D/ReadVariableOpReadVariableOp3conv_2d_30_conv2d_30_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02,
*conv_2d_30/conv2d_30/Conv2D/ReadVariableOpü
conv_2d_30/conv2d_30/Conv2DConv2Dconv_2d_30/MirrorPad:output:02conv_2d_30/conv2d_30/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2
conv_2d_30/conv2d_30/Conv2D¬
*conv_2d_30/instance_normalization_33/ShapeShape$conv_2d_30/conv2d_30/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_30/instance_normalization_33/Shape¾
8conv_2d_30/instance_normalization_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_30/instance_normalization_33/strided_slice/stackÂ
:conv_2d_30/instance_normalization_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice/stack_1Â
:conv_2d_30/instance_normalization_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice/stack_2À
2conv_2d_30/instance_normalization_33/strided_sliceStridedSlice3conv_2d_30/instance_normalization_33/Shape:output:0Aconv_2d_30/instance_normalization_33/strided_slice/stack:output:0Cconv_2d_30/instance_normalization_33/strided_slice/stack_1:output:0Cconv_2d_30/instance_normalization_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_30/instance_normalization_33/strided_sliceÂ
:conv_2d_30/instance_normalization_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice_1/stackÆ
<conv_2d_30/instance_normalization_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_1/stack_1Æ
<conv_2d_30/instance_normalization_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_1/stack_2Ê
4conv_2d_30/instance_normalization_33/strided_slice_1StridedSlice3conv_2d_30/instance_normalization_33/Shape:output:0Cconv_2d_30/instance_normalization_33/strided_slice_1/stack:output:0Econv_2d_30/instance_normalization_33/strided_slice_1/stack_1:output:0Econv_2d_30/instance_normalization_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_30/instance_normalization_33/strided_slice_1Â
:conv_2d_30/instance_normalization_33/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice_2/stackÆ
<conv_2d_30/instance_normalization_33/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_2/stack_1Æ
<conv_2d_30/instance_normalization_33/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_2/stack_2Ê
4conv_2d_30/instance_normalization_33/strided_slice_2StridedSlice3conv_2d_30/instance_normalization_33/Shape:output:0Cconv_2d_30/instance_normalization_33/strided_slice_2/stack:output:0Econv_2d_30/instance_normalization_33/strided_slice_2/stack_1:output:0Econv_2d_30/instance_normalization_33/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_30/instance_normalization_33/strided_slice_2Â
:conv_2d_30/instance_normalization_33/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_30/instance_normalization_33/strided_slice_3/stackÆ
<conv_2d_30/instance_normalization_33/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_3/stack_1Æ
<conv_2d_30/instance_normalization_33/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_30/instance_normalization_33/strided_slice_3/stack_2Ê
4conv_2d_30/instance_normalization_33/strided_slice_3StridedSlice3conv_2d_30/instance_normalization_33/Shape:output:0Cconv_2d_30/instance_normalization_33/strided_slice_3/stack:output:0Econv_2d_30/instance_normalization_33/strided_slice_3/stack_1:output:0Econv_2d_30/instance_normalization_33/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_30/instance_normalization_33/strided_slice_3Û
Cconv_2d_30/instance_normalization_33/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_30/instance_normalization_33/moments/mean/reduction_indices­
1conv_2d_30/instance_normalization_33/moments/meanMean$conv_2d_30/conv2d_30/Conv2D:output:0Lconv_2d_30/instance_normalization_33/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(23
1conv_2d_30/instance_normalization_33/moments/meanü
9conv_2d_30/instance_normalization_33/moments/StopGradientStopGradient:conv_2d_30/instance_normalization_33/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2;
9conv_2d_30/instance_normalization_33/moments/StopGradient»
>conv_2d_30/instance_normalization_33/moments/SquaredDifferenceSquaredDifference$conv_2d_30/conv2d_30/Conv2D:output:0Bconv_2d_30/instance_normalization_33/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2@
>conv_2d_30/instance_normalization_33/moments/SquaredDifferenceã
Gconv_2d_30/instance_normalization_33/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_30/instance_normalization_33/moments/variance/reduction_indices×
5conv_2d_30/instance_normalization_33/moments/varianceMeanBconv_2d_30/instance_normalization_33/moments/SquaredDifference:z:0Pconv_2d_30/instance_normalization_33/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(27
5conv_2d_30/instance_normalization_33/moments/varianceû
;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOpReadVariableOpDconv_2d_30_instance_normalization_33_reshape_readvariableop_resource*
_output_shapes
: *
dtype02=
;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOpÁ
2conv_2d_30/instance_normalization_33/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             24
2conv_2d_30/instance_normalization_33/Reshape/shape
,conv_2d_30/instance_normalization_33/ReshapeReshapeCconv_2d_30/instance_normalization_33/Reshape/ReadVariableOp:value:0;conv_2d_30/instance_normalization_33/Reshape/shape:output:0*
T0*&
_output_shapes
: 2.
,conv_2d_30/instance_normalization_33/Reshape
=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_30_instance_normalization_33_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02?
=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOpÅ
4conv_2d_30/instance_normalization_33/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             26
4conv_2d_30/instance_normalization_33/Reshape_1/shape¢
.conv_2d_30/instance_normalization_33/Reshape_1ReshapeEconv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp:value:0=conv_2d_30/instance_normalization_33/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 20
.conv_2d_30/instance_normalization_33/Reshape_1±
4conv_2d_30/instance_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_30/instance_normalization_33/batchnorm/add/yª
2conv_2d_30/instance_normalization_33/batchnorm/addAddV2>conv_2d_30/instance_normalization_33/moments/variance:output:0=conv_2d_30/instance_normalization_33/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_30/instance_normalization_33/batchnorm/addç
4conv_2d_30/instance_normalization_33/batchnorm/RsqrtRsqrt6conv_2d_30/instance_normalization_33/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4conv_2d_30/instance_normalization_33/batchnorm/Rsqrt
2conv_2d_30/instance_normalization_33/batchnorm/mulMul8conv_2d_30/instance_normalization_33/batchnorm/Rsqrt:y:05conv_2d_30/instance_normalization_33/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_30/instance_normalization_33/batchnorm/mul
4conv_2d_30/instance_normalization_33/batchnorm/mul_1Mul$conv_2d_30/conv2d_30/Conv2D:output:06conv_2d_30/instance_normalization_33/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 26
4conv_2d_30/instance_normalization_33/batchnorm/mul_1¡
4conv_2d_30/instance_normalization_33/batchnorm/mul_2Mul:conv_2d_30/instance_normalization_33/moments/mean:output:06conv_2d_30/instance_normalization_33/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4conv_2d_30/instance_normalization_33/batchnorm/mul_2
2conv_2d_30/instance_normalization_33/batchnorm/subSub7conv_2d_30/instance_normalization_33/Reshape_1:output:08conv_2d_30/instance_normalization_33/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_30/instance_normalization_33/batchnorm/sub£
4conv_2d_30/instance_normalization_33/batchnorm/add_1AddV28conv_2d_30/instance_normalization_33/batchnorm/mul_1:z:06conv_2d_30/instance_normalization_33/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 26
4conv_2d_30/instance_normalization_33/batchnorm/add_1 
conv_2d_30/ReluRelu8conv_2d_30/instance_normalization_33/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2
conv_2d_30/Relu¦
IdentityIdentityconv_2d_30/Relu:activations:0+^conv_2d_30/conv2d_30/Conv2D/ReadVariableOp<^conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp>^conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::2X
*conv_2d_30/conv2d_30/Conv2D/ReadVariableOp*conv_2d_30/conv2d_30/Conv2D/ReadVariableOp2z
;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp;conv_2d_30/instance_normalization_33/Reshape/ReadVariableOp2~
=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp=conv_2d_30/instance_normalization_33/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:

¢
/__inference_resize_conv_2d_2_layer_call_fn_5813

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_resize_conv_2d_2_layer_call_and_return_conditional_losses_45462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿúú::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

:
Õã
)
 __inference__traced_restore_6275
file_prefix?
;assignvariableop_feed_forward_1_conv_2d_16_conv2d_16_kernelP
Lassignvariableop_1_feed_forward_1_conv_2d_16_instance_normalization_18_gammaO
Kassignvariableop_2_feed_forward_1_conv_2d_16_instance_normalization_18_betaA
=assignvariableop_3_feed_forward_1_conv_2d_17_conv2d_17_kernelP
Lassignvariableop_4_feed_forward_1_conv_2d_17_instance_normalization_19_gammaO
Kassignvariableop_5_feed_forward_1_conv_2d_17_instance_normalization_19_betaA
=assignvariableop_6_feed_forward_1_conv_2d_18_conv2d_18_kernelP
Lassignvariableop_7_feed_forward_1_conv_2d_18_instance_normalization_20_gammaO
Kassignvariableop_8_feed_forward_1_conv_2d_18_instance_normalization_20_betaL
Hassignvariableop_9_feed_forward_1_residual_5_conv_2d_19_conv2d_19_kernel\
Xassignvariableop_10_feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_gamma[
Wassignvariableop_11_feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_betaM
Iassignvariableop_12_feed_forward_1_residual_5_conv_2d_20_conv2d_20_kernel\
Xassignvariableop_13_feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_gamma[
Wassignvariableop_14_feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_betaM
Iassignvariableop_15_feed_forward_1_residual_6_conv_2d_21_conv2d_21_kernel\
Xassignvariableop_16_feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_gamma[
Wassignvariableop_17_feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_betaM
Iassignvariableop_18_feed_forward_1_residual_6_conv_2d_22_conv2d_22_kernel\
Xassignvariableop_19_feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_gamma[
Wassignvariableop_20_feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_betaM
Iassignvariableop_21_feed_forward_1_residual_7_conv_2d_23_conv2d_23_kernel\
Xassignvariableop_22_feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_gamma[
Wassignvariableop_23_feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_betaM
Iassignvariableop_24_feed_forward_1_residual_7_conv_2d_24_conv2d_24_kernel\
Xassignvariableop_25_feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_gamma[
Wassignvariableop_26_feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_betaM
Iassignvariableop_27_feed_forward_1_residual_8_conv_2d_25_conv2d_25_kernel\
Xassignvariableop_28_feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_gamma[
Wassignvariableop_29_feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_betaM
Iassignvariableop_30_feed_forward_1_residual_8_conv_2d_26_conv2d_26_kernel\
Xassignvariableop_31_feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_gamma[
Wassignvariableop_32_feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_betaM
Iassignvariableop_33_feed_forward_1_residual_9_conv_2d_27_conv2d_27_kernel\
Xassignvariableop_34_feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_gamma[
Wassignvariableop_35_feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_betaM
Iassignvariableop_36_feed_forward_1_residual_9_conv_2d_28_conv2d_28_kernel\
Xassignvariableop_37_feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_gamma[
Wassignvariableop_38_feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_betaS
Oassignvariableop_39_feed_forward_1_resize_conv_2d_2_conv_2d_29_conv2d_29_kernelb
^assignvariableop_40_feed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_gammaa
]assignvariableop_41_feed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_betaS
Oassignvariableop_42_feed_forward_1_resize_conv_2d_3_conv_2d_30_conv2d_30_kernelb
^assignvariableop_43_feed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_gammaa
]assignvariableop_44_feed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_betaB
>assignvariableop_45_feed_forward_1_conv_2d_31_conv2d_31_kernelQ
Massignvariableop_46_feed_forward_1_conv_2d_31_instance_normalization_35_gammaP
Lassignvariableop_47_feed_forward_1_conv_2d_31_instance_normalization_35_beta
identity_49¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9­
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*¹
value¯B¬1B0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/30/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/31/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/32/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/33/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/34/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/35/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/36/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/37/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/38/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/39/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/40/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/41/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/42/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/43/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/44/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/45/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/46/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/47/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesð
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices£
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ú
_output_shapesÇ
Ä:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
3212
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityº
AssignVariableOpAssignVariableOp;assignvariableop_feed_forward_1_conv_2d_16_conv2d_16_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ñ
AssignVariableOp_1AssignVariableOpLassignvariableop_1_feed_forward_1_conv_2d_16_instance_normalization_18_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ð
AssignVariableOp_2AssignVariableOpKassignvariableop_2_feed_forward_1_conv_2d_16_instance_normalization_18_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Â
AssignVariableOp_3AssignVariableOp=assignvariableop_3_feed_forward_1_conv_2d_17_conv2d_17_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ñ
AssignVariableOp_4AssignVariableOpLassignvariableop_4_feed_forward_1_conv_2d_17_instance_normalization_19_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ð
AssignVariableOp_5AssignVariableOpKassignvariableop_5_feed_forward_1_conv_2d_17_instance_normalization_19_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Â
AssignVariableOp_6AssignVariableOp=assignvariableop_6_feed_forward_1_conv_2d_18_conv2d_18_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ñ
AssignVariableOp_7AssignVariableOpLassignvariableop_7_feed_forward_1_conv_2d_18_instance_normalization_20_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ð
AssignVariableOp_8AssignVariableOpKassignvariableop_8_feed_forward_1_conv_2d_18_instance_normalization_20_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Í
AssignVariableOp_9AssignVariableOpHassignvariableop_9_feed_forward_1_residual_5_conv_2d_19_conv2d_19_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10à
AssignVariableOp_10AssignVariableOpXassignvariableop_10_feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11ß
AssignVariableOp_11AssignVariableOpWassignvariableop_11_feed_forward_1_residual_5_conv_2d_19_instance_normalization_21_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ñ
AssignVariableOp_12AssignVariableOpIassignvariableop_12_feed_forward_1_residual_5_conv_2d_20_conv2d_20_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13à
AssignVariableOp_13AssignVariableOpXassignvariableop_13_feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14ß
AssignVariableOp_14AssignVariableOpWassignvariableop_14_feed_forward_1_residual_5_conv_2d_20_instance_normalization_22_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ñ
AssignVariableOp_15AssignVariableOpIassignvariableop_15_feed_forward_1_residual_6_conv_2d_21_conv2d_21_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16à
AssignVariableOp_16AssignVariableOpXassignvariableop_16_feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17ß
AssignVariableOp_17AssignVariableOpWassignvariableop_17_feed_forward_1_residual_6_conv_2d_21_instance_normalization_23_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ñ
AssignVariableOp_18AssignVariableOpIassignvariableop_18_feed_forward_1_residual_6_conv_2d_22_conv2d_22_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19à
AssignVariableOp_19AssignVariableOpXassignvariableop_19_feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_gammaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20ß
AssignVariableOp_20AssignVariableOpWassignvariableop_20_feed_forward_1_residual_6_conv_2d_22_instance_normalization_24_betaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ñ
AssignVariableOp_21AssignVariableOpIassignvariableop_21_feed_forward_1_residual_7_conv_2d_23_conv2d_23_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22à
AssignVariableOp_22AssignVariableOpXassignvariableop_22_feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23ß
AssignVariableOp_23AssignVariableOpWassignvariableop_23_feed_forward_1_residual_7_conv_2d_23_instance_normalization_25_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ñ
AssignVariableOp_24AssignVariableOpIassignvariableop_24_feed_forward_1_residual_7_conv_2d_24_conv2d_24_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25à
AssignVariableOp_25AssignVariableOpXassignvariableop_25_feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26ß
AssignVariableOp_26AssignVariableOpWassignvariableop_26_feed_forward_1_residual_7_conv_2d_24_instance_normalization_26_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ñ
AssignVariableOp_27AssignVariableOpIassignvariableop_27_feed_forward_1_residual_8_conv_2d_25_conv2d_25_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28à
AssignVariableOp_28AssignVariableOpXassignvariableop_28_feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_gammaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29ß
AssignVariableOp_29AssignVariableOpWassignvariableop_29_feed_forward_1_residual_8_conv_2d_25_instance_normalization_27_betaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ñ
AssignVariableOp_30AssignVariableOpIassignvariableop_30_feed_forward_1_residual_8_conv_2d_26_conv2d_26_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31à
AssignVariableOp_31AssignVariableOpXassignvariableop_31_feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_gammaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32ß
AssignVariableOp_32AssignVariableOpWassignvariableop_32_feed_forward_1_residual_8_conv_2d_26_instance_normalization_28_betaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ñ
AssignVariableOp_33AssignVariableOpIassignvariableop_33_feed_forward_1_residual_9_conv_2d_27_conv2d_27_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34à
AssignVariableOp_34AssignVariableOpXassignvariableop_34_feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_gammaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35ß
AssignVariableOp_35AssignVariableOpWassignvariableop_35_feed_forward_1_residual_9_conv_2d_27_instance_normalization_29_betaIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ñ
AssignVariableOp_36AssignVariableOpIassignvariableop_36_feed_forward_1_residual_9_conv_2d_28_conv2d_28_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37à
AssignVariableOp_37AssignVariableOpXassignvariableop_37_feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_gammaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38ß
AssignVariableOp_38AssignVariableOpWassignvariableop_38_feed_forward_1_residual_9_conv_2d_28_instance_normalization_30_betaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39×
AssignVariableOp_39AssignVariableOpOassignvariableop_39_feed_forward_1_resize_conv_2d_2_conv_2d_29_conv2d_29_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40æ
AssignVariableOp_40AssignVariableOp^assignvariableop_40_feed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_gammaIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41å
AssignVariableOp_41AssignVariableOp]assignvariableop_41_feed_forward_1_resize_conv_2d_2_conv_2d_29_instance_normalization_31_betaIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42×
AssignVariableOp_42AssignVariableOpOassignvariableop_42_feed_forward_1_resize_conv_2d_3_conv_2d_30_conv2d_30_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43æ
AssignVariableOp_43AssignVariableOp^assignvariableop_43_feed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_gammaIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44å
AssignVariableOp_44AssignVariableOp]assignvariableop_44_feed_forward_1_resize_conv_2d_3_conv_2d_30_instance_normalization_33_betaIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Æ
AssignVariableOp_45AssignVariableOp>assignvariableop_45_feed_forward_1_conv_2d_31_conv2d_31_kernelIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Õ
AssignVariableOp_46AssignVariableOpMassignvariableop_46_feed_forward_1_conv_2d_31_instance_normalization_35_gammaIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Ô
AssignVariableOp_47AssignVariableOpLassignvariableop_47_feed_forward_1_conv_2d_31_instance_normalization_35_betaIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_479
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpþ
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_48ñ
Identity_49IdentityIdentity_48:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_49"#
identity_49Identity_49:output:0*×
_input_shapesÅ
Â: ::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ÿ
¢
/__inference_resize_conv_2d_3_layer_call_fn_5877

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_resize_conv_2d_3_layer_call_and_return_conditional_losses_46212
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:
²0
ò
S__inference_instance_normalization_28_layer_call_and_return_conditional_losses_3322

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê

8__inference_instance_normalization_21_layer_call_fn_2954

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_21_layer_call_and_return_conditional_losses_29442
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ

8__inference_instance_normalization_33_layer_call_fn_3548

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_33_layer_call_and_return_conditional_losses_35382
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¢	
Ø
)__inference_residual_6_layer_call_fn_5404

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_residual_6_layer_call_and_return_conditional_losses_40532
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
ê

8__inference_instance_normalization_27_layer_call_fn_3278

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_27_layer_call_and_return_conditional_losses_32682
StatefulPartitionedCall©
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²0
ò
S__inference_instance_normalization_27_layer_call_and_return_conditional_losses_3268

inputs#
reshape_readvariableop_resource%
!reshape_1_readvariableop_resource
identity¢Reshape/ReadVariableOp¢Reshape_1/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2x
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSliceShape:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2 
moments/mean/reduction_indices¡
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/mean
moments/StopGradientStopGradientmoments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/StopGradient¿
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2$
"moments/variance/reduction_indicesÄ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2
moments/variance
Reshape/ReadVariableOpReadVariableOpreshape_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape/ReadVariableOpw
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape/shape
ReshapeReshapeReshape/ReadVariableOp:value:0Reshape/shape:output:0*
T0*'
_output_shapes
:2	
Reshape
Reshape_1/ReadVariableOpReadVariableOp!reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02
Reshape_1/ReadVariableOp{
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2
Reshape_1/shape
	Reshape_1Reshape Reshape_1/ReadVariableOp:value:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:2
	Reshape_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/addy
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/Rsqrt
batchnorm/mulMulbatchnorm/Rsqrt:y:0Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_2
batchnorm/subSubReshape_1:output:0batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/sub 
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1¶
IdentityIdentitybatchnorm/add_1:z:0^Reshape/ReadVariableOp^Reshape_1/ReadVariableOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::20
Reshape/ReadVariableOpReshape/ReadVariableOp24
Reshape_1/ReadVariableOpReshape_1/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ

8__inference_instance_normalization_31_layer_call_fn_3494

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_instance_normalization_31_layer_call_and_return_conditional_losses_34842
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ó

)__inference_conv_2d_17_layer_call_fn_5112

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv_2d_17_layer_call_and_return_conditional_losses_37282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
·

D__inference_residual_7_layer_call_and_return_conditional_losses_4187

inputs!
conv_2d_23_mirrorpad_paddings7
3conv_2d_23_conv2d_23_conv2d_readvariableop_resourceH
Dconv_2d_23_instance_normalization_25_reshape_readvariableop_resourceJ
Fconv_2d_23_instance_normalization_25_reshape_1_readvariableop_resource!
conv_2d_24_mirrorpad_paddings7
3conv_2d_24_conv2d_24_conv2d_readvariableop_resourceH
Dconv_2d_24_instance_normalization_26_reshape_readvariableop_resourceJ
Fconv_2d_24_instance_normalization_26_reshape_1_readvariableop_resource
identity¢*conv_2d_23/conv2d_23/Conv2D/ReadVariableOp¢;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp¢=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp¢*conv_2d_24/conv2d_24/Conv2D/ReadVariableOp¢;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp¢=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp°
conv_2d_23/MirrorPad	MirrorPadinputsconv_2d_23_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_23/MirrorPadÖ
*conv_2d_23/conv2d_23/Conv2D/ReadVariableOpReadVariableOp3conv_2d_23_conv2d_23_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_23/conv2d_23/Conv2D/ReadVariableOpý
conv_2d_23/conv2d_23/Conv2DConv2Dconv_2d_23/MirrorPad:output:02conv_2d_23/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_23/conv2d_23/Conv2D¬
*conv_2d_23/instance_normalization_25/ShapeShape$conv_2d_23/conv2d_23/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_23/instance_normalization_25/Shape¾
8conv_2d_23/instance_normalization_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_23/instance_normalization_25/strided_slice/stackÂ
:conv_2d_23/instance_normalization_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice/stack_1Â
:conv_2d_23/instance_normalization_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice/stack_2À
2conv_2d_23/instance_normalization_25/strided_sliceStridedSlice3conv_2d_23/instance_normalization_25/Shape:output:0Aconv_2d_23/instance_normalization_25/strided_slice/stack:output:0Cconv_2d_23/instance_normalization_25/strided_slice/stack_1:output:0Cconv_2d_23/instance_normalization_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_23/instance_normalization_25/strided_sliceÂ
:conv_2d_23/instance_normalization_25/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice_1/stackÆ
<conv_2d_23/instance_normalization_25/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_1/stack_1Æ
<conv_2d_23/instance_normalization_25/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_1/stack_2Ê
4conv_2d_23/instance_normalization_25/strided_slice_1StridedSlice3conv_2d_23/instance_normalization_25/Shape:output:0Cconv_2d_23/instance_normalization_25/strided_slice_1/stack:output:0Econv_2d_23/instance_normalization_25/strided_slice_1/stack_1:output:0Econv_2d_23/instance_normalization_25/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_23/instance_normalization_25/strided_slice_1Â
:conv_2d_23/instance_normalization_25/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice_2/stackÆ
<conv_2d_23/instance_normalization_25/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_2/stack_1Æ
<conv_2d_23/instance_normalization_25/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_2/stack_2Ê
4conv_2d_23/instance_normalization_25/strided_slice_2StridedSlice3conv_2d_23/instance_normalization_25/Shape:output:0Cconv_2d_23/instance_normalization_25/strided_slice_2/stack:output:0Econv_2d_23/instance_normalization_25/strided_slice_2/stack_1:output:0Econv_2d_23/instance_normalization_25/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_23/instance_normalization_25/strided_slice_2Â
:conv_2d_23/instance_normalization_25/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_23/instance_normalization_25/strided_slice_3/stackÆ
<conv_2d_23/instance_normalization_25/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_3/stack_1Æ
<conv_2d_23/instance_normalization_25/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_23/instance_normalization_25/strided_slice_3/stack_2Ê
4conv_2d_23/instance_normalization_25/strided_slice_3StridedSlice3conv_2d_23/instance_normalization_25/Shape:output:0Cconv_2d_23/instance_normalization_25/strided_slice_3/stack:output:0Econv_2d_23/instance_normalization_25/strided_slice_3/stack_1:output:0Econv_2d_23/instance_normalization_25/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_23/instance_normalization_25/strided_slice_3Û
Cconv_2d_23/instance_normalization_25/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_23/instance_normalization_25/moments/mean/reduction_indices®
1conv_2d_23/instance_normalization_25/moments/meanMean$conv_2d_23/conv2d_23/Conv2D:output:0Lconv_2d_23/instance_normalization_25/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_23/instance_normalization_25/moments/meaný
9conv_2d_23/instance_normalization_25/moments/StopGradientStopGradient:conv_2d_23/instance_normalization_25/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_23/instance_normalization_25/moments/StopGradient¼
>conv_2d_23/instance_normalization_25/moments/SquaredDifferenceSquaredDifference$conv_2d_23/conv2d_23/Conv2D:output:0Bconv_2d_23/instance_normalization_25/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_23/instance_normalization_25/moments/SquaredDifferenceã
Gconv_2d_23/instance_normalization_25/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_23/instance_normalization_25/moments/variance/reduction_indicesØ
5conv_2d_23/instance_normalization_25/moments/varianceMeanBconv_2d_23/instance_normalization_25/moments/SquaredDifference:z:0Pconv_2d_23/instance_normalization_25/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_23/instance_normalization_25/moments/varianceü
;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOpReadVariableOpDconv_2d_23_instance_normalization_25_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOpÁ
2conv_2d_23/instance_normalization_25/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_23/instance_normalization_25/Reshape/shape
,conv_2d_23/instance_normalization_25/ReshapeReshapeCconv_2d_23/instance_normalization_25/Reshape/ReadVariableOp:value:0;conv_2d_23/instance_normalization_25/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_23/instance_normalization_25/Reshape
=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_23_instance_normalization_25_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOpÅ
4conv_2d_23/instance_normalization_25/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_23/instance_normalization_25/Reshape_1/shape£
.conv_2d_23/instance_normalization_25/Reshape_1ReshapeEconv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp:value:0=conv_2d_23/instance_normalization_25/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_23/instance_normalization_25/Reshape_1±
4conv_2d_23/instance_normalization_25/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_23/instance_normalization_25/batchnorm/add/y«
2conv_2d_23/instance_normalization_25/batchnorm/addAddV2>conv_2d_23/instance_normalization_25/moments/variance:output:0=conv_2d_23/instance_normalization_25/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_23/instance_normalization_25/batchnorm/addè
4conv_2d_23/instance_normalization_25/batchnorm/RsqrtRsqrt6conv_2d_23/instance_normalization_25/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_23/instance_normalization_25/batchnorm/Rsqrt
2conv_2d_23/instance_normalization_25/batchnorm/mulMul8conv_2d_23/instance_normalization_25/batchnorm/Rsqrt:y:05conv_2d_23/instance_normalization_25/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_23/instance_normalization_25/batchnorm/mul
4conv_2d_23/instance_normalization_25/batchnorm/mul_1Mul$conv_2d_23/conv2d_23/Conv2D:output:06conv_2d_23/instance_normalization_25/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_23/instance_normalization_25/batchnorm/mul_1¢
4conv_2d_23/instance_normalization_25/batchnorm/mul_2Mul:conv_2d_23/instance_normalization_25/moments/mean:output:06conv_2d_23/instance_normalization_25/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_23/instance_normalization_25/batchnorm/mul_2
2conv_2d_23/instance_normalization_25/batchnorm/subSub7conv_2d_23/instance_normalization_25/Reshape_1:output:08conv_2d_23/instance_normalization_25/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_23/instance_normalization_25/batchnorm/sub¤
4conv_2d_23/instance_normalization_25/batchnorm/add_1AddV28conv_2d_23/instance_normalization_25/batchnorm/mul_1:z:06conv_2d_23/instance_normalization_25/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_23/instance_normalization_25/batchnorm/add_1¡
conv_2d_23/ReluRelu8conv_2d_23/instance_normalization_25/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_23/ReluÇ
conv_2d_24/MirrorPad	MirrorPadconv_2d_23/Relu:activations:0conv_2d_24_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_24/MirrorPadÖ
*conv_2d_24/conv2d_24/Conv2D/ReadVariableOpReadVariableOp3conv_2d_24_conv2d_24_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_24/conv2d_24/Conv2D/ReadVariableOpý
conv_2d_24/conv2d_24/Conv2DConv2Dconv_2d_24/MirrorPad:output:02conv_2d_24/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_24/conv2d_24/Conv2D¬
*conv_2d_24/instance_normalization_26/ShapeShape$conv_2d_24/conv2d_24/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_24/instance_normalization_26/Shape¾
8conv_2d_24/instance_normalization_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_24/instance_normalization_26/strided_slice/stackÂ
:conv_2d_24/instance_normalization_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice/stack_1Â
:conv_2d_24/instance_normalization_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice/stack_2À
2conv_2d_24/instance_normalization_26/strided_sliceStridedSlice3conv_2d_24/instance_normalization_26/Shape:output:0Aconv_2d_24/instance_normalization_26/strided_slice/stack:output:0Cconv_2d_24/instance_normalization_26/strided_slice/stack_1:output:0Cconv_2d_24/instance_normalization_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_24/instance_normalization_26/strided_sliceÂ
:conv_2d_24/instance_normalization_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice_1/stackÆ
<conv_2d_24/instance_normalization_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_1/stack_1Æ
<conv_2d_24/instance_normalization_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_1/stack_2Ê
4conv_2d_24/instance_normalization_26/strided_slice_1StridedSlice3conv_2d_24/instance_normalization_26/Shape:output:0Cconv_2d_24/instance_normalization_26/strided_slice_1/stack:output:0Econv_2d_24/instance_normalization_26/strided_slice_1/stack_1:output:0Econv_2d_24/instance_normalization_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_24/instance_normalization_26/strided_slice_1Â
:conv_2d_24/instance_normalization_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice_2/stackÆ
<conv_2d_24/instance_normalization_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_2/stack_1Æ
<conv_2d_24/instance_normalization_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_2/stack_2Ê
4conv_2d_24/instance_normalization_26/strided_slice_2StridedSlice3conv_2d_24/instance_normalization_26/Shape:output:0Cconv_2d_24/instance_normalization_26/strided_slice_2/stack:output:0Econv_2d_24/instance_normalization_26/strided_slice_2/stack_1:output:0Econv_2d_24/instance_normalization_26/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_24/instance_normalization_26/strided_slice_2Â
:conv_2d_24/instance_normalization_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_24/instance_normalization_26/strided_slice_3/stackÆ
<conv_2d_24/instance_normalization_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_3/stack_1Æ
<conv_2d_24/instance_normalization_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_24/instance_normalization_26/strided_slice_3/stack_2Ê
4conv_2d_24/instance_normalization_26/strided_slice_3StridedSlice3conv_2d_24/instance_normalization_26/Shape:output:0Cconv_2d_24/instance_normalization_26/strided_slice_3/stack:output:0Econv_2d_24/instance_normalization_26/strided_slice_3/stack_1:output:0Econv_2d_24/instance_normalization_26/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_24/instance_normalization_26/strided_slice_3Û
Cconv_2d_24/instance_normalization_26/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_24/instance_normalization_26/moments/mean/reduction_indices®
1conv_2d_24/instance_normalization_26/moments/meanMean$conv_2d_24/conv2d_24/Conv2D:output:0Lconv_2d_24/instance_normalization_26/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_24/instance_normalization_26/moments/meaný
9conv_2d_24/instance_normalization_26/moments/StopGradientStopGradient:conv_2d_24/instance_normalization_26/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_24/instance_normalization_26/moments/StopGradient¼
>conv_2d_24/instance_normalization_26/moments/SquaredDifferenceSquaredDifference$conv_2d_24/conv2d_24/Conv2D:output:0Bconv_2d_24/instance_normalization_26/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_24/instance_normalization_26/moments/SquaredDifferenceã
Gconv_2d_24/instance_normalization_26/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_24/instance_normalization_26/moments/variance/reduction_indicesØ
5conv_2d_24/instance_normalization_26/moments/varianceMeanBconv_2d_24/instance_normalization_26/moments/SquaredDifference:z:0Pconv_2d_24/instance_normalization_26/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_24/instance_normalization_26/moments/varianceü
;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOpReadVariableOpDconv_2d_24_instance_normalization_26_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOpÁ
2conv_2d_24/instance_normalization_26/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_24/instance_normalization_26/Reshape/shape
,conv_2d_24/instance_normalization_26/ReshapeReshapeCconv_2d_24/instance_normalization_26/Reshape/ReadVariableOp:value:0;conv_2d_24/instance_normalization_26/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_24/instance_normalization_26/Reshape
=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_24_instance_normalization_26_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOpÅ
4conv_2d_24/instance_normalization_26/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_24/instance_normalization_26/Reshape_1/shape£
.conv_2d_24/instance_normalization_26/Reshape_1ReshapeEconv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp:value:0=conv_2d_24/instance_normalization_26/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_24/instance_normalization_26/Reshape_1±
4conv_2d_24/instance_normalization_26/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_24/instance_normalization_26/batchnorm/add/y«
2conv_2d_24/instance_normalization_26/batchnorm/addAddV2>conv_2d_24/instance_normalization_26/moments/variance:output:0=conv_2d_24/instance_normalization_26/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_24/instance_normalization_26/batchnorm/addè
4conv_2d_24/instance_normalization_26/batchnorm/RsqrtRsqrt6conv_2d_24/instance_normalization_26/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_24/instance_normalization_26/batchnorm/Rsqrt
2conv_2d_24/instance_normalization_26/batchnorm/mulMul8conv_2d_24/instance_normalization_26/batchnorm/Rsqrt:y:05conv_2d_24/instance_normalization_26/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_24/instance_normalization_26/batchnorm/mul
4conv_2d_24/instance_normalization_26/batchnorm/mul_1Mul$conv_2d_24/conv2d_24/Conv2D:output:06conv_2d_24/instance_normalization_26/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_24/instance_normalization_26/batchnorm/mul_1¢
4conv_2d_24/instance_normalization_26/batchnorm/mul_2Mul:conv_2d_24/instance_normalization_26/moments/mean:output:06conv_2d_24/instance_normalization_26/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_24/instance_normalization_26/batchnorm/mul_2
2conv_2d_24/instance_normalization_26/batchnorm/subSub7conv_2d_24/instance_normalization_26/Reshape_1:output:08conv_2d_24/instance_normalization_26/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_24/instance_normalization_26/batchnorm/sub¤
4conv_2d_24/instance_normalization_26/batchnorm/add_1AddV28conv_2d_24/instance_normalization_26/batchnorm/mul_1:z:06conv_2d_24/instance_normalization_26/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_24/instance_normalization_26/batchnorm/add_1
addAddV2inputs8conv_2d_24/instance_normalization_26/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_23/conv2d_23/Conv2D/ReadVariableOp<^conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp>^conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp+^conv_2d_24/conv2d_24/Conv2D/ReadVariableOp<^conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp>^conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_23/conv2d_23/Conv2D/ReadVariableOp*conv_2d_23/conv2d_23/Conv2D/ReadVariableOp2z
;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp;conv_2d_23/instance_normalization_25/Reshape/ReadVariableOp2~
=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp=conv_2d_23/instance_normalization_25/Reshape_1/ReadVariableOp2X
*conv_2d_24/conv2d_24/Conv2D/ReadVariableOp*conv_2d_24/conv2d_24/Conv2D/ReadVariableOp2z
;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp;conv_2d_24/instance_normalization_26/Reshape/ReadVariableOp2~
=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp=conv_2d_24/instance_normalization_26/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
¼P
³
D__inference_conv_2d_18_layer_call_and_return_conditional_losses_3801

inputs
mirrorpad_paddings,
(conv2d_18_conv2d_readvariableop_resource=
9instance_normalization_20_reshape_readvariableop_resource?
;instance_normalization_20_reshape_1_readvariableop_resource
identity¢conv2d_18/Conv2D/ReadVariableOp¢0instance_normalization_20/Reshape/ReadVariableOp¢2instance_normalization_20/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿöö@*
mode	REFLECT2
	MirrorPad´
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_18/Conv2D/ReadVariableOpÑ
conv2d_18/Conv2DConv2DMirrorPad:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv2d_18/Conv2D
instance_normalization_20/ShapeShapeconv2d_18/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_20/Shape¨
-instance_normalization_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_20/strided_slice/stack¬
/instance_normalization_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice/stack_1¬
/instance_normalization_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice/stack_2þ
'instance_normalization_20/strided_sliceStridedSlice(instance_normalization_20/Shape:output:06instance_normalization_20/strided_slice/stack:output:08instance_normalization_20/strided_slice/stack_1:output:08instance_normalization_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_20/strided_slice¬
/instance_normalization_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice_1/stack°
1instance_normalization_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_1/stack_1°
1instance_normalization_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_1/stack_2
)instance_normalization_20/strided_slice_1StridedSlice(instance_normalization_20/Shape:output:08instance_normalization_20/strided_slice_1/stack:output:0:instance_normalization_20/strided_slice_1/stack_1:output:0:instance_normalization_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_20/strided_slice_1¬
/instance_normalization_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice_2/stack°
1instance_normalization_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_2/stack_1°
1instance_normalization_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_2/stack_2
)instance_normalization_20/strided_slice_2StridedSlice(instance_normalization_20/Shape:output:08instance_normalization_20/strided_slice_2/stack:output:0:instance_normalization_20/strided_slice_2/stack_1:output:0:instance_normalization_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_20/strided_slice_2¬
/instance_normalization_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_20/strided_slice_3/stack°
1instance_normalization_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_3/stack_1°
1instance_normalization_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_20/strided_slice_3/stack_2
)instance_normalization_20/strided_slice_3StridedSlice(instance_normalization_20/Shape:output:08instance_normalization_20/strided_slice_3/stack:output:0:instance_normalization_20/strided_slice_3/stack_1:output:0:instance_normalization_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_20/strided_slice_3Å
8instance_normalization_20/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_20/moments/mean/reduction_indices
&instance_normalization_20/moments/meanMeanconv2d_18/Conv2D:output:0Ainstance_normalization_20/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2(
&instance_normalization_20/moments/meanÜ
.instance_normalization_20/moments/StopGradientStopGradient/instance_normalization_20/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.instance_normalization_20/moments/StopGradient
3instance_normalization_20/moments/SquaredDifferenceSquaredDifferenceconv2d_18/Conv2D:output:07instance_normalization_20/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú25
3instance_normalization_20/moments/SquaredDifferenceÍ
<instance_normalization_20/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_20/moments/variance/reduction_indices¬
*instance_normalization_20/moments/varianceMean7instance_normalization_20/moments/SquaredDifference:z:0Einstance_normalization_20/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2,
*instance_normalization_20/moments/varianceÛ
0instance_normalization_20/Reshape/ReadVariableOpReadVariableOp9instance_normalization_20_reshape_readvariableop_resource*
_output_shapes	
:*
dtype022
0instance_normalization_20/Reshape/ReadVariableOp«
'instance_normalization_20/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'instance_normalization_20/Reshape/shapeï
!instance_normalization_20/ReshapeReshape8instance_normalization_20/Reshape/ReadVariableOp:value:00instance_normalization_20/Reshape/shape:output:0*
T0*'
_output_shapes
:2#
!instance_normalization_20/Reshapeá
2instance_normalization_20/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_20_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype024
2instance_normalization_20/Reshape_1/ReadVariableOp¯
)instance_normalization_20/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)instance_normalization_20/Reshape_1/shape÷
#instance_normalization_20/Reshape_1Reshape:instance_normalization_20/Reshape_1/ReadVariableOp:value:02instance_normalization_20/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2%
#instance_normalization_20/Reshape_1
)instance_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_20/batchnorm/add/yÿ
'instance_normalization_20/batchnorm/addAddV23instance_normalization_20/moments/variance:output:02instance_normalization_20/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_20/batchnorm/addÇ
)instance_normalization_20/batchnorm/RsqrtRsqrt+instance_normalization_20/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_20/batchnorm/Rsqrtï
'instance_normalization_20/batchnorm/mulMul-instance_normalization_20/batchnorm/Rsqrt:y:0*instance_normalization_20/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_20/batchnorm/mulâ
)instance_normalization_20/batchnorm/mul_1Mulconv2d_18/Conv2D:output:0+instance_normalization_20/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)instance_normalization_20/batchnorm/mul_1ö
)instance_normalization_20/batchnorm/mul_2Mul/instance_normalization_20/moments/mean:output:0+instance_normalization_20/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_20/batchnorm/mul_2ñ
'instance_normalization_20/batchnorm/subSub,instance_normalization_20/Reshape_1:output:0-instance_normalization_20/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_20/batchnorm/subø
)instance_normalization_20/batchnorm/add_1AddV2-instance_normalization_20/batchnorm/mul_1:z:0+instance_normalization_20/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)instance_normalization_20/batchnorm/add_1
ReluRelu-instance_normalization_20/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
Reluû
IdentityIdentityRelu:activations:0 ^conv2d_18/Conv2D/ReadVariableOp1^instance_normalization_20/Reshape/ReadVariableOp3^instance_normalization_20/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2d
0instance_normalization_20/Reshape/ReadVariableOp0instance_normalization_20/Reshape/ReadVariableOp2h
2instance_normalization_20/Reshape_1/ReadVariableOp2instance_normalization_20/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
serving_default«
E
input_1:
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿèèF
output_1:
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿèètensorflow/serving/predict:â
Ó
	conv1
	conv2
	conv3

resid1

resid2

resid3

resid4

resid5
	resize_conv1

resize_conv2
	conv4
trainable_variables
regularization_losses
	variables
	keras_api

signatures
å__call__
+æ&call_and_return_all_conditional_losses
ç_default_save_signature"
_tf_keras_modelî{"class_name": "feed_forward", "name": "feed_forward_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "feed_forward"}}
Ä

conv2d
instance_norm
trainable_variables
regularization_losses
	variables
	keras_api
è__call__
+é&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ä

conv2d
instance_norm
trainable_variables
regularization_losses
	variables
	keras_api
ê__call__
+ë&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ä

conv2d
instance_norm
trainable_variables
 regularization_losses
!	variables
"	keras_api
ì__call__
+í&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
¼
	#conv1
	$conv2
%trainable_variables
&regularization_losses
'	variables
(	keras_api
î__call__
+ï&call_and_return_all_conditional_losses"
_tf_keras_layerû{"class_name": "residual", "name": "residual_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
¼
	)conv1
	*conv2
+trainable_variables
,regularization_losses
-	variables
.	keras_api
ð__call__
+ñ&call_and_return_all_conditional_losses"
_tf_keras_layerû{"class_name": "residual", "name": "residual_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
¼
	/conv1
	0conv2
1trainable_variables
2regularization_losses
3	variables
4	keras_api
ò__call__
+ó&call_and_return_all_conditional_losses"
_tf_keras_layerû{"class_name": "residual", "name": "residual_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
¼
	5conv1
	6conv2
7trainable_variables
8regularization_losses
9	variables
:	keras_api
ô__call__
+õ&call_and_return_all_conditional_losses"
_tf_keras_layerû{"class_name": "residual", "name": "residual_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
¼
	;conv1
	<conv2
=trainable_variables
>regularization_losses
?	variables
@	keras_api
ö__call__
+÷&call_and_return_all_conditional_losses"
_tf_keras_layerû{"class_name": "residual", "name": "residual_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ï
Aconv
Binstance_norm
Ctrainable_variables
Dregularization_losses
E	variables
F	keras_api
ø__call__
+ù&call_and_return_all_conditional_losses"¡
_tf_keras_layer{"class_name": "resize_conv_2d", "name": "resize_conv_2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ï
Gconv
Hinstance_norm
Itrainable_variables
Jregularization_losses
K	variables
L	keras_api
ú__call__
+û&call_and_return_all_conditional_losses"¡
_tf_keras_layer{"class_name": "resize_conv_2d", "name": "resize_conv_2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ä

Mconv2d
Ninstance_norm
Otrainable_variables
Pregularization_losses
Q	variables
R	keras_api
ü__call__
+ý&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}

S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11
_12
`13
a14
b15
c16
d17
e18
f19
g20
h21
i22
j23
k24
l25
m26
n27
o28
p29
q30
r31
s32
t33
u34
v35
w36
x37
y38
z39
{40
|41
}42
~43
44
45
46
47"
trackable_list_wrapper
 "
trackable_list_wrapper

S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11
_12
`13
a14
b15
c16
d17
e18
f19
g20
h21
i22
j23
k24
l25
m26
n27
o28
p29
q30
r31
s32
t33
u34
v35
w36
x37
y38
z39
{40
|41
}42
~43
44
45
46
47"
trackable_list_wrapper
Ó
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
	variables
å__call__
ç_default_save_signature
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses"
_generic_user_object
-
þserving_default"
signature_map
ó	

Skernel
trainable_variables
regularization_losses
	variables
	keras_api
ÿ__call__
+&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1008, 1008, 3]}}

	Tgamma
Ubeta
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"ï
_tf_keras_layerÕ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_18", "trainable": true, "dtype": "float32", "groups": 32, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1000, 1000, 32]}}
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
µ
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
	variables
è__call__
+é&call_and_return_all_conditional_losses
'é"call_and_return_conditional_losses"
_generic_user_object
õ	

Vkernel
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"Ô
_tf_keras_layerº{"class_name": "Conv2D", "name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1002, 1002, 32]}}

	Wgamma
Xbeta
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+&call_and_return_all_conditional_losses"í
_tf_keras_layerÓ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_19", "trainable": true, "dtype": "float32", "groups": 64, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 500, 500, 64]}}
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
µ
trainable_variables
regularization_losses
non_trainable_variables
layer_metrics
metrics
 layers
 ¡layer_regularization_losses
	variables
ê__call__
+ë&call_and_return_all_conditional_losses
'ë"call_and_return_conditional_losses"
_generic_user_object
ô	

Ykernel
¢trainable_variables
£regularization_losses
¤	variables
¥	keras_api
__call__
+&call_and_return_all_conditional_losses"Ó
_tf_keras_layer¹{"class_name": "Conv2D", "name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 502, 502, 64]}}

	Zgamma
[beta
¦trainable_variables
§regularization_losses
¨	variables
©	keras_api
__call__
+&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_20", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
Y0
Z1
[2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
Y0
Z1
[2"
trackable_list_wrapper
µ
trainable_variables
 regularization_losses
ªnon_trainable_variables
«layer_metrics
¬metrics
­layers
 ®layer_regularization_losses
!	variables
ì__call__
+í&call_and_return_all_conditional_losses
'í"call_and_return_conditional_losses"
_generic_user_object
Ê
¯conv2d
°instance_norm
±trainable_variables
²regularization_losses
³	variables
´	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
µconv2d
¶instance_norm
·trainable_variables
¸regularization_losses
¹	variables
º	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
\0
]1
^2
_3
`4
a5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
\0
]1
^2
_3
`4
a5"
trackable_list_wrapper
µ
%trainable_variables
&regularization_losses
»non_trainable_variables
¼layer_metrics
½metrics
¾layers
 ¿layer_regularization_losses
'	variables
î__call__
+ï&call_and_return_all_conditional_losses
'ï"call_and_return_conditional_losses"
_generic_user_object
Ê
Àconv2d
Áinstance_norm
Âtrainable_variables
Ãregularization_losses
Ä	variables
Å	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
Æconv2d
Çinstance_norm
Ètrainable_variables
Éregularization_losses
Ê	variables
Ë	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
b0
c1
d2
e3
f4
g5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
b0
c1
d2
e3
f4
g5"
trackable_list_wrapper
µ
+trainable_variables
,regularization_losses
Ìnon_trainable_variables
Ílayer_metrics
Îmetrics
Ïlayers
 Ðlayer_regularization_losses
-	variables
ð__call__
+ñ&call_and_return_all_conditional_losses
'ñ"call_and_return_conditional_losses"
_generic_user_object
Ê
Ñconv2d
Òinstance_norm
Ótrainable_variables
Ôregularization_losses
Õ	variables
Ö	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
×conv2d
Øinstance_norm
Ùtrainable_variables
Úregularization_losses
Û	variables
Ü	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
h0
i1
j2
k3
l4
m5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
h0
i1
j2
k3
l4
m5"
trackable_list_wrapper
µ
1trainable_variables
2regularization_losses
Ýnon_trainable_variables
Þlayer_metrics
ßmetrics
àlayers
 álayer_regularization_losses
3	variables
ò__call__
+ó&call_and_return_all_conditional_losses
'ó"call_and_return_conditional_losses"
_generic_user_object
Ê
âconv2d
ãinstance_norm
ätrainable_variables
åregularization_losses
æ	variables
ç	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
èconv2d
éinstance_norm
êtrainable_variables
ëregularization_losses
ì	variables
í	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
n0
o1
p2
q3
r4
s5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
n0
o1
p2
q3
r4
s5"
trackable_list_wrapper
µ
7trainable_variables
8regularization_losses
înon_trainable_variables
ïlayer_metrics
ðmetrics
ñlayers
 òlayer_regularization_losses
9	variables
ô__call__
+õ&call_and_return_all_conditional_losses
'õ"call_and_return_conditional_losses"
_generic_user_object
Ê
óconv2d
ôinstance_norm
õtrainable_variables
öregularization_losses
÷	variables
ø	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
ùconv2d
úinstance_norm
ûtrainable_variables
üregularization_losses
ý	variables
þ	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
t0
u1
v2
w3
x4
y5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
t0
u1
v2
w3
x4
y5"
trackable_list_wrapper
µ
=trainable_variables
>regularization_losses
ÿnon_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
?	variables
ö__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
Ê
conv2d
instance_norm
trainable_variables
regularization_losses
	variables
	keras_api
__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}

	keras_api"
_tf_keras_layerë{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_32", "trainable": true, "dtype": "float32", "groups": -1, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}
5
z0
{1
|2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
z0
{1
|2"
trackable_list_wrapper
µ
Ctrainable_variables
Dregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
E	variables
ø__call__
+ù&call_and_return_all_conditional_losses
'ù"call_and_return_conditional_losses"
_generic_user_object
Ê
conv2d
instance_norm
trainable_variables
regularization_losses
	variables
	keras_api
¡__call__
+¢&call_and_return_all_conditional_losses"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}

	keras_api"
_tf_keras_layerë{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_34", "trainable": true, "dtype": "float32", "groups": -1, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}
5
}0
~1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
}0
~1
2"
trackable_list_wrapper
µ
Itrainable_variables
Jregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
K	variables
ú__call__
+û&call_and_return_all_conditional_losses
'û"call_and_return_conditional_losses"
_generic_user_object
õ	
kernel
trainable_variables
regularization_losses
	variables
	keras_api
£__call__
+¤&call_and_return_all_conditional_losses"Ó
_tf_keras_layer¹{"class_name": "Conv2D", "name": "conv2d_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_31", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1008, 1008, 32]}}


gamma
	beta
 trainable_variables
¡regularization_losses
¢	variables
£	keras_api
¥__call__
+¦&call_and_return_all_conditional_losses"ì
_tf_keras_layerÒ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_35", "trainable": true, "dtype": "float32", "groups": 3, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1000, 1000, 3]}}
8
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
8
0
1
2"
trackable_list_wrapper
µ
Otrainable_variables
Pregularization_losses
¤non_trainable_variables
¥layer_metrics
¦metrics
§layers
 ¨layer_regularization_losses
Q	variables
ü__call__
+ý&call_and_return_all_conditional_losses
'ý"call_and_return_conditional_losses"
_generic_user_object
D:B		 2*feed_forward_1/conv_2d_16/conv2d_16/kernel
G:E 29feed_forward_1/conv_2d_16/instance_normalization_18/gamma
F:D 28feed_forward_1/conv_2d_16/instance_normalization_18/beta
D:B @2*feed_forward_1/conv_2d_17/conv2d_17/kernel
G:E@29feed_forward_1/conv_2d_17/instance_normalization_19/gamma
F:D@28feed_forward_1/conv_2d_17/instance_normalization_19/beta
E:C@2*feed_forward_1/conv_2d_18/conv2d_18/kernel
H:F29feed_forward_1/conv_2d_18/instance_normalization_20/gamma
G:E28feed_forward_1/conv_2d_18/instance_normalization_20/beta
Q:O25feed_forward_1/residual_5/conv_2d_19/conv2d_19/kernel
S:Q2Dfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/gamma
R:P2Cfeed_forward_1/residual_5/conv_2d_19/instance_normalization_21/beta
Q:O25feed_forward_1/residual_5/conv_2d_20/conv2d_20/kernel
S:Q2Dfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/gamma
R:P2Cfeed_forward_1/residual_5/conv_2d_20/instance_normalization_22/beta
Q:O25feed_forward_1/residual_6/conv_2d_21/conv2d_21/kernel
S:Q2Dfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/gamma
R:P2Cfeed_forward_1/residual_6/conv_2d_21/instance_normalization_23/beta
Q:O25feed_forward_1/residual_6/conv_2d_22/conv2d_22/kernel
S:Q2Dfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/gamma
R:P2Cfeed_forward_1/residual_6/conv_2d_22/instance_normalization_24/beta
Q:O25feed_forward_1/residual_7/conv_2d_23/conv2d_23/kernel
S:Q2Dfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/gamma
R:P2Cfeed_forward_1/residual_7/conv_2d_23/instance_normalization_25/beta
Q:O25feed_forward_1/residual_7/conv_2d_24/conv2d_24/kernel
S:Q2Dfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/gamma
R:P2Cfeed_forward_1/residual_7/conv_2d_24/instance_normalization_26/beta
Q:O25feed_forward_1/residual_8/conv_2d_25/conv2d_25/kernel
S:Q2Dfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/gamma
R:P2Cfeed_forward_1/residual_8/conv_2d_25/instance_normalization_27/beta
Q:O25feed_forward_1/residual_8/conv_2d_26/conv2d_26/kernel
S:Q2Dfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/gamma
R:P2Cfeed_forward_1/residual_8/conv_2d_26/instance_normalization_28/beta
Q:O25feed_forward_1/residual_9/conv_2d_27/conv2d_27/kernel
S:Q2Dfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/gamma
R:P2Cfeed_forward_1/residual_9/conv_2d_27/instance_normalization_29/beta
Q:O25feed_forward_1/residual_9/conv_2d_28/conv2d_28/kernel
S:Q2Dfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/gamma
R:P2Cfeed_forward_1/residual_9/conv_2d_28/instance_normalization_30/beta
V:T@2;feed_forward_1/resize_conv_2d_2/conv_2d_29/conv2d_29/kernel
X:V@2Jfeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/gamma
W:U@2Ifeed_forward_1/resize_conv_2d_2/conv_2d_29/instance_normalization_31/beta
U:S@ 2;feed_forward_1/resize_conv_2d_3/conv_2d_30/conv2d_30/kernel
X:V 2Jfeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/gamma
W:U 2Ifeed_forward_1/resize_conv_2d_3/conv_2d_30/instance_normalization_33/beta
D:B		 2*feed_forward_1/conv_2d_31/conv2d_31/kernel
G:E29feed_forward_1/conv_2d_31/instance_normalization_35/gamma
F:D28feed_forward_1/conv_2d_31/instance_normalization_35/beta
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
 "
trackable_list_wrapper
'
S0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
S0"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
©non_trainable_variables
ªlayer_metrics
«metrics
¬layers
 ­layer_regularization_losses
	variables
ÿ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
®non_trainable_variables
¯layer_metrics
°metrics
±layers
 ²layer_regularization_losses
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
V0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
V0"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
³non_trainable_variables
´layer_metrics
µmetrics
¶layers
 ·layer_regularization_losses
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
¸non_trainable_variables
¹layer_metrics
ºmetrics
»layers
 ¼layer_regularization_losses
	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
¸
¢trainable_variables
£regularization_losses
½non_trainable_variables
¾layer_metrics
¿metrics
Àlayers
 Álayer_regularization_losses
¤	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
¸
¦trainable_variables
§regularization_losses
Ânon_trainable_variables
Ãlayer_metrics
Ämetrics
Ålayers
 Ælayer_regularization_losses
¨	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
ö	

\kernel
Çtrainable_variables
Èregularization_losses
É	variables
Ê	keras_api
§__call__
+¨&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	]gamma
^beta
Ëtrainable_variables
Ìregularization_losses
Í	variables
Î	keras_api
©__call__
+ª&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_21", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
\0
]1
^2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
\0
]1
^2"
trackable_list_wrapper
¸
±trainable_variables
²regularization_losses
Ïnon_trainable_variables
Ðlayer_metrics
Ñmetrics
Òlayers
 Ólayer_regularization_losses
³	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

_kernel
Ôtrainable_variables
Õregularization_losses
Ö	variables
×	keras_api
«__call__
+¬&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_20", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	`gamma
abeta
Øtrainable_variables
Ùregularization_losses
Ú	variables
Û	keras_api
­__call__
+®&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_22", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
_0
`1
a2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
_0
`1
a2"
trackable_list_wrapper
¸
·trainable_variables
¸regularization_losses
Ünon_trainable_variables
Ýlayer_metrics
Þmetrics
ßlayers
 àlayer_regularization_losses
¹	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
ö	

bkernel
átrainable_variables
âregularization_losses
ã	variables
ä	keras_api
¯__call__
+°&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_21", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	cgamma
dbeta
åtrainable_variables
æregularization_losses
ç	variables
è	keras_api
±__call__
+²&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_23", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
b0
c1
d2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
b0
c1
d2"
trackable_list_wrapper
¸
Âtrainable_variables
Ãregularization_losses
énon_trainable_variables
êlayer_metrics
ëmetrics
ìlayers
 ílayer_regularization_losses
Ä	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

ekernel
îtrainable_variables
ïregularization_losses
ð	variables
ñ	keras_api
³__call__
+´&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_22", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	fgamma
gbeta
òtrainable_variables
óregularization_losses
ô	variables
õ	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_24", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
e0
f1
g2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
e0
f1
g2"
trackable_list_wrapper
¸
Ètrainable_variables
Éregularization_losses
önon_trainable_variables
÷layer_metrics
ømetrics
ùlayers
 úlayer_regularization_losses
Ê	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
ö	

hkernel
ûtrainable_variables
üregularization_losses
ý	variables
þ	keras_api
·__call__
+¸&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_23", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	igamma
jbeta
ÿtrainable_variables
regularization_losses
	variables
	keras_api
¹__call__
+º&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_25", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
h0
i1
j2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
h0
i1
j2"
trackable_list_wrapper
¸
Ótrainable_variables
Ôregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
Õ	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

kkernel
trainable_variables
regularization_losses
	variables
	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_24", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	lgamma
mbeta
trainable_variables
regularization_losses
	variables
	keras_api
½__call__
+¾&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_26", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
k0
l1
m2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
k0
l1
m2"
trackable_list_wrapper
¸
Ùtrainable_variables
Úregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
Û	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
ö	

nkernel
trainable_variables
regularization_losses
	variables
	keras_api
¿__call__
+À&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	ogamma
pbeta
trainable_variables
regularization_losses
	variables
	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_27", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
n0
o1
p2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
n0
o1
p2"
trackable_list_wrapper
¸
ätrainable_variables
åregularization_losses
non_trainable_variables
layer_metrics
metrics
 layers
 ¡layer_regularization_losses
æ	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

qkernel
¢trainable_variables
£regularization_losses
¤	variables
¥	keras_api
Ã__call__
+Ä&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	rgamma
sbeta
¦trainable_variables
§regularization_losses
¨	variables
©	keras_api
Å__call__
+Æ&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_28", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
q0
r1
s2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
q0
r1
s2"
trackable_list_wrapper
¸
êtrainable_variables
ëregularization_losses
ªnon_trainable_variables
«layer_metrics
¬metrics
­layers
 ®layer_regularization_losses
ì	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
 "
trackable_list_wrapper
ö	

tkernel
¯trainable_variables
°regularization_losses
±	variables
²	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	ugamma
vbeta
³trainable_variables
´regularization_losses
µ	variables
¶	keras_api
É__call__
+Ê&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_29", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
t0
u1
v2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
t0
u1
v2"
trackable_list_wrapper
¸
õtrainable_variables
öregularization_losses
·non_trainable_variables
¸layer_metrics
¹metrics
ºlayers
 »layer_regularization_losses
÷	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

wkernel
¼trainable_variables
½regularization_losses
¾	variables
¿	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	xgamma
ybeta
Àtrainable_variables
Áregularization_losses
Â	variables
Ã	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_30", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
w0
x1
y2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
w0
x1
y2"
trackable_list_wrapper
¸
ûtrainable_variables
üregularization_losses
Änon_trainable_variables
Ålayer_metrics
Æmetrics
Çlayers
 Èlayer_regularization_losses
ý	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
÷	

zkernel
Étrainable_variables
Êregularization_losses
Ë	variables
Ì	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"Ö
_tf_keras_layer¼{"class_name": "Conv2D", "name": "conv2d_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1002, 1002, 128]}}

	{gamma
|beta
Ítrainable_variables
Îregularization_losses
Ï	variables
Ð	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses"í
_tf_keras_layerÓ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_31", "trainable": true, "dtype": "float32", "groups": 64, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 500, 500, 64]}}
5
z0
{1
|2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
z0
{1
|2"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
Ñnon_trainable_variables
Òlayer_metrics
Ómetrics
Ôlayers
 Õlayer_regularization_losses
	variables
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
õ	

}kernel
Ötrainable_variables
×regularization_losses
Ø	variables
Ù	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses"Ô
_tf_keras_layerº{"class_name": "Conv2D", "name": "conv2d_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_30", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 2002, 2002, 64]}}

	~gamma
beta
Útrainable_variables
Ûregularization_losses
Ü	variables
Ý	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses"ï
_tf_keras_layerÕ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_33", "trainable": true, "dtype": "float32", "groups": 32, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1000, 1000, 32]}}
5
}0
~1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
}0
~1
2"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
Þnon_trainable_variables
ßlayer_metrics
àmetrics
álayers
 âlayer_regularization_losses
	variables
¡__call__
+¢&call_and_return_all_conditional_losses
'¢"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
ãnon_trainable_variables
älayer_metrics
åmetrics
ælayers
 çlayer_regularization_losses
	variables
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
¸
 trainable_variables
¡regularization_losses
ènon_trainable_variables
élayer_metrics
êmetrics
ëlayers
 ìlayer_regularization_losses
¢	variables
¥__call__
+¦&call_and_return_all_conditional_losses
'¦"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
\0"
trackable_list_wrapper
¸
Çtrainable_variables
Èregularization_losses
ínon_trainable_variables
îlayer_metrics
ïmetrics
ðlayers
 ñlayer_regularization_losses
É	variables
§__call__
+¨&call_and_return_all_conditional_losses
'¨"call_and_return_conditional_losses"
_generic_user_object
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
¸
Ëtrainable_variables
Ìregularization_losses
ònon_trainable_variables
ólayer_metrics
ômetrics
õlayers
 ölayer_regularization_losses
Í	variables
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
¯0
°1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
_0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
_0"
trackable_list_wrapper
¸
Ôtrainable_variables
Õregularization_losses
÷non_trainable_variables
ølayer_metrics
ùmetrics
úlayers
 ûlayer_regularization_losses
Ö	variables
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
¸
Øtrainable_variables
Ùregularization_losses
ünon_trainable_variables
ýlayer_metrics
þmetrics
ÿlayers
 layer_regularization_losses
Ú	variables
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
µ0
¶1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
b0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
b0"
trackable_list_wrapper
¸
átrainable_variables
âregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ã	variables
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
¸
åtrainable_variables
æregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ç	variables
±__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
À0
Á1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
e0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
e0"
trackable_list_wrapper
¸
îtrainable_variables
ïregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ð	variables
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
¸
òtrainable_variables
óregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ô	variables
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
Æ0
Ç1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
h0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
h0"
trackable_list_wrapper
¸
ûtrainable_variables
üregularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
ý	variables
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
¸
ÿtrainable_variables
regularization_losses
non_trainable_variables
layer_metrics
metrics
layers
 layer_regularization_losses
	variables
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
Ñ0
Ò1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
k0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
k0"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
non_trainable_variables
 layer_metrics
¡metrics
¢layers
 £layer_regularization_losses
	variables
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
¤non_trainable_variables
¥layer_metrics
¦metrics
§layers
 ¨layer_regularization_losses
	variables
½__call__
+¾&call_and_return_all_conditional_losses
'¾"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
×0
Ø1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
n0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
n0"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
©non_trainable_variables
ªlayer_metrics
«metrics
¬layers
 ­layer_regularization_losses
	variables
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
¸
trainable_variables
regularization_losses
®non_trainable_variables
¯layer_metrics
°metrics
±layers
 ²layer_regularization_losses
	variables
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
â0
ã1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
q0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
q0"
trackable_list_wrapper
¸
¢trainable_variables
£regularization_losses
³non_trainable_variables
´layer_metrics
µmetrics
¶layers
 ·layer_regularization_losses
¤	variables
Ã__call__
+Ä&call_and_return_all_conditional_losses
'Ä"call_and_return_conditional_losses"
_generic_user_object
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
¸
¦trainable_variables
§regularization_losses
¸non_trainable_variables
¹layer_metrics
ºmetrics
»layers
 ¼layer_regularization_losses
¨	variables
Å__call__
+Æ&call_and_return_all_conditional_losses
'Æ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
è0
é1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
t0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
t0"
trackable_list_wrapper
¸
¯trainable_variables
°regularization_losses
½non_trainable_variables
¾layer_metrics
¿metrics
Àlayers
 Álayer_regularization_losses
±	variables
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
¸
³trainable_variables
´regularization_losses
Ânon_trainable_variables
Ãlayer_metrics
Ämetrics
Ålayers
 Ælayer_regularization_losses
µ	variables
É__call__
+Ê&call_and_return_all_conditional_losses
'Ê"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
ó0
ô1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
w0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
w0"
trackable_list_wrapper
¸
¼trainable_variables
½regularization_losses
Çnon_trainable_variables
Èlayer_metrics
Émetrics
Êlayers
 Ëlayer_regularization_losses
¾	variables
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
¸
Àtrainable_variables
Áregularization_losses
Ìnon_trainable_variables
Ílayer_metrics
Îmetrics
Ïlayers
 Ðlayer_regularization_losses
Â	variables
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
ù0
ú1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
z0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
z0"
trackable_list_wrapper
¸
Étrainable_variables
Êregularization_losses
Ñnon_trainable_variables
Òlayer_metrics
Ómetrics
Ôlayers
 Õlayer_regularization_losses
Ë	variables
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
¸
Ítrainable_variables
Îregularization_losses
Önon_trainable_variables
×layer_metrics
Ømetrics
Ùlayers
 Úlayer_regularization_losses
Ï	variables
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
}0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
}0"
trackable_list_wrapper
¸
Ötrainable_variables
×regularization_losses
Ûnon_trainable_variables
Ülayer_metrics
Ýmetrics
Þlayers
 ßlayer_regularization_losses
Ø	variables
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses"
_generic_user_object
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
¸
Útrainable_variables
Ûregularization_losses
ànon_trainable_variables
álayer_metrics
âmetrics
ãlayers
 älayer_regularization_losses
Ü	variables
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
2
-__inference_feed_forward_1_layer_call_fn_4853Ð
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿèè
 2
H__inference_feed_forward_1_layer_call_and_return_conditional_losses_4719Ð
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿèè
ç2ä
__inference__wrapped_model_2738À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿèè
à2Ý
)__inference_conv_2d_16_layer_call_fn_5050¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
û2ø
D__inference_conv_2d_16_layer_call_and_return_conditional_losses_5037¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
à2Ý
)__inference_conv_2d_17_layer_call_fn_5112¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
û2ø
D__inference_conv_2d_17_layer_call_and_return_conditional_losses_5099¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
à2Ý
)__inference_conv_2d_18_layer_call_fn_5174¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
û2ø
D__inference_conv_2d_18_layer_call_and_return_conditional_losses_5161¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_residual_5_layer_call_fn_5289¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_residual_5_layer_call_and_return_conditional_losses_5268¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_residual_6_layer_call_fn_5404¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_residual_6_layer_call_and_return_conditional_losses_5383¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_residual_7_layer_call_fn_5519¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_residual_7_layer_call_and_return_conditional_losses_5498¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_residual_8_layer_call_fn_5634¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_residual_8_layer_call_and_return_conditional_losses_5613¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_residual_9_layer_call_fn_5749¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_residual_9_layer_call_and_return_conditional_losses_5728¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_resize_conv_2d_2_layer_call_fn_5813¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_resize_conv_2d_2_layer_call_and_return_conditional_losses_5800¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ù2Ö
/__inference_resize_conv_2d_3_layer_call_fn_5877¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_resize_conv_2d_3_layer_call_and_return_conditional_losses_5864¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
à2Ý
)__inference_conv_2d_31_layer_call_fn_5938¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
û2ø
D__inference_conv_2d_31_layer_call_and_return_conditional_losses_5925¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÉBÆ
"__inference_signature_wrapper_4988input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_18_layer_call_fn_2792×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
²2¯
S__inference_instance_normalization_18_layer_call_and_return_conditional_losses_2782×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_19_layer_call_fn_2846×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
²2¯
S__inference_instance_normalization_19_layer_call_and_return_conditional_losses_2836×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_20_layer_call_fn_2900Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_20_layer_call_and_return_conditional_losses_2890Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jrelu
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_35_layer_call_fn_3602×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
²2¯
S__inference_instance_normalization_35_layer_call_and_return_conditional_losses_3592×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_21_layer_call_fn_2954Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_21_layer_call_and_return_conditional_losses_2944Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_22_layer_call_fn_3008Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_22_layer_call_and_return_conditional_losses_2998Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_23_layer_call_fn_3062Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_23_layer_call_and_return_conditional_losses_3052Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_24_layer_call_fn_3116Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_24_layer_call_and_return_conditional_losses_3106Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_25_layer_call_fn_3170Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_25_layer_call_and_return_conditional_losses_3160Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_26_layer_call_fn_3224Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_26_layer_call_and_return_conditional_losses_3214Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_27_layer_call_fn_3278Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_27_layer_call_and_return_conditional_losses_3268Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_28_layer_call_fn_3332Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_28_layer_call_and_return_conditional_losses_3322Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_29_layer_call_fn_3386Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_29_layer_call_and_return_conditional_losses_3376Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_30_layer_call_fn_3440Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
³2°
S__inference_instance_normalization_30_layer_call_and_return_conditional_losses_3430Ø
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *8¢5
30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_31_layer_call_fn_3494×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
²2¯
S__inference_instance_normalization_31_layer_call_and_return_conditional_losses_3484×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
8__inference_instance_normalization_33_layer_call_fn_3548×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
²2¯
S__inference_instance_normalization_33_layer_call_and_return_conditional_losses_3538×
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *7¢4
2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9
J

Const_10
J

Const_11
J

Const_12
J

Const_13
J

Const_14
J

Const_15ô
__inference__wrapped_model_2738ÐS×STUØVWXÙYZ[Ú\]^Û_`aÜbcdÝefgÞhijßklmànopáqrsâtuvãwxyäz{|å}~æ:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿèè
ª "=ª:
8
output_1,)
output_1ÿÿÿÿÿÿÿÿÿèè¿
D__inference_conv_2d_16_layer_call_and_return_conditional_losses_5037w×STU=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿèè 
 
)__inference_conv_2d_16_layer_call_fn_5050j×STU=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè
p
ª ""ÿÿÿÿÿÿÿÿÿèè ¿
D__inference_conv_2d_17_layer_call_and_return_conditional_losses_5099wØVWX=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè 
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿôô@
 
)__inference_conv_2d_17_layer_call_fn_5112jØVWX=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè 
p
ª ""ÿÿÿÿÿÿÿÿÿôô@À
D__inference_conv_2d_18_layer_call_and_return_conditional_losses_5161xÙYZ[=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿôô@
p
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
)__inference_conv_2d_18_layer_call_fn_5174kÙYZ[=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿôô@
p
ª "# ÿÿÿÿÿÿÿÿÿúúÂ
D__inference_conv_2d_31_layer_call_and_return_conditional_losses_5925zæ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè 
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿèè
 
)__inference_conv_2d_31_layer_call_fn_5938mæ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè 
p 
ª ""ÿÿÿÿÿÿÿÿÿèè
H__inference_feed_forward_1_layer_call_and_return_conditional_losses_4719ÂS×STUØVWXÙYZ[Ú\]^Û_`aÜbcdÝefgÞhijßklmànopáqrsâtuvãwxyäz{|å}~æ:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿèè
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿèè
 ç
-__inference_feed_forward_1_layer_call_fn_4853µS×STUØVWXÙYZ[Ú\]^Û_`aÜbcdÝefgÞhijßklmànopáqrsâtuvãwxyäz{|å}~æ:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿèè
ª ""ÿÿÿÿÿÿÿÿÿèèè
S__inference_instance_normalization_18_layer_call_and_return_conditional_losses_2782TUI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 À
8__inference_instance_normalization_18_layer_call_fn_2792TUI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ è
S__inference_instance_normalization_19_layer_call_and_return_conditional_losses_2836WXI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 À
8__inference_instance_normalization_19_layer_call_fn_2846WXI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ê
S__inference_instance_normalization_20_layer_call_and_return_conditional_losses_2890Z[J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_20_layer_call_fn_2900Z[J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_21_layer_call_and_return_conditional_losses_2944]^J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_21_layer_call_fn_2954]^J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_22_layer_call_and_return_conditional_losses_2998`aJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_22_layer_call_fn_3008`aJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_23_layer_call_and_return_conditional_losses_3052cdJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_23_layer_call_fn_3062cdJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_24_layer_call_and_return_conditional_losses_3106fgJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_24_layer_call_fn_3116fgJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_25_layer_call_and_return_conditional_losses_3160ijJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_25_layer_call_fn_3170ijJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_26_layer_call_and_return_conditional_losses_3214lmJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_26_layer_call_fn_3224lmJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_27_layer_call_and_return_conditional_losses_3268opJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_27_layer_call_fn_3278opJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_28_layer_call_and_return_conditional_losses_3322rsJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_28_layer_call_fn_3332rsJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_29_layer_call_and_return_conditional_losses_3376uvJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_29_layer_call_fn_3386uvJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_30_layer_call_and_return_conditional_losses_3430xyJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_30_layer_call_fn_3440xyJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè
S__inference_instance_normalization_31_layer_call_and_return_conditional_losses_3484{|I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 À
8__inference_instance_normalization_31_layer_call_fn_3494{|I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@è
S__inference_instance_normalization_33_layer_call_and_return_conditional_losses_3538~I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 À
8__inference_instance_normalization_33_layer_call_fn_3548~I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ê
S__inference_instance_normalization_35_layer_call_and_return_conditional_losses_3592I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_35_layer_call_fn_3602I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÂ
D__inference_residual_5_layer_call_and_return_conditional_losses_5268z
Ú\]^Û_`a:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
)__inference_residual_5_layer_call_fn_5289m
Ú\]^Û_`a:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÂ
D__inference_residual_6_layer_call_and_return_conditional_losses_5383z
ÜbcdÝefg:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
)__inference_residual_6_layer_call_fn_5404m
ÜbcdÝefg:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÂ
D__inference_residual_7_layer_call_and_return_conditional_losses_5498z
Þhijßklm:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
)__inference_residual_7_layer_call_fn_5519m
Þhijßklm:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÂ
D__inference_residual_8_layer_call_and_return_conditional_losses_5613z
ànopáqrs:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
)__inference_residual_8_layer_call_fn_5634m
ànopáqrs:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÂ
D__inference_residual_9_layer_call_and_return_conditional_losses_5728z
âtuvãwxy:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
)__inference_residual_9_layer_call_fn_5749m
âtuvãwxy:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÂ
J__inference_resize_conv_2d_2_layer_call_and_return_conditional_losses_5800täz{|:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿôô@
 
/__inference_resize_conv_2d_2_layer_call_fn_5813gäz{|:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª ""ÿÿÿÿÿÿÿÿÿôô@Á
J__inference_resize_conv_2d_3_layer_call_and_return_conditional_losses_5864så}~9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿôô@
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿèè 
 
/__inference_resize_conv_2d_3_layer_call_fn_5877få}~9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿôô@
ª ""ÿÿÿÿÿÿÿÿÿèè 
"__inference_signature_wrapper_4988ÛS×STUØVWXÙYZ[Ú\]^Û_`aÜbcdÝefgÞhijßklmànopáqrsâtuvãwxyäz{|å}~æE¢B
¢ 
;ª8
6
input_1+(
input_1ÿÿÿÿÿÿÿÿÿèè"=ª:
8
output_1,)
output_1ÿÿÿÿÿÿÿÿÿèè