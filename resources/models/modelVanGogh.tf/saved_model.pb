ëÄ<
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
 "serve*2.4.12v2.4.1-0-g85c8b2a817f8ÝÇ4
¸
*feed_forward_2/conv_2d_32/conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		 *;
shared_name,*feed_forward_2/conv_2d_32/conv2d_32/kernel
±
>feed_forward_2/conv_2d_32/conv2d_32/kernel/Read/ReadVariableOpReadVariableOp*feed_forward_2/conv_2d_32/conv2d_32/kernel*&
_output_shapes
:		 *
dtype0
Ê
9feed_forward_2/conv_2d_32/instance_normalization_36/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *J
shared_name;9feed_forward_2/conv_2d_32/instance_normalization_36/gamma
Ã
Mfeed_forward_2/conv_2d_32/instance_normalization_36/gamma/Read/ReadVariableOpReadVariableOp9feed_forward_2/conv_2d_32/instance_normalization_36/gamma*
_output_shapes
: *
dtype0
È
8feed_forward_2/conv_2d_32/instance_normalization_36/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *I
shared_name:8feed_forward_2/conv_2d_32/instance_normalization_36/beta
Á
Lfeed_forward_2/conv_2d_32/instance_normalization_36/beta/Read/ReadVariableOpReadVariableOp8feed_forward_2/conv_2d_32/instance_normalization_36/beta*
_output_shapes
: *
dtype0
¸
*feed_forward_2/conv_2d_33/conv2d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*;
shared_name,*feed_forward_2/conv_2d_33/conv2d_33/kernel
±
>feed_forward_2/conv_2d_33/conv2d_33/kernel/Read/ReadVariableOpReadVariableOp*feed_forward_2/conv_2d_33/conv2d_33/kernel*&
_output_shapes
: @*
dtype0
Ê
9feed_forward_2/conv_2d_33/instance_normalization_37/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*J
shared_name;9feed_forward_2/conv_2d_33/instance_normalization_37/gamma
Ã
Mfeed_forward_2/conv_2d_33/instance_normalization_37/gamma/Read/ReadVariableOpReadVariableOp9feed_forward_2/conv_2d_33/instance_normalization_37/gamma*
_output_shapes
:@*
dtype0
È
8feed_forward_2/conv_2d_33/instance_normalization_37/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*I
shared_name:8feed_forward_2/conv_2d_33/instance_normalization_37/beta
Á
Lfeed_forward_2/conv_2d_33/instance_normalization_37/beta/Read/ReadVariableOpReadVariableOp8feed_forward_2/conv_2d_33/instance_normalization_37/beta*
_output_shapes
:@*
dtype0
¹
*feed_forward_2/conv_2d_34/conv2d_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*feed_forward_2/conv_2d_34/conv2d_34/kernel
²
>feed_forward_2/conv_2d_34/conv2d_34/kernel/Read/ReadVariableOpReadVariableOp*feed_forward_2/conv_2d_34/conv2d_34/kernel*'
_output_shapes
:@*
dtype0
Ë
9feed_forward_2/conv_2d_34/instance_normalization_38/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9feed_forward_2/conv_2d_34/instance_normalization_38/gamma
Ä
Mfeed_forward_2/conv_2d_34/instance_normalization_38/gamma/Read/ReadVariableOpReadVariableOp9feed_forward_2/conv_2d_34/instance_normalization_38/gamma*
_output_shapes	
:*
dtype0
É
8feed_forward_2/conv_2d_34/instance_normalization_38/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8feed_forward_2/conv_2d_34/instance_normalization_38/beta
Â
Lfeed_forward_2/conv_2d_34/instance_normalization_38/beta/Read/ReadVariableOpReadVariableOp8feed_forward_2/conv_2d_34/instance_normalization_38/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_10/conv_2d_35/conv2d_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_10/conv_2d_35/conv2d_35/kernel
Ë
Jfeed_forward_2/residual_10/conv_2d_35/conv2d_35/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_10/conv_2d_35/conv2d_35/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/gamma
Ü
Yfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/beta
Ú
Xfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_10/conv_2d_36/conv2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_10/conv_2d_36/conv2d_36/kernel
Ë
Jfeed_forward_2/residual_10/conv_2d_36/conv2d_36/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_10/conv_2d_36/conv2d_36/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/gamma
Ü
Yfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/beta
Ú
Xfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_11/conv_2d_37/conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_11/conv_2d_37/conv2d_37/kernel
Ë
Jfeed_forward_2/residual_11/conv_2d_37/conv2d_37/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_11/conv_2d_37/conv2d_37/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/gamma
Ü
Yfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/beta
Ú
Xfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_11/conv_2d_38/conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_11/conv_2d_38/conv2d_38/kernel
Ë
Jfeed_forward_2/residual_11/conv_2d_38/conv2d_38/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_11/conv_2d_38/conv2d_38/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/gamma
Ü
Yfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/beta
Ú
Xfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_12/conv_2d_39/conv2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_12/conv_2d_39/conv2d_39/kernel
Ë
Jfeed_forward_2/residual_12/conv_2d_39/conv2d_39/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_12/conv_2d_39/conv2d_39/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/gamma
Ü
Yfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/beta
Ú
Xfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_12/conv_2d_40/conv2d_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_12/conv_2d_40/conv2d_40/kernel
Ë
Jfeed_forward_2/residual_12/conv_2d_40/conv2d_40/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_12/conv_2d_40/conv2d_40/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/gamma
Ü
Yfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/beta
Ú
Xfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_13/conv_2d_41/conv2d_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_13/conv_2d_41/conv2d_41/kernel
Ë
Jfeed_forward_2/residual_13/conv_2d_41/conv2d_41/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_13/conv_2d_41/conv2d_41/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/gamma
Ü
Yfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/beta
Ú
Xfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_13/conv_2d_42/conv2d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_13/conv_2d_42/conv2d_42/kernel
Ë
Jfeed_forward_2/residual_13/conv_2d_42/conv2d_42/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_13/conv_2d_42/conv2d_42/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/gamma
Ü
Yfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/beta
Ú
Xfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_14/conv_2d_43/conv2d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_14/conv_2d_43/conv2d_43/kernel
Ë
Jfeed_forward_2/residual_14/conv_2d_43/conv2d_43/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_14/conv_2d_43/conv2d_43/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/gamma
Ü
Yfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/beta
Ú
Xfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/beta*
_output_shapes	
:*
dtype0
Ò
6feed_forward_2/residual_14/conv_2d_44/conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86feed_forward_2/residual_14/conv_2d_44/conv2d_44/kernel
Ë
Jfeed_forward_2/residual_14/conv_2d_44/conv2d_44/kernel/Read/ReadVariableOpReadVariableOp6feed_forward_2/residual_14/conv_2d_44/conv2d_44/kernel*(
_output_shapes
:*
dtype0
ã
Efeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*V
shared_nameGEfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/gamma
Ü
Yfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/gamma/Read/ReadVariableOpReadVariableOpEfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/gamma*
_output_shapes	
:*
dtype0
á
Dfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/beta
Ú
Xfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/beta/Read/ReadVariableOpReadVariableOpDfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/beta*
_output_shapes	
:*
dtype0
Û
;feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*L
shared_name=;feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/kernel
Ô
Ofeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/kernel/Read/ReadVariableOpReadVariableOp;feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/kernel*'
_output_shapes
:@*
dtype0
ì
Jfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*[
shared_nameLJfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/gamma
å
^feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/gamma/Read/ReadVariableOpReadVariableOpJfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/gamma*
_output_shapes
:@*
dtype0
ê
Ifeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*Z
shared_nameKIfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/beta
ã
]feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/beta/Read/ReadVariableOpReadVariableOpIfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/beta*
_output_shapes
:@*
dtype0
Ú
;feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *L
shared_name=;feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/kernel
Ó
Ofeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/kernel/Read/ReadVariableOpReadVariableOp;feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/kernel*&
_output_shapes
:@ *
dtype0
ì
Jfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *[
shared_nameLJfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/gamma
å
^feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/gamma/Read/ReadVariableOpReadVariableOpJfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/gamma*
_output_shapes
: *
dtype0
ê
Ifeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *Z
shared_nameKIfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/beta
ã
]feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/beta/Read/ReadVariableOpReadVariableOpIfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/beta*
_output_shapes
: *
dtype0
¸
*feed_forward_2/conv_2d_47/conv2d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		 *;
shared_name,*feed_forward_2/conv_2d_47/conv2d_47/kernel
±
>feed_forward_2/conv_2d_47/conv2d_47/kernel/Read/ReadVariableOpReadVariableOp*feed_forward_2/conv_2d_47/conv2d_47/kernel*&
_output_shapes
:		 *
dtype0
Ê
9feed_forward_2/conv_2d_47/instance_normalization_53/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9feed_forward_2/conv_2d_47/instance_normalization_53/gamma
Ã
Mfeed_forward_2/conv_2d_47/instance_normalization_53/gamma/Read/ReadVariableOpReadVariableOp9feed_forward_2/conv_2d_47/instance_normalization_53/gamma*
_output_shapes
:*
dtype0
È
8feed_forward_2/conv_2d_47/instance_normalization_53/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8feed_forward_2/conv_2d_47/instance_normalization_53/beta
Á
Lfeed_forward_2/conv_2d_47/instance_normalization_53/beta/Read/ReadVariableOpReadVariableOp8feed_forward_2/conv_2d_47/instance_normalization_53/beta*
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
ÏÓ
Const_16Const"/device:CPU:0*
_output_shapes
: *
dtype0*Ó
valueûÒB÷Ò BïÒ
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
	variables
regularization_losses
	keras_api

signatures
q

conv2d
instance_norm
trainable_variables
	variables
regularization_losses
	keras_api
q

conv2d
instance_norm
trainable_variables
	variables
regularization_losses
	keras_api
q

conv2d
instance_norm
trainable_variables
 	variables
!regularization_losses
"	keras_api
h
	#conv1
	$conv2
%trainable_variables
&	variables
'regularization_losses
(	keras_api
h
	)conv1
	*conv2
+trainable_variables
,	variables
-regularization_losses
.	keras_api
h
	/conv1
	0conv2
1trainable_variables
2	variables
3regularization_losses
4	keras_api
h
	5conv1
	6conv2
7trainable_variables
8	variables
9regularization_losses
:	keras_api
h
	;conv1
	<conv2
=trainable_variables
>	variables
?regularization_losses
@	keras_api
o
Aconv
Binstance_norm
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
o
Gconv
Hinstance_norm
Itrainable_variables
J	variables
Kregularization_losses
L	keras_api
q

Mconv2d
Ninstance_norm
Otrainable_variables
P	variables
Qregularization_losses
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
²
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
trainable_variables
	variables
layers
regularization_losses
 
b

Skernel
trainable_variables
	variables
regularization_losses
	keras_api
k
	Tgamma
Ubeta
trainable_variables
	variables
regularization_losses
	keras_api

S0
T1
U2

S0
T1
U2
 
²
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
trainable_variables
	variables
layers
regularization_losses
b

Vkernel
trainable_variables
	variables
regularization_losses
	keras_api
k
	Wgamma
Xbeta
trainable_variables
	variables
regularization_losses
	keras_api

V0
W1
X2

V0
W1
X2
 
²
 layer_regularization_losses
non_trainable_variables
metrics
 layer_metrics
trainable_variables
	variables
¡layers
regularization_losses
b

Ykernel
¢trainable_variables
£	variables
¤regularization_losses
¥	keras_api
k
	Zgamma
[beta
¦trainable_variables
§	variables
¨regularization_losses
©	keras_api

Y0
Z1
[2

Y0
Z1
[2
 
²
 ªlayer_regularization_losses
«non_trainable_variables
¬metrics
­layer_metrics
trainable_variables
 	variables
®layers
!regularization_losses
w
¯conv2d
°instance_norm
±trainable_variables
²	variables
³regularization_losses
´	keras_api
w
µconv2d
¶instance_norm
·trainable_variables
¸	variables
¹regularization_losses
º	keras_api
*
\0
]1
^2
_3
`4
a5
*
\0
]1
^2
_3
`4
a5
 
²
 »layer_regularization_losses
¼non_trainable_variables
½metrics
¾layer_metrics
%trainable_variables
&	variables
¿layers
'regularization_losses
w
Àconv2d
Áinstance_norm
Âtrainable_variables
Ã	variables
Äregularization_losses
Å	keras_api
w
Æconv2d
Çinstance_norm
Ètrainable_variables
É	variables
Êregularization_losses
Ë	keras_api
*
b0
c1
d2
e3
f4
g5
*
b0
c1
d2
e3
f4
g5
 
²
 Ìlayer_regularization_losses
Ínon_trainable_variables
Îmetrics
Ïlayer_metrics
+trainable_variables
,	variables
Ðlayers
-regularization_losses
w
Ñconv2d
Òinstance_norm
Ótrainable_variables
Ô	variables
Õregularization_losses
Ö	keras_api
w
×conv2d
Øinstance_norm
Ùtrainable_variables
Ú	variables
Ûregularization_losses
Ü	keras_api
*
h0
i1
j2
k3
l4
m5
*
h0
i1
j2
k3
l4
m5
 
²
 Ýlayer_regularization_losses
Þnon_trainable_variables
ßmetrics
àlayer_metrics
1trainable_variables
2	variables
álayers
3regularization_losses
w
âconv2d
ãinstance_norm
ätrainable_variables
å	variables
æregularization_losses
ç	keras_api
w
èconv2d
éinstance_norm
êtrainable_variables
ë	variables
ìregularization_losses
í	keras_api
*
n0
o1
p2
q3
r4
s5
*
n0
o1
p2
q3
r4
s5
 
²
 îlayer_regularization_losses
ïnon_trainable_variables
ðmetrics
ñlayer_metrics
7trainable_variables
8	variables
òlayers
9regularization_losses
w
óconv2d
ôinstance_norm
õtrainable_variables
ö	variables
÷regularization_losses
ø	keras_api
w
ùconv2d
úinstance_norm
ûtrainable_variables
ü	variables
ýregularization_losses
þ	keras_api
*
t0
u1
v2
w3
x4
y5
*
t0
u1
v2
w3
x4
y5
 
²
 ÿlayer_regularization_losses
non_trainable_variables
metrics
layer_metrics
=trainable_variables
>	variables
layers
?regularization_losses
w
conv2d
instance_norm
trainable_variables
	variables
regularization_losses
	keras_api

	keras_api

z0
{1
|2

z0
{1
|2
 
²
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
Ctrainable_variables
D	variables
layers
Eregularization_losses
w
conv2d
instance_norm
trainable_variables
	variables
regularization_losses
	keras_api

	keras_api

}0
~1
2

}0
~1
2
 
²
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
Itrainable_variables
J	variables
layers
Kregularization_losses
c
kernel
trainable_variables
	variables
regularization_losses
	keras_api
m

gamma
	beta
 trainable_variables
¡	variables
¢regularization_losses
£	keras_api

0
1
2

0
1
2
 
²
 ¤layer_regularization_losses
¥non_trainable_variables
¦metrics
§layer_metrics
Otrainable_variables
P	variables
¨layers
Qregularization_losses
pn
VARIABLE_VALUE*feed_forward_2/conv_2d_32/conv2d_32/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE9feed_forward_2/conv_2d_32/instance_normalization_36/gamma0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE8feed_forward_2/conv_2d_32/instance_normalization_36/beta0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE*feed_forward_2/conv_2d_33/conv2d_33/kernel0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE9feed_forward_2/conv_2d_33/instance_normalization_37/gamma0trainable_variables/4/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE8feed_forward_2/conv_2d_33/instance_normalization_37/beta0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE*feed_forward_2/conv_2d_34/conv2d_34/kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE9feed_forward_2/conv_2d_34/instance_normalization_38/gamma0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE8feed_forward_2/conv_2d_34/instance_normalization_38/beta0trainable_variables/8/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE6feed_forward_2/residual_10/conv_2d_35/conv2d_35/kernel0trainable_variables/9/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/gamma1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/beta1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE6feed_forward_2/residual_10/conv_2d_36/conv2d_36/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/gamma1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/beta1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE6feed_forward_2/residual_11/conv_2d_37/conv2d_37/kernel1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/gamma1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/beta1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE6feed_forward_2/residual_11/conv_2d_38/conv2d_38/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/gamma1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/beta1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE6feed_forward_2/residual_12/conv_2d_39/conv2d_39/kernel1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/gamma1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/beta1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE6feed_forward_2/residual_12/conv_2d_40/conv2d_40/kernel1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/gamma1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/beta1trainable_variables/26/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE6feed_forward_2/residual_13/conv_2d_41/conv2d_41/kernel1trainable_variables/27/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/gamma1trainable_variables/28/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/beta1trainable_variables/29/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE6feed_forward_2/residual_13/conv_2d_42/conv2d_42/kernel1trainable_variables/30/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/gamma1trainable_variables/31/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/beta1trainable_variables/32/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE6feed_forward_2/residual_14/conv_2d_43/conv2d_43/kernel1trainable_variables/33/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/gamma1trainable_variables/34/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/beta1trainable_variables/35/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUE6feed_forward_2/residual_14/conv_2d_44/conv2d_44/kernel1trainable_variables/36/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEEfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/gamma1trainable_variables/37/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEDfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/beta1trainable_variables/38/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE;feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/kernel1trainable_variables/39/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEJfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/gamma1trainable_variables/40/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEIfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/beta1trainable_variables/41/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE;feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/kernel1trainable_variables/42/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEJfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/gamma1trainable_variables/43/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEIfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/beta1trainable_variables/44/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE*feed_forward_2/conv_2d_47/conv2d_47/kernel1trainable_variables/45/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUE9feed_forward_2/conv_2d_47/instance_normalization_53/gamma1trainable_variables/46/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUE8feed_forward_2/conv_2d_47/instance_normalization_53/beta1trainable_variables/47/.ATTRIBUTES/VARIABLE_VALUE
 
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

S0

S0
 
µ
 ©layer_regularization_losses
ªnon_trainable_variables
«metrics
¬layer_metrics
trainable_variables
	variables
­layers
regularization_losses

T0
U1

T0
U1
 
µ
 ®layer_regularization_losses
¯non_trainable_variables
°metrics
±layer_metrics
trainable_variables
	variables
²layers
regularization_losses
 
 
 
 

0
1

V0

V0
 
µ
 ³layer_regularization_losses
´non_trainable_variables
µmetrics
¶layer_metrics
trainable_variables
	variables
·layers
regularization_losses

W0
X1

W0
X1
 
µ
 ¸layer_regularization_losses
¹non_trainable_variables
ºmetrics
»layer_metrics
trainable_variables
	variables
¼layers
regularization_losses
 
 
 
 

0
1

Y0

Y0
 
µ
 ½layer_regularization_losses
¾non_trainable_variables
¿metrics
Àlayer_metrics
¢trainable_variables
£	variables
Álayers
¤regularization_losses

Z0
[1

Z0
[1
 
µ
 Âlayer_regularization_losses
Ãnon_trainable_variables
Ämetrics
Ålayer_metrics
¦trainable_variables
§	variables
Ælayers
¨regularization_losses
 
 
 
 

0
1
b

\kernel
Çtrainable_variables
È	variables
Éregularization_losses
Ê	keras_api
k
	]gamma
^beta
Ëtrainable_variables
Ì	variables
Íregularization_losses
Î	keras_api

\0
]1
^2

\0
]1
^2
 
µ
 Ïlayer_regularization_losses
Ðnon_trainable_variables
Ñmetrics
Òlayer_metrics
±trainable_variables
²	variables
Ólayers
³regularization_losses
b

_kernel
Ôtrainable_variables
Õ	variables
Öregularization_losses
×	keras_api
k
	`gamma
abeta
Øtrainable_variables
Ù	variables
Úregularization_losses
Û	keras_api

_0
`1
a2

_0
`1
a2
 
µ
 Ülayer_regularization_losses
Ýnon_trainable_variables
Þmetrics
ßlayer_metrics
·trainable_variables
¸	variables
àlayers
¹regularization_losses
 
 
 
 

#0
$1
b

bkernel
átrainable_variables
â	variables
ãregularization_losses
ä	keras_api
k
	cgamma
dbeta
åtrainable_variables
æ	variables
çregularization_losses
è	keras_api

b0
c1
d2

b0
c1
d2
 
µ
 élayer_regularization_losses
ênon_trainable_variables
ëmetrics
ìlayer_metrics
Âtrainable_variables
Ã	variables
ílayers
Äregularization_losses
b

ekernel
îtrainable_variables
ï	variables
ðregularization_losses
ñ	keras_api
k
	fgamma
gbeta
òtrainable_variables
ó	variables
ôregularization_losses
õ	keras_api

e0
f1
g2

e0
f1
g2
 
µ
 ölayer_regularization_losses
÷non_trainable_variables
ømetrics
ùlayer_metrics
Ètrainable_variables
É	variables
úlayers
Êregularization_losses
 
 
 
 

)0
*1
b

hkernel
ûtrainable_variables
ü	variables
ýregularization_losses
þ	keras_api
k
	igamma
jbeta
ÿtrainable_variables
	variables
regularization_losses
	keras_api

h0
i1
j2

h0
i1
j2
 
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
Ótrainable_variables
Ô	variables
layers
Õregularization_losses
b

kkernel
trainable_variables
	variables
regularization_losses
	keras_api
k
	lgamma
mbeta
trainable_variables
	variables
regularization_losses
	keras_api

k0
l1
m2

k0
l1
m2
 
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
Ùtrainable_variables
Ú	variables
layers
Ûregularization_losses
 
 
 
 

/0
01
b

nkernel
trainable_variables
	variables
regularization_losses
	keras_api
k
	ogamma
pbeta
trainable_variables
	variables
regularization_losses
	keras_api

n0
o1
p2

n0
o1
p2
 
µ
 layer_regularization_losses
non_trainable_variables
metrics
 layer_metrics
ätrainable_variables
å	variables
¡layers
æregularization_losses
b

qkernel
¢trainable_variables
£	variables
¤regularization_losses
¥	keras_api
k
	rgamma
sbeta
¦trainable_variables
§	variables
¨regularization_losses
©	keras_api

q0
r1
s2

q0
r1
s2
 
µ
 ªlayer_regularization_losses
«non_trainable_variables
¬metrics
­layer_metrics
êtrainable_variables
ë	variables
®layers
ìregularization_losses
 
 
 
 

50
61
b

tkernel
¯trainable_variables
°	variables
±regularization_losses
²	keras_api
k
	ugamma
vbeta
³trainable_variables
´	variables
µregularization_losses
¶	keras_api

t0
u1
v2

t0
u1
v2
 
µ
 ·layer_regularization_losses
¸non_trainable_variables
¹metrics
ºlayer_metrics
õtrainable_variables
ö	variables
»layers
÷regularization_losses
b

wkernel
¼trainable_variables
½	variables
¾regularization_losses
¿	keras_api
k
	xgamma
ybeta
Àtrainable_variables
Á	variables
Âregularization_losses
Ã	keras_api

w0
x1
y2

w0
x1
y2
 
µ
 Älayer_regularization_losses
Ånon_trainable_variables
Æmetrics
Çlayer_metrics
ûtrainable_variables
ü	variables
Èlayers
ýregularization_losses
 
 
 
 

;0
<1
b

zkernel
Étrainable_variables
Ê	variables
Ëregularization_losses
Ì	keras_api
k
	{gamma
|beta
Ítrainable_variables
Î	variables
Ïregularization_losses
Ð	keras_api

z0
{1
|2

z0
{1
|2
 
µ
 Ñlayer_regularization_losses
Ònon_trainable_variables
Ómetrics
Ôlayer_metrics
trainable_variables
	variables
Õlayers
regularization_losses
 
 
 
 
 

A0
B1
b

}kernel
Ötrainable_variables
×	variables
Øregularization_losses
Ù	keras_api
k
	~gamma
beta
Útrainable_variables
Û	variables
Üregularization_losses
Ý	keras_api

}0
~1
2

}0
~1
2
 
µ
 Þlayer_regularization_losses
ßnon_trainable_variables
àmetrics
álayer_metrics
trainable_variables
	variables
âlayers
regularization_losses
 
 
 
 
 

G0
H1

0

0
 
µ
 ãlayer_regularization_losses
änon_trainable_variables
åmetrics
ælayer_metrics
trainable_variables
	variables
çlayers
regularization_losses

0
1

0
1
 
µ
 èlayer_regularization_losses
énon_trainable_variables
êmetrics
ëlayer_metrics
 trainable_variables
¡	variables
ìlayers
¢regularization_losses
 
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

\0

\0
 
µ
 ílayer_regularization_losses
înon_trainable_variables
ïmetrics
ðlayer_metrics
Çtrainable_variables
È	variables
ñlayers
Éregularization_losses

]0
^1

]0
^1
 
µ
 òlayer_regularization_losses
ónon_trainable_variables
ômetrics
õlayer_metrics
Ëtrainable_variables
Ì	variables
ölayers
Íregularization_losses
 
 
 
 

¯0
°1

_0

_0
 
µ
 ÷layer_regularization_losses
ønon_trainable_variables
ùmetrics
úlayer_metrics
Ôtrainable_variables
Õ	variables
ûlayers
Öregularization_losses

`0
a1

`0
a1
 
µ
 ülayer_regularization_losses
ýnon_trainable_variables
þmetrics
ÿlayer_metrics
Øtrainable_variables
Ù	variables
layers
Úregularization_losses
 
 
 
 

µ0
¶1

b0

b0
 
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
átrainable_variables
â	variables
layers
ãregularization_losses

c0
d1

c0
d1
 
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
åtrainable_variables
æ	variables
layers
çregularization_losses
 
 
 
 

À0
Á1

e0

e0
 
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
îtrainable_variables
ï	variables
layers
ðregularization_losses

f0
g1

f0
g1
 
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
òtrainable_variables
ó	variables
layers
ôregularization_losses
 
 
 
 

Æ0
Ç1

h0

h0
 
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
ûtrainable_variables
ü	variables
layers
ýregularization_losses

i0
j1

i0
j1
 
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
ÿtrainable_variables
	variables
layers
regularization_losses
 
 
 
 

Ñ0
Ò1

k0

k0
 
µ
 layer_regularization_losses
 non_trainable_variables
¡metrics
¢layer_metrics
trainable_variables
	variables
£layers
regularization_losses

l0
m1

l0
m1
 
µ
 ¤layer_regularization_losses
¥non_trainable_variables
¦metrics
§layer_metrics
trainable_variables
	variables
¨layers
regularization_losses
 
 
 
 

×0
Ø1

n0

n0
 
µ
 ©layer_regularization_losses
ªnon_trainable_variables
«metrics
¬layer_metrics
trainable_variables
	variables
­layers
regularization_losses

o0
p1

o0
p1
 
µ
 ®layer_regularization_losses
¯non_trainable_variables
°metrics
±layer_metrics
trainable_variables
	variables
²layers
regularization_losses
 
 
 
 

â0
ã1

q0

q0
 
µ
 ³layer_regularization_losses
´non_trainable_variables
µmetrics
¶layer_metrics
¢trainable_variables
£	variables
·layers
¤regularization_losses

r0
s1

r0
s1
 
µ
 ¸layer_regularization_losses
¹non_trainable_variables
ºmetrics
»layer_metrics
¦trainable_variables
§	variables
¼layers
¨regularization_losses
 
 
 
 

è0
é1

t0

t0
 
µ
 ½layer_regularization_losses
¾non_trainable_variables
¿metrics
Àlayer_metrics
¯trainable_variables
°	variables
Álayers
±regularization_losses

u0
v1

u0
v1
 
µ
 Âlayer_regularization_losses
Ãnon_trainable_variables
Ämetrics
Ålayer_metrics
³trainable_variables
´	variables
Ælayers
µregularization_losses
 
 
 
 

ó0
ô1

w0

w0
 
µ
 Çlayer_regularization_losses
Ènon_trainable_variables
Émetrics
Êlayer_metrics
¼trainable_variables
½	variables
Ëlayers
¾regularization_losses

x0
y1

x0
y1
 
µ
 Ìlayer_regularization_losses
Ínon_trainable_variables
Îmetrics
Ïlayer_metrics
Àtrainable_variables
Á	variables
Ðlayers
Âregularization_losses
 
 
 
 

ù0
ú1

z0

z0
 
µ
 Ñlayer_regularization_losses
Ònon_trainable_variables
Ómetrics
Ôlayer_metrics
Étrainable_variables
Ê	variables
Õlayers
Ëregularization_losses

{0
|1

{0
|1
 
µ
 Ölayer_regularization_losses
×non_trainable_variables
Ømetrics
Ùlayer_metrics
Ítrainable_variables
Î	variables
Úlayers
Ïregularization_losses
 
 
 
 

0
1

}0

}0
 
µ
 Ûlayer_regularization_losses
Ünon_trainable_variables
Ýmetrics
Þlayer_metrics
Ötrainable_variables
×	variables
ßlayers
Øregularization_losses

~0
1

~0
1
 
µ
 àlayer_regularization_losses
ánon_trainable_variables
âmetrics
ãlayer_metrics
Útrainable_variables
Û	variables
älayers
Üregularization_losses
 
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

serving_default_input_1Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿèè

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Const*feed_forward_2/conv_2d_32/conv2d_32/kernel9feed_forward_2/conv_2d_32/instance_normalization_36/gamma8feed_forward_2/conv_2d_32/instance_normalization_36/betaConst_1*feed_forward_2/conv_2d_33/conv2d_33/kernel9feed_forward_2/conv_2d_33/instance_normalization_37/gamma8feed_forward_2/conv_2d_33/instance_normalization_37/betaConst_2*feed_forward_2/conv_2d_34/conv2d_34/kernel9feed_forward_2/conv_2d_34/instance_normalization_38/gamma8feed_forward_2/conv_2d_34/instance_normalization_38/betaConst_36feed_forward_2/residual_10/conv_2d_35/conv2d_35/kernelEfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/gammaDfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/betaConst_46feed_forward_2/residual_10/conv_2d_36/conv2d_36/kernelEfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/gammaDfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/betaConst_56feed_forward_2/residual_11/conv_2d_37/conv2d_37/kernelEfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/gammaDfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/betaConst_66feed_forward_2/residual_11/conv_2d_38/conv2d_38/kernelEfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/gammaDfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/betaConst_76feed_forward_2/residual_12/conv_2d_39/conv2d_39/kernelEfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/gammaDfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/betaConst_86feed_forward_2/residual_12/conv_2d_40/conv2d_40/kernelEfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/gammaDfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/betaConst_96feed_forward_2/residual_13/conv_2d_41/conv2d_41/kernelEfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/gammaDfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/betaConst_106feed_forward_2/residual_13/conv_2d_42/conv2d_42/kernelEfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/gammaDfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/betaConst_116feed_forward_2/residual_14/conv_2d_43/conv2d_43/kernelEfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/gammaDfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/betaConst_126feed_forward_2/residual_14/conv_2d_44/conv2d_44/kernelEfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/gammaDfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/betaConst_13;feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/kernelJfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/gammaIfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/betaConst_14;feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/kernelJfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/gammaIfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/betaConst_15*feed_forward_2/conv_2d_47/conv2d_47/kernel9feed_forward_2/conv_2d_47/instance_normalization_53/gamma8feed_forward_2/conv_2d_47/instance_normalization_53/beta*L
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
"__inference_signature_wrapper_5992
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
í!
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename>feed_forward_2/conv_2d_32/conv2d_32/kernel/Read/ReadVariableOpMfeed_forward_2/conv_2d_32/instance_normalization_36/gamma/Read/ReadVariableOpLfeed_forward_2/conv_2d_32/instance_normalization_36/beta/Read/ReadVariableOp>feed_forward_2/conv_2d_33/conv2d_33/kernel/Read/ReadVariableOpMfeed_forward_2/conv_2d_33/instance_normalization_37/gamma/Read/ReadVariableOpLfeed_forward_2/conv_2d_33/instance_normalization_37/beta/Read/ReadVariableOp>feed_forward_2/conv_2d_34/conv2d_34/kernel/Read/ReadVariableOpMfeed_forward_2/conv_2d_34/instance_normalization_38/gamma/Read/ReadVariableOpLfeed_forward_2/conv_2d_34/instance_normalization_38/beta/Read/ReadVariableOpJfeed_forward_2/residual_10/conv_2d_35/conv2d_35/kernel/Read/ReadVariableOpYfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/gamma/Read/ReadVariableOpXfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/beta/Read/ReadVariableOpJfeed_forward_2/residual_10/conv_2d_36/conv2d_36/kernel/Read/ReadVariableOpYfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/gamma/Read/ReadVariableOpXfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/beta/Read/ReadVariableOpJfeed_forward_2/residual_11/conv_2d_37/conv2d_37/kernel/Read/ReadVariableOpYfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/gamma/Read/ReadVariableOpXfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/beta/Read/ReadVariableOpJfeed_forward_2/residual_11/conv_2d_38/conv2d_38/kernel/Read/ReadVariableOpYfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/gamma/Read/ReadVariableOpXfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/beta/Read/ReadVariableOpJfeed_forward_2/residual_12/conv_2d_39/conv2d_39/kernel/Read/ReadVariableOpYfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/gamma/Read/ReadVariableOpXfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/beta/Read/ReadVariableOpJfeed_forward_2/residual_12/conv_2d_40/conv2d_40/kernel/Read/ReadVariableOpYfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/gamma/Read/ReadVariableOpXfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/beta/Read/ReadVariableOpJfeed_forward_2/residual_13/conv_2d_41/conv2d_41/kernel/Read/ReadVariableOpYfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/gamma/Read/ReadVariableOpXfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/beta/Read/ReadVariableOpJfeed_forward_2/residual_13/conv_2d_42/conv2d_42/kernel/Read/ReadVariableOpYfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/gamma/Read/ReadVariableOpXfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/beta/Read/ReadVariableOpJfeed_forward_2/residual_14/conv_2d_43/conv2d_43/kernel/Read/ReadVariableOpYfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/gamma/Read/ReadVariableOpXfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/beta/Read/ReadVariableOpJfeed_forward_2/residual_14/conv_2d_44/conv2d_44/kernel/Read/ReadVariableOpYfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/gamma/Read/ReadVariableOpXfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/beta/Read/ReadVariableOpOfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/kernel/Read/ReadVariableOp^feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/gamma/Read/ReadVariableOp]feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/beta/Read/ReadVariableOpOfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/kernel/Read/ReadVariableOp^feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/gamma/Read/ReadVariableOp]feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/beta/Read/ReadVariableOp>feed_forward_2/conv_2d_47/conv2d_47/kernel/Read/ReadVariableOpMfeed_forward_2/conv_2d_47/instance_normalization_53/gamma/Read/ReadVariableOpLfeed_forward_2/conv_2d_47/instance_normalization_53/beta/Read/ReadVariableOpConst_16*=
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
__inference__traced_save_7125
¥
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*feed_forward_2/conv_2d_32/conv2d_32/kernel9feed_forward_2/conv_2d_32/instance_normalization_36/gamma8feed_forward_2/conv_2d_32/instance_normalization_36/beta*feed_forward_2/conv_2d_33/conv2d_33/kernel9feed_forward_2/conv_2d_33/instance_normalization_37/gamma8feed_forward_2/conv_2d_33/instance_normalization_37/beta*feed_forward_2/conv_2d_34/conv2d_34/kernel9feed_forward_2/conv_2d_34/instance_normalization_38/gamma8feed_forward_2/conv_2d_34/instance_normalization_38/beta6feed_forward_2/residual_10/conv_2d_35/conv2d_35/kernelEfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/gammaDfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/beta6feed_forward_2/residual_10/conv_2d_36/conv2d_36/kernelEfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/gammaDfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/beta6feed_forward_2/residual_11/conv_2d_37/conv2d_37/kernelEfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/gammaDfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/beta6feed_forward_2/residual_11/conv_2d_38/conv2d_38/kernelEfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/gammaDfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/beta6feed_forward_2/residual_12/conv_2d_39/conv2d_39/kernelEfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/gammaDfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/beta6feed_forward_2/residual_12/conv_2d_40/conv2d_40/kernelEfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/gammaDfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/beta6feed_forward_2/residual_13/conv_2d_41/conv2d_41/kernelEfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/gammaDfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/beta6feed_forward_2/residual_13/conv_2d_42/conv2d_42/kernelEfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/gammaDfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/beta6feed_forward_2/residual_14/conv_2d_43/conv2d_43/kernelEfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/gammaDfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/beta6feed_forward_2/residual_14/conv_2d_44/conv2d_44/kernelEfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/gammaDfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/beta;feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/kernelJfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/gammaIfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/beta;feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/kernelJfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/gammaIfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/beta*feed_forward_2/conv_2d_47/conv2d_47/kernel9feed_forward_2/conv_2d_47/instance_normalization_53/gamma8feed_forward_2/conv_2d_47/instance_normalization_53/beta*<
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
 __inference__traced_restore_7279é0
ê

8__inference_instance_normalization_41_layer_call_fn_4066

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
S__inference_instance_normalization_41_layer_call_and_return_conditional_losses_40562
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
8__inference_instance_normalization_39_layer_call_fn_3958

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
S__inference_instance_normalization_39_layer_call_and_return_conditional_losses_39482
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
)__inference_conv_2d_34_layer_call_fn_6178

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
D__inference_conv_2d_34_layer_call_and_return_conditional_losses_48052
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
¨P
³
D__inference_conv_2d_33_layer_call_and_return_conditional_losses_4732

inputs
mirrorpad_paddings,
(conv2d_33_conv2d_readvariableop_resource=
9instance_normalization_37_reshape_readvariableop_resource?
;instance_normalization_37_reshape_1_readvariableop_resource
identity¢conv2d_33/Conv2D/ReadVariableOp¢0instance_normalization_37/Reshape/ReadVariableOp¢2instance_normalization_37/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿêê *
mode	REFLECT2
	MirrorPad³
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_33/Conv2D/ReadVariableOpÐ
conv2d_33/Conv2DConv2DMirrorPad:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2
conv2d_33/Conv2D
instance_normalization_37/ShapeShapeconv2d_33/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_37/Shape¨
-instance_normalization_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_37/strided_slice/stack¬
/instance_normalization_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice/stack_1¬
/instance_normalization_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice/stack_2þ
'instance_normalization_37/strided_sliceStridedSlice(instance_normalization_37/Shape:output:06instance_normalization_37/strided_slice/stack:output:08instance_normalization_37/strided_slice/stack_1:output:08instance_normalization_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_37/strided_slice¬
/instance_normalization_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice_1/stack°
1instance_normalization_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_1/stack_1°
1instance_normalization_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_1/stack_2
)instance_normalization_37/strided_slice_1StridedSlice(instance_normalization_37/Shape:output:08instance_normalization_37/strided_slice_1/stack:output:0:instance_normalization_37/strided_slice_1/stack_1:output:0:instance_normalization_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_37/strided_slice_1¬
/instance_normalization_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice_2/stack°
1instance_normalization_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_2/stack_1°
1instance_normalization_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_2/stack_2
)instance_normalization_37/strided_slice_2StridedSlice(instance_normalization_37/Shape:output:08instance_normalization_37/strided_slice_2/stack:output:0:instance_normalization_37/strided_slice_2/stack_1:output:0:instance_normalization_37/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_37/strided_slice_2¬
/instance_normalization_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice_3/stack°
1instance_normalization_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_3/stack_1°
1instance_normalization_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_3/stack_2
)instance_normalization_37/strided_slice_3StridedSlice(instance_normalization_37/Shape:output:08instance_normalization_37/strided_slice_3/stack:output:0:instance_normalization_37/strided_slice_3/stack_1:output:0:instance_normalization_37/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_37/strided_slice_3Å
8instance_normalization_37/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_37/moments/mean/reduction_indices
&instance_normalization_37/moments/meanMeanconv2d_33/Conv2D:output:0Ainstance_normalization_37/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2(
&instance_normalization_37/moments/meanÛ
.instance_normalization_37/moments/StopGradientStopGradient/instance_normalization_37/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.instance_normalization_37/moments/StopGradient
3instance_normalization_37/moments/SquaredDifferenceSquaredDifferenceconv2d_33/Conv2D:output:07instance_normalization_37/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@25
3instance_normalization_37/moments/SquaredDifferenceÍ
<instance_normalization_37/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_37/moments/variance/reduction_indices«
*instance_normalization_37/moments/varianceMean7instance_normalization_37/moments/SquaredDifference:z:0Einstance_normalization_37/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2,
*instance_normalization_37/moments/varianceÚ
0instance_normalization_37/Reshape/ReadVariableOpReadVariableOp9instance_normalization_37_reshape_readvariableop_resource*
_output_shapes
:@*
dtype022
0instance_normalization_37/Reshape/ReadVariableOp«
'instance_normalization_37/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2)
'instance_normalization_37/Reshape/shapeî
!instance_normalization_37/ReshapeReshape8instance_normalization_37/Reshape/ReadVariableOp:value:00instance_normalization_37/Reshape/shape:output:0*
T0*&
_output_shapes
:@2#
!instance_normalization_37/Reshapeà
2instance_normalization_37/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_37_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype024
2instance_normalization_37/Reshape_1/ReadVariableOp¯
)instance_normalization_37/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2+
)instance_normalization_37/Reshape_1/shapeö
#instance_normalization_37/Reshape_1Reshape:instance_normalization_37/Reshape_1/ReadVariableOp:value:02instance_normalization_37/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2%
#instance_normalization_37/Reshape_1
)instance_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_37/batchnorm/add/yþ
'instance_normalization_37/batchnorm/addAddV23instance_normalization_37/moments/variance:output:02instance_normalization_37/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_37/batchnorm/addÆ
)instance_normalization_37/batchnorm/RsqrtRsqrt+instance_normalization_37/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)instance_normalization_37/batchnorm/Rsqrtî
'instance_normalization_37/batchnorm/mulMul-instance_normalization_37/batchnorm/Rsqrt:y:0*instance_normalization_37/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_37/batchnorm/mulá
)instance_normalization_37/batchnorm/mul_1Mulconv2d_33/Conv2D:output:0+instance_normalization_37/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2+
)instance_normalization_37/batchnorm/mul_1õ
)instance_normalization_37/batchnorm/mul_2Mul/instance_normalization_37/moments/mean:output:0+instance_normalization_37/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)instance_normalization_37/batchnorm/mul_2ð
'instance_normalization_37/batchnorm/subSub,instance_normalization_37/Reshape_1:output:0-instance_normalization_37/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_37/batchnorm/sub÷
)instance_normalization_37/batchnorm/add_1AddV2-instance_normalization_37/batchnorm/mul_1:z:0+instance_normalization_37/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2+
)instance_normalization_37/batchnorm/add_1
ReluRelu-instance_normalization_37/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2
Reluú
IdentityIdentityRelu:activations:0 ^conv2d_33/Conv2D/ReadVariableOp1^instance_normalization_37/Reshape/ReadVariableOp3^instance_normalization_37/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2d
0instance_normalization_37/Reshape/ReadVariableOp0instance_normalization_37/Reshape/ReadVariableOp2h
2instance_normalization_37/Reshape_1/ReadVariableOp2instance_normalization_37/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
¼P
³
D__inference_conv_2d_34_layer_call_and_return_conditional_losses_6165

inputs
mirrorpad_paddings,
(conv2d_34_conv2d_readvariableop_resource=
9instance_normalization_38_reshape_readvariableop_resource?
;instance_normalization_38_reshape_1_readvariableop_resource
identity¢conv2d_34/Conv2D/ReadVariableOp¢0instance_normalization_38/Reshape/ReadVariableOp¢2instance_normalization_38/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿöö@*
mode	REFLECT2
	MirrorPad´
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_34/Conv2D/ReadVariableOpÑ
conv2d_34/Conv2DConv2DMirrorPad:output:0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv2d_34/Conv2D
instance_normalization_38/ShapeShapeconv2d_34/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_38/Shape¨
-instance_normalization_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_38/strided_slice/stack¬
/instance_normalization_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice/stack_1¬
/instance_normalization_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice/stack_2þ
'instance_normalization_38/strided_sliceStridedSlice(instance_normalization_38/Shape:output:06instance_normalization_38/strided_slice/stack:output:08instance_normalization_38/strided_slice/stack_1:output:08instance_normalization_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_38/strided_slice¬
/instance_normalization_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice_1/stack°
1instance_normalization_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_1/stack_1°
1instance_normalization_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_1/stack_2
)instance_normalization_38/strided_slice_1StridedSlice(instance_normalization_38/Shape:output:08instance_normalization_38/strided_slice_1/stack:output:0:instance_normalization_38/strided_slice_1/stack_1:output:0:instance_normalization_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_38/strided_slice_1¬
/instance_normalization_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice_2/stack°
1instance_normalization_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_2/stack_1°
1instance_normalization_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_2/stack_2
)instance_normalization_38/strided_slice_2StridedSlice(instance_normalization_38/Shape:output:08instance_normalization_38/strided_slice_2/stack:output:0:instance_normalization_38/strided_slice_2/stack_1:output:0:instance_normalization_38/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_38/strided_slice_2¬
/instance_normalization_38/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice_3/stack°
1instance_normalization_38/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_3/stack_1°
1instance_normalization_38/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_3/stack_2
)instance_normalization_38/strided_slice_3StridedSlice(instance_normalization_38/Shape:output:08instance_normalization_38/strided_slice_3/stack:output:0:instance_normalization_38/strided_slice_3/stack_1:output:0:instance_normalization_38/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_38/strided_slice_3Å
8instance_normalization_38/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_38/moments/mean/reduction_indices
&instance_normalization_38/moments/meanMeanconv2d_34/Conv2D:output:0Ainstance_normalization_38/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2(
&instance_normalization_38/moments/meanÜ
.instance_normalization_38/moments/StopGradientStopGradient/instance_normalization_38/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.instance_normalization_38/moments/StopGradient
3instance_normalization_38/moments/SquaredDifferenceSquaredDifferenceconv2d_34/Conv2D:output:07instance_normalization_38/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú25
3instance_normalization_38/moments/SquaredDifferenceÍ
<instance_normalization_38/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_38/moments/variance/reduction_indices¬
*instance_normalization_38/moments/varianceMean7instance_normalization_38/moments/SquaredDifference:z:0Einstance_normalization_38/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2,
*instance_normalization_38/moments/varianceÛ
0instance_normalization_38/Reshape/ReadVariableOpReadVariableOp9instance_normalization_38_reshape_readvariableop_resource*
_output_shapes	
:*
dtype022
0instance_normalization_38/Reshape/ReadVariableOp«
'instance_normalization_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'instance_normalization_38/Reshape/shapeï
!instance_normalization_38/ReshapeReshape8instance_normalization_38/Reshape/ReadVariableOp:value:00instance_normalization_38/Reshape/shape:output:0*
T0*'
_output_shapes
:2#
!instance_normalization_38/Reshapeá
2instance_normalization_38/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_38_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype024
2instance_normalization_38/Reshape_1/ReadVariableOp¯
)instance_normalization_38/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)instance_normalization_38/Reshape_1/shape÷
#instance_normalization_38/Reshape_1Reshape:instance_normalization_38/Reshape_1/ReadVariableOp:value:02instance_normalization_38/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2%
#instance_normalization_38/Reshape_1
)instance_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_38/batchnorm/add/yÿ
'instance_normalization_38/batchnorm/addAddV23instance_normalization_38/moments/variance:output:02instance_normalization_38/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_38/batchnorm/addÇ
)instance_normalization_38/batchnorm/RsqrtRsqrt+instance_normalization_38/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_38/batchnorm/Rsqrtï
'instance_normalization_38/batchnorm/mulMul-instance_normalization_38/batchnorm/Rsqrt:y:0*instance_normalization_38/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_38/batchnorm/mulâ
)instance_normalization_38/batchnorm/mul_1Mulconv2d_34/Conv2D:output:0+instance_normalization_38/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)instance_normalization_38/batchnorm/mul_1ö
)instance_normalization_38/batchnorm/mul_2Mul/instance_normalization_38/moments/mean:output:0+instance_normalization_38/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_38/batchnorm/mul_2ñ
'instance_normalization_38/batchnorm/subSub,instance_normalization_38/Reshape_1:output:0-instance_normalization_38/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_38/batchnorm/subø
)instance_normalization_38/batchnorm/add_1AddV2-instance_normalization_38/batchnorm/mul_1:z:0+instance_normalization_38/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)instance_normalization_38/batchnorm/add_1
ReluRelu-instance_normalization_38/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
Reluû
IdentityIdentityRelu:activations:0 ^conv2d_34/Conv2D/ReadVariableOp1^instance_normalization_38/Reshape/ReadVariableOp3^instance_normalization_38/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2d
0instance_normalization_38/Reshape/ReadVariableOp0instance_normalization_38/Reshape/ReadVariableOp2h
2instance_normalization_38/Reshape_1/ReadVariableOp2instance_normalization_38/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:
¤	
Ù
*__inference_residual_12_layer_call_fn_6523

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÏ
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
GPU2*0J 8 *N
fIRG
E__inference_residual_12_layer_call_and_return_conditional_losses_51912
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
S__inference_instance_normalization_43_layer_call_and_return_conditional_losses_4164

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

¢
/__inference_resize_conv_2d_4_layer_call_fn_6817

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
J__inference_resize_conv_2d_4_layer_call_and_return_conditional_losses_55502
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
 0
ò
S__inference_instance_normalization_37_layer_call_and_return_conditional_losses_3840

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
·

E__inference_residual_13_layer_call_and_return_conditional_losses_5325

inputs!
conv_2d_41_mirrorpad_paddings7
3conv_2d_41_conv2d_41_conv2d_readvariableop_resourceH
Dconv_2d_41_instance_normalization_45_reshape_readvariableop_resourceJ
Fconv_2d_41_instance_normalization_45_reshape_1_readvariableop_resource!
conv_2d_42_mirrorpad_paddings7
3conv_2d_42_conv2d_42_conv2d_readvariableop_resourceH
Dconv_2d_42_instance_normalization_46_reshape_readvariableop_resourceJ
Fconv_2d_42_instance_normalization_46_reshape_1_readvariableop_resource
identity¢*conv_2d_41/conv2d_41/Conv2D/ReadVariableOp¢;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp¢=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp¢*conv_2d_42/conv2d_42/Conv2D/ReadVariableOp¢;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp¢=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp°
conv_2d_41/MirrorPad	MirrorPadinputsconv_2d_41_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_41/MirrorPadÖ
*conv_2d_41/conv2d_41/Conv2D/ReadVariableOpReadVariableOp3conv_2d_41_conv2d_41_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_41/conv2d_41/Conv2D/ReadVariableOpý
conv_2d_41/conv2d_41/Conv2DConv2Dconv_2d_41/MirrorPad:output:02conv_2d_41/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_41/conv2d_41/Conv2D¬
*conv_2d_41/instance_normalization_45/ShapeShape$conv_2d_41/conv2d_41/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_41/instance_normalization_45/Shape¾
8conv_2d_41/instance_normalization_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_41/instance_normalization_45/strided_slice/stackÂ
:conv_2d_41/instance_normalization_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice/stack_1Â
:conv_2d_41/instance_normalization_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice/stack_2À
2conv_2d_41/instance_normalization_45/strided_sliceStridedSlice3conv_2d_41/instance_normalization_45/Shape:output:0Aconv_2d_41/instance_normalization_45/strided_slice/stack:output:0Cconv_2d_41/instance_normalization_45/strided_slice/stack_1:output:0Cconv_2d_41/instance_normalization_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_41/instance_normalization_45/strided_sliceÂ
:conv_2d_41/instance_normalization_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice_1/stackÆ
<conv_2d_41/instance_normalization_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_1/stack_1Æ
<conv_2d_41/instance_normalization_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_1/stack_2Ê
4conv_2d_41/instance_normalization_45/strided_slice_1StridedSlice3conv_2d_41/instance_normalization_45/Shape:output:0Cconv_2d_41/instance_normalization_45/strided_slice_1/stack:output:0Econv_2d_41/instance_normalization_45/strided_slice_1/stack_1:output:0Econv_2d_41/instance_normalization_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_41/instance_normalization_45/strided_slice_1Â
:conv_2d_41/instance_normalization_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice_2/stackÆ
<conv_2d_41/instance_normalization_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_2/stack_1Æ
<conv_2d_41/instance_normalization_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_2/stack_2Ê
4conv_2d_41/instance_normalization_45/strided_slice_2StridedSlice3conv_2d_41/instance_normalization_45/Shape:output:0Cconv_2d_41/instance_normalization_45/strided_slice_2/stack:output:0Econv_2d_41/instance_normalization_45/strided_slice_2/stack_1:output:0Econv_2d_41/instance_normalization_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_41/instance_normalization_45/strided_slice_2Â
:conv_2d_41/instance_normalization_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice_3/stackÆ
<conv_2d_41/instance_normalization_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_3/stack_1Æ
<conv_2d_41/instance_normalization_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_3/stack_2Ê
4conv_2d_41/instance_normalization_45/strided_slice_3StridedSlice3conv_2d_41/instance_normalization_45/Shape:output:0Cconv_2d_41/instance_normalization_45/strided_slice_3/stack:output:0Econv_2d_41/instance_normalization_45/strided_slice_3/stack_1:output:0Econv_2d_41/instance_normalization_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_41/instance_normalization_45/strided_slice_3Û
Cconv_2d_41/instance_normalization_45/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_41/instance_normalization_45/moments/mean/reduction_indices®
1conv_2d_41/instance_normalization_45/moments/meanMean$conv_2d_41/conv2d_41/Conv2D:output:0Lconv_2d_41/instance_normalization_45/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_41/instance_normalization_45/moments/meaný
9conv_2d_41/instance_normalization_45/moments/StopGradientStopGradient:conv_2d_41/instance_normalization_45/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_41/instance_normalization_45/moments/StopGradient¼
>conv_2d_41/instance_normalization_45/moments/SquaredDifferenceSquaredDifference$conv_2d_41/conv2d_41/Conv2D:output:0Bconv_2d_41/instance_normalization_45/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_41/instance_normalization_45/moments/SquaredDifferenceã
Gconv_2d_41/instance_normalization_45/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_41/instance_normalization_45/moments/variance/reduction_indicesØ
5conv_2d_41/instance_normalization_45/moments/varianceMeanBconv_2d_41/instance_normalization_45/moments/SquaredDifference:z:0Pconv_2d_41/instance_normalization_45/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_41/instance_normalization_45/moments/varianceü
;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOpReadVariableOpDconv_2d_41_instance_normalization_45_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOpÁ
2conv_2d_41/instance_normalization_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_41/instance_normalization_45/Reshape/shape
,conv_2d_41/instance_normalization_45/ReshapeReshapeCconv_2d_41/instance_normalization_45/Reshape/ReadVariableOp:value:0;conv_2d_41/instance_normalization_45/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_41/instance_normalization_45/Reshape
=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_41_instance_normalization_45_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOpÅ
4conv_2d_41/instance_normalization_45/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_41/instance_normalization_45/Reshape_1/shape£
.conv_2d_41/instance_normalization_45/Reshape_1ReshapeEconv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp:value:0=conv_2d_41/instance_normalization_45/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_41/instance_normalization_45/Reshape_1±
4conv_2d_41/instance_normalization_45/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_41/instance_normalization_45/batchnorm/add/y«
2conv_2d_41/instance_normalization_45/batchnorm/addAddV2>conv_2d_41/instance_normalization_45/moments/variance:output:0=conv_2d_41/instance_normalization_45/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_41/instance_normalization_45/batchnorm/addè
4conv_2d_41/instance_normalization_45/batchnorm/RsqrtRsqrt6conv_2d_41/instance_normalization_45/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_41/instance_normalization_45/batchnorm/Rsqrt
2conv_2d_41/instance_normalization_45/batchnorm/mulMul8conv_2d_41/instance_normalization_45/batchnorm/Rsqrt:y:05conv_2d_41/instance_normalization_45/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_41/instance_normalization_45/batchnorm/mul
4conv_2d_41/instance_normalization_45/batchnorm/mul_1Mul$conv_2d_41/conv2d_41/Conv2D:output:06conv_2d_41/instance_normalization_45/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_41/instance_normalization_45/batchnorm/mul_1¢
4conv_2d_41/instance_normalization_45/batchnorm/mul_2Mul:conv_2d_41/instance_normalization_45/moments/mean:output:06conv_2d_41/instance_normalization_45/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_41/instance_normalization_45/batchnorm/mul_2
2conv_2d_41/instance_normalization_45/batchnorm/subSub7conv_2d_41/instance_normalization_45/Reshape_1:output:08conv_2d_41/instance_normalization_45/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_41/instance_normalization_45/batchnorm/sub¤
4conv_2d_41/instance_normalization_45/batchnorm/add_1AddV28conv_2d_41/instance_normalization_45/batchnorm/mul_1:z:06conv_2d_41/instance_normalization_45/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_41/instance_normalization_45/batchnorm/add_1¡
conv_2d_41/ReluRelu8conv_2d_41/instance_normalization_45/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_41/ReluÇ
conv_2d_42/MirrorPad	MirrorPadconv_2d_41/Relu:activations:0conv_2d_42_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_42/MirrorPadÖ
*conv_2d_42/conv2d_42/Conv2D/ReadVariableOpReadVariableOp3conv_2d_42_conv2d_42_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_42/conv2d_42/Conv2D/ReadVariableOpý
conv_2d_42/conv2d_42/Conv2DConv2Dconv_2d_42/MirrorPad:output:02conv_2d_42/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_42/conv2d_42/Conv2D¬
*conv_2d_42/instance_normalization_46/ShapeShape$conv_2d_42/conv2d_42/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_42/instance_normalization_46/Shape¾
8conv_2d_42/instance_normalization_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_42/instance_normalization_46/strided_slice/stackÂ
:conv_2d_42/instance_normalization_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice/stack_1Â
:conv_2d_42/instance_normalization_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice/stack_2À
2conv_2d_42/instance_normalization_46/strided_sliceStridedSlice3conv_2d_42/instance_normalization_46/Shape:output:0Aconv_2d_42/instance_normalization_46/strided_slice/stack:output:0Cconv_2d_42/instance_normalization_46/strided_slice/stack_1:output:0Cconv_2d_42/instance_normalization_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_42/instance_normalization_46/strided_sliceÂ
:conv_2d_42/instance_normalization_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice_1/stackÆ
<conv_2d_42/instance_normalization_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_1/stack_1Æ
<conv_2d_42/instance_normalization_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_1/stack_2Ê
4conv_2d_42/instance_normalization_46/strided_slice_1StridedSlice3conv_2d_42/instance_normalization_46/Shape:output:0Cconv_2d_42/instance_normalization_46/strided_slice_1/stack:output:0Econv_2d_42/instance_normalization_46/strided_slice_1/stack_1:output:0Econv_2d_42/instance_normalization_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_42/instance_normalization_46/strided_slice_1Â
:conv_2d_42/instance_normalization_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice_2/stackÆ
<conv_2d_42/instance_normalization_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_2/stack_1Æ
<conv_2d_42/instance_normalization_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_2/stack_2Ê
4conv_2d_42/instance_normalization_46/strided_slice_2StridedSlice3conv_2d_42/instance_normalization_46/Shape:output:0Cconv_2d_42/instance_normalization_46/strided_slice_2/stack:output:0Econv_2d_42/instance_normalization_46/strided_slice_2/stack_1:output:0Econv_2d_42/instance_normalization_46/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_42/instance_normalization_46/strided_slice_2Â
:conv_2d_42/instance_normalization_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice_3/stackÆ
<conv_2d_42/instance_normalization_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_3/stack_1Æ
<conv_2d_42/instance_normalization_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_3/stack_2Ê
4conv_2d_42/instance_normalization_46/strided_slice_3StridedSlice3conv_2d_42/instance_normalization_46/Shape:output:0Cconv_2d_42/instance_normalization_46/strided_slice_3/stack:output:0Econv_2d_42/instance_normalization_46/strided_slice_3/stack_1:output:0Econv_2d_42/instance_normalization_46/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_42/instance_normalization_46/strided_slice_3Û
Cconv_2d_42/instance_normalization_46/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_42/instance_normalization_46/moments/mean/reduction_indices®
1conv_2d_42/instance_normalization_46/moments/meanMean$conv_2d_42/conv2d_42/Conv2D:output:0Lconv_2d_42/instance_normalization_46/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_42/instance_normalization_46/moments/meaný
9conv_2d_42/instance_normalization_46/moments/StopGradientStopGradient:conv_2d_42/instance_normalization_46/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_42/instance_normalization_46/moments/StopGradient¼
>conv_2d_42/instance_normalization_46/moments/SquaredDifferenceSquaredDifference$conv_2d_42/conv2d_42/Conv2D:output:0Bconv_2d_42/instance_normalization_46/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_42/instance_normalization_46/moments/SquaredDifferenceã
Gconv_2d_42/instance_normalization_46/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_42/instance_normalization_46/moments/variance/reduction_indicesØ
5conv_2d_42/instance_normalization_46/moments/varianceMeanBconv_2d_42/instance_normalization_46/moments/SquaredDifference:z:0Pconv_2d_42/instance_normalization_46/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_42/instance_normalization_46/moments/varianceü
;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOpReadVariableOpDconv_2d_42_instance_normalization_46_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOpÁ
2conv_2d_42/instance_normalization_46/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_42/instance_normalization_46/Reshape/shape
,conv_2d_42/instance_normalization_46/ReshapeReshapeCconv_2d_42/instance_normalization_46/Reshape/ReadVariableOp:value:0;conv_2d_42/instance_normalization_46/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_42/instance_normalization_46/Reshape
=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_42_instance_normalization_46_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOpÅ
4conv_2d_42/instance_normalization_46/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_42/instance_normalization_46/Reshape_1/shape£
.conv_2d_42/instance_normalization_46/Reshape_1ReshapeEconv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp:value:0=conv_2d_42/instance_normalization_46/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_42/instance_normalization_46/Reshape_1±
4conv_2d_42/instance_normalization_46/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_42/instance_normalization_46/batchnorm/add/y«
2conv_2d_42/instance_normalization_46/batchnorm/addAddV2>conv_2d_42/instance_normalization_46/moments/variance:output:0=conv_2d_42/instance_normalization_46/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_42/instance_normalization_46/batchnorm/addè
4conv_2d_42/instance_normalization_46/batchnorm/RsqrtRsqrt6conv_2d_42/instance_normalization_46/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_42/instance_normalization_46/batchnorm/Rsqrt
2conv_2d_42/instance_normalization_46/batchnorm/mulMul8conv_2d_42/instance_normalization_46/batchnorm/Rsqrt:y:05conv_2d_42/instance_normalization_46/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_42/instance_normalization_46/batchnorm/mul
4conv_2d_42/instance_normalization_46/batchnorm/mul_1Mul$conv_2d_42/conv2d_42/Conv2D:output:06conv_2d_42/instance_normalization_46/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_42/instance_normalization_46/batchnorm/mul_1¢
4conv_2d_42/instance_normalization_46/batchnorm/mul_2Mul:conv_2d_42/instance_normalization_46/moments/mean:output:06conv_2d_42/instance_normalization_46/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_42/instance_normalization_46/batchnorm/mul_2
2conv_2d_42/instance_normalization_46/batchnorm/subSub7conv_2d_42/instance_normalization_46/Reshape_1:output:08conv_2d_42/instance_normalization_46/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_42/instance_normalization_46/batchnorm/sub¤
4conv_2d_42/instance_normalization_46/batchnorm/add_1AddV28conv_2d_42/instance_normalization_46/batchnorm/mul_1:z:06conv_2d_42/instance_normalization_46/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_42/instance_normalization_46/batchnorm/add_1
addAddV2inputs8conv_2d_42/instance_normalization_46/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_41/conv2d_41/Conv2D/ReadVariableOp<^conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp>^conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp+^conv_2d_42/conv2d_42/Conv2D/ReadVariableOp<^conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp>^conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_41/conv2d_41/Conv2D/ReadVariableOp*conv_2d_41/conv2d_41/Conv2D/ReadVariableOp2z
;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp2~
=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp2X
*conv_2d_42/conv2d_42/Conv2D/ReadVariableOp*conv_2d_42/conv2d_42/Conv2D/ReadVariableOp2z
;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp2~
=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp:Z V
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
S__inference_instance_normalization_36_layer_call_and_return_conditional_losses_3786

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
·

E__inference_residual_12_layer_call_and_return_conditional_losses_6502

inputs!
conv_2d_39_mirrorpad_paddings7
3conv_2d_39_conv2d_39_conv2d_readvariableop_resourceH
Dconv_2d_39_instance_normalization_43_reshape_readvariableop_resourceJ
Fconv_2d_39_instance_normalization_43_reshape_1_readvariableop_resource!
conv_2d_40_mirrorpad_paddings7
3conv_2d_40_conv2d_40_conv2d_readvariableop_resourceH
Dconv_2d_40_instance_normalization_44_reshape_readvariableop_resourceJ
Fconv_2d_40_instance_normalization_44_reshape_1_readvariableop_resource
identity¢*conv_2d_39/conv2d_39/Conv2D/ReadVariableOp¢;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp¢=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp¢*conv_2d_40/conv2d_40/Conv2D/ReadVariableOp¢;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp¢=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp°
conv_2d_39/MirrorPad	MirrorPadinputsconv_2d_39_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_39/MirrorPadÖ
*conv_2d_39/conv2d_39/Conv2D/ReadVariableOpReadVariableOp3conv_2d_39_conv2d_39_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_39/conv2d_39/Conv2D/ReadVariableOpý
conv_2d_39/conv2d_39/Conv2DConv2Dconv_2d_39/MirrorPad:output:02conv_2d_39/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_39/conv2d_39/Conv2D¬
*conv_2d_39/instance_normalization_43/ShapeShape$conv_2d_39/conv2d_39/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_39/instance_normalization_43/Shape¾
8conv_2d_39/instance_normalization_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_39/instance_normalization_43/strided_slice/stackÂ
:conv_2d_39/instance_normalization_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice/stack_1Â
:conv_2d_39/instance_normalization_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice/stack_2À
2conv_2d_39/instance_normalization_43/strided_sliceStridedSlice3conv_2d_39/instance_normalization_43/Shape:output:0Aconv_2d_39/instance_normalization_43/strided_slice/stack:output:0Cconv_2d_39/instance_normalization_43/strided_slice/stack_1:output:0Cconv_2d_39/instance_normalization_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_39/instance_normalization_43/strided_sliceÂ
:conv_2d_39/instance_normalization_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice_1/stackÆ
<conv_2d_39/instance_normalization_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_1/stack_1Æ
<conv_2d_39/instance_normalization_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_1/stack_2Ê
4conv_2d_39/instance_normalization_43/strided_slice_1StridedSlice3conv_2d_39/instance_normalization_43/Shape:output:0Cconv_2d_39/instance_normalization_43/strided_slice_1/stack:output:0Econv_2d_39/instance_normalization_43/strided_slice_1/stack_1:output:0Econv_2d_39/instance_normalization_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_39/instance_normalization_43/strided_slice_1Â
:conv_2d_39/instance_normalization_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice_2/stackÆ
<conv_2d_39/instance_normalization_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_2/stack_1Æ
<conv_2d_39/instance_normalization_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_2/stack_2Ê
4conv_2d_39/instance_normalization_43/strided_slice_2StridedSlice3conv_2d_39/instance_normalization_43/Shape:output:0Cconv_2d_39/instance_normalization_43/strided_slice_2/stack:output:0Econv_2d_39/instance_normalization_43/strided_slice_2/stack_1:output:0Econv_2d_39/instance_normalization_43/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_39/instance_normalization_43/strided_slice_2Â
:conv_2d_39/instance_normalization_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice_3/stackÆ
<conv_2d_39/instance_normalization_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_3/stack_1Æ
<conv_2d_39/instance_normalization_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_3/stack_2Ê
4conv_2d_39/instance_normalization_43/strided_slice_3StridedSlice3conv_2d_39/instance_normalization_43/Shape:output:0Cconv_2d_39/instance_normalization_43/strided_slice_3/stack:output:0Econv_2d_39/instance_normalization_43/strided_slice_3/stack_1:output:0Econv_2d_39/instance_normalization_43/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_39/instance_normalization_43/strided_slice_3Û
Cconv_2d_39/instance_normalization_43/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_39/instance_normalization_43/moments/mean/reduction_indices®
1conv_2d_39/instance_normalization_43/moments/meanMean$conv_2d_39/conv2d_39/Conv2D:output:0Lconv_2d_39/instance_normalization_43/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_39/instance_normalization_43/moments/meaný
9conv_2d_39/instance_normalization_43/moments/StopGradientStopGradient:conv_2d_39/instance_normalization_43/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_39/instance_normalization_43/moments/StopGradient¼
>conv_2d_39/instance_normalization_43/moments/SquaredDifferenceSquaredDifference$conv_2d_39/conv2d_39/Conv2D:output:0Bconv_2d_39/instance_normalization_43/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_39/instance_normalization_43/moments/SquaredDifferenceã
Gconv_2d_39/instance_normalization_43/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_39/instance_normalization_43/moments/variance/reduction_indicesØ
5conv_2d_39/instance_normalization_43/moments/varianceMeanBconv_2d_39/instance_normalization_43/moments/SquaredDifference:z:0Pconv_2d_39/instance_normalization_43/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_39/instance_normalization_43/moments/varianceü
;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOpReadVariableOpDconv_2d_39_instance_normalization_43_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOpÁ
2conv_2d_39/instance_normalization_43/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_39/instance_normalization_43/Reshape/shape
,conv_2d_39/instance_normalization_43/ReshapeReshapeCconv_2d_39/instance_normalization_43/Reshape/ReadVariableOp:value:0;conv_2d_39/instance_normalization_43/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_39/instance_normalization_43/Reshape
=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_39_instance_normalization_43_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOpÅ
4conv_2d_39/instance_normalization_43/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_39/instance_normalization_43/Reshape_1/shape£
.conv_2d_39/instance_normalization_43/Reshape_1ReshapeEconv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp:value:0=conv_2d_39/instance_normalization_43/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_39/instance_normalization_43/Reshape_1±
4conv_2d_39/instance_normalization_43/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_39/instance_normalization_43/batchnorm/add/y«
2conv_2d_39/instance_normalization_43/batchnorm/addAddV2>conv_2d_39/instance_normalization_43/moments/variance:output:0=conv_2d_39/instance_normalization_43/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_39/instance_normalization_43/batchnorm/addè
4conv_2d_39/instance_normalization_43/batchnorm/RsqrtRsqrt6conv_2d_39/instance_normalization_43/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_39/instance_normalization_43/batchnorm/Rsqrt
2conv_2d_39/instance_normalization_43/batchnorm/mulMul8conv_2d_39/instance_normalization_43/batchnorm/Rsqrt:y:05conv_2d_39/instance_normalization_43/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_39/instance_normalization_43/batchnorm/mul
4conv_2d_39/instance_normalization_43/batchnorm/mul_1Mul$conv_2d_39/conv2d_39/Conv2D:output:06conv_2d_39/instance_normalization_43/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_39/instance_normalization_43/batchnorm/mul_1¢
4conv_2d_39/instance_normalization_43/batchnorm/mul_2Mul:conv_2d_39/instance_normalization_43/moments/mean:output:06conv_2d_39/instance_normalization_43/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_39/instance_normalization_43/batchnorm/mul_2
2conv_2d_39/instance_normalization_43/batchnorm/subSub7conv_2d_39/instance_normalization_43/Reshape_1:output:08conv_2d_39/instance_normalization_43/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_39/instance_normalization_43/batchnorm/sub¤
4conv_2d_39/instance_normalization_43/batchnorm/add_1AddV28conv_2d_39/instance_normalization_43/batchnorm/mul_1:z:06conv_2d_39/instance_normalization_43/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_39/instance_normalization_43/batchnorm/add_1¡
conv_2d_39/ReluRelu8conv_2d_39/instance_normalization_43/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_39/ReluÇ
conv_2d_40/MirrorPad	MirrorPadconv_2d_39/Relu:activations:0conv_2d_40_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_40/MirrorPadÖ
*conv_2d_40/conv2d_40/Conv2D/ReadVariableOpReadVariableOp3conv_2d_40_conv2d_40_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_40/conv2d_40/Conv2D/ReadVariableOpý
conv_2d_40/conv2d_40/Conv2DConv2Dconv_2d_40/MirrorPad:output:02conv_2d_40/conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_40/conv2d_40/Conv2D¬
*conv_2d_40/instance_normalization_44/ShapeShape$conv_2d_40/conv2d_40/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_40/instance_normalization_44/Shape¾
8conv_2d_40/instance_normalization_44/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_40/instance_normalization_44/strided_slice/stackÂ
:conv_2d_40/instance_normalization_44/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice/stack_1Â
:conv_2d_40/instance_normalization_44/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice/stack_2À
2conv_2d_40/instance_normalization_44/strided_sliceStridedSlice3conv_2d_40/instance_normalization_44/Shape:output:0Aconv_2d_40/instance_normalization_44/strided_slice/stack:output:0Cconv_2d_40/instance_normalization_44/strided_slice/stack_1:output:0Cconv_2d_40/instance_normalization_44/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_40/instance_normalization_44/strided_sliceÂ
:conv_2d_40/instance_normalization_44/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice_1/stackÆ
<conv_2d_40/instance_normalization_44/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_1/stack_1Æ
<conv_2d_40/instance_normalization_44/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_1/stack_2Ê
4conv_2d_40/instance_normalization_44/strided_slice_1StridedSlice3conv_2d_40/instance_normalization_44/Shape:output:0Cconv_2d_40/instance_normalization_44/strided_slice_1/stack:output:0Econv_2d_40/instance_normalization_44/strided_slice_1/stack_1:output:0Econv_2d_40/instance_normalization_44/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_40/instance_normalization_44/strided_slice_1Â
:conv_2d_40/instance_normalization_44/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice_2/stackÆ
<conv_2d_40/instance_normalization_44/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_2/stack_1Æ
<conv_2d_40/instance_normalization_44/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_2/stack_2Ê
4conv_2d_40/instance_normalization_44/strided_slice_2StridedSlice3conv_2d_40/instance_normalization_44/Shape:output:0Cconv_2d_40/instance_normalization_44/strided_slice_2/stack:output:0Econv_2d_40/instance_normalization_44/strided_slice_2/stack_1:output:0Econv_2d_40/instance_normalization_44/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_40/instance_normalization_44/strided_slice_2Â
:conv_2d_40/instance_normalization_44/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice_3/stackÆ
<conv_2d_40/instance_normalization_44/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_3/stack_1Æ
<conv_2d_40/instance_normalization_44/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_3/stack_2Ê
4conv_2d_40/instance_normalization_44/strided_slice_3StridedSlice3conv_2d_40/instance_normalization_44/Shape:output:0Cconv_2d_40/instance_normalization_44/strided_slice_3/stack:output:0Econv_2d_40/instance_normalization_44/strided_slice_3/stack_1:output:0Econv_2d_40/instance_normalization_44/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_40/instance_normalization_44/strided_slice_3Û
Cconv_2d_40/instance_normalization_44/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_40/instance_normalization_44/moments/mean/reduction_indices®
1conv_2d_40/instance_normalization_44/moments/meanMean$conv_2d_40/conv2d_40/Conv2D:output:0Lconv_2d_40/instance_normalization_44/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_40/instance_normalization_44/moments/meaný
9conv_2d_40/instance_normalization_44/moments/StopGradientStopGradient:conv_2d_40/instance_normalization_44/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_40/instance_normalization_44/moments/StopGradient¼
>conv_2d_40/instance_normalization_44/moments/SquaredDifferenceSquaredDifference$conv_2d_40/conv2d_40/Conv2D:output:0Bconv_2d_40/instance_normalization_44/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_40/instance_normalization_44/moments/SquaredDifferenceã
Gconv_2d_40/instance_normalization_44/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_40/instance_normalization_44/moments/variance/reduction_indicesØ
5conv_2d_40/instance_normalization_44/moments/varianceMeanBconv_2d_40/instance_normalization_44/moments/SquaredDifference:z:0Pconv_2d_40/instance_normalization_44/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_40/instance_normalization_44/moments/varianceü
;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOpReadVariableOpDconv_2d_40_instance_normalization_44_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOpÁ
2conv_2d_40/instance_normalization_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_40/instance_normalization_44/Reshape/shape
,conv_2d_40/instance_normalization_44/ReshapeReshapeCconv_2d_40/instance_normalization_44/Reshape/ReadVariableOp:value:0;conv_2d_40/instance_normalization_44/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_40/instance_normalization_44/Reshape
=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_40_instance_normalization_44_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOpÅ
4conv_2d_40/instance_normalization_44/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_40/instance_normalization_44/Reshape_1/shape£
.conv_2d_40/instance_normalization_44/Reshape_1ReshapeEconv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp:value:0=conv_2d_40/instance_normalization_44/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_40/instance_normalization_44/Reshape_1±
4conv_2d_40/instance_normalization_44/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_40/instance_normalization_44/batchnorm/add/y«
2conv_2d_40/instance_normalization_44/batchnorm/addAddV2>conv_2d_40/instance_normalization_44/moments/variance:output:0=conv_2d_40/instance_normalization_44/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_40/instance_normalization_44/batchnorm/addè
4conv_2d_40/instance_normalization_44/batchnorm/RsqrtRsqrt6conv_2d_40/instance_normalization_44/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_40/instance_normalization_44/batchnorm/Rsqrt
2conv_2d_40/instance_normalization_44/batchnorm/mulMul8conv_2d_40/instance_normalization_44/batchnorm/Rsqrt:y:05conv_2d_40/instance_normalization_44/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_40/instance_normalization_44/batchnorm/mul
4conv_2d_40/instance_normalization_44/batchnorm/mul_1Mul$conv_2d_40/conv2d_40/Conv2D:output:06conv_2d_40/instance_normalization_44/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_40/instance_normalization_44/batchnorm/mul_1¢
4conv_2d_40/instance_normalization_44/batchnorm/mul_2Mul:conv_2d_40/instance_normalization_44/moments/mean:output:06conv_2d_40/instance_normalization_44/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_40/instance_normalization_44/batchnorm/mul_2
2conv_2d_40/instance_normalization_44/batchnorm/subSub7conv_2d_40/instance_normalization_44/Reshape_1:output:08conv_2d_40/instance_normalization_44/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_40/instance_normalization_44/batchnorm/sub¤
4conv_2d_40/instance_normalization_44/batchnorm/add_1AddV28conv_2d_40/instance_normalization_44/batchnorm/mul_1:z:06conv_2d_40/instance_normalization_44/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_40/instance_normalization_44/batchnorm/add_1
addAddV2inputs8conv_2d_40/instance_normalization_44/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_39/conv2d_39/Conv2D/ReadVariableOp<^conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp>^conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp+^conv_2d_40/conv2d_40/Conv2D/ReadVariableOp<^conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp>^conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_39/conv2d_39/Conv2D/ReadVariableOp*conv_2d_39/conv2d_39/Conv2D/ReadVariableOp2z
;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp2~
=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp2X
*conv_2d_40/conv2d_40/Conv2D/ReadVariableOp*conv_2d_40/conv2d_40/Conv2D/ReadVariableOp2z
;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp2~
=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
ó

)__inference_conv_2d_47_layer_call_fn_6942

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
D__inference_conv_2d_47_layer_call_and_return_conditional_losses_56972
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
à_

J__inference_resize_conv_2d_5_layer_call_and_return_conditional_losses_6868

inputs!
conv_2d_46_mirrorpad_paddings7
3conv_2d_46_conv2d_46_conv2d_readvariableop_resourceH
Dconv_2d_46_instance_normalization_51_reshape_readvariableop_resourceJ
Fconv_2d_46_instance_normalization_51_reshape_1_readvariableop_resource
identity¢*conv_2d_46/conv2d_46/Conv2D/ReadVariableOp¢;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp¢=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOpk
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
conv_2d_46/MirrorPad	MirrorPad-resize/ResizeNearestNeighbor:resized_images:0conv_2d_46_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒÒ@*
mode	REFLECT2
conv_2d_46/MirrorPadÔ
*conv_2d_46/conv2d_46/Conv2D/ReadVariableOpReadVariableOp3conv_2d_46_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02,
*conv_2d_46/conv2d_46/Conv2D/ReadVariableOpü
conv_2d_46/conv2d_46/Conv2DConv2Dconv_2d_46/MirrorPad:output:02conv_2d_46/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2
conv_2d_46/conv2d_46/Conv2D¬
*conv_2d_46/instance_normalization_51/ShapeShape$conv_2d_46/conv2d_46/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_46/instance_normalization_51/Shape¾
8conv_2d_46/instance_normalization_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_46/instance_normalization_51/strided_slice/stackÂ
:conv_2d_46/instance_normalization_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice/stack_1Â
:conv_2d_46/instance_normalization_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice/stack_2À
2conv_2d_46/instance_normalization_51/strided_sliceStridedSlice3conv_2d_46/instance_normalization_51/Shape:output:0Aconv_2d_46/instance_normalization_51/strided_slice/stack:output:0Cconv_2d_46/instance_normalization_51/strided_slice/stack_1:output:0Cconv_2d_46/instance_normalization_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_46/instance_normalization_51/strided_sliceÂ
:conv_2d_46/instance_normalization_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice_1/stackÆ
<conv_2d_46/instance_normalization_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_1/stack_1Æ
<conv_2d_46/instance_normalization_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_1/stack_2Ê
4conv_2d_46/instance_normalization_51/strided_slice_1StridedSlice3conv_2d_46/instance_normalization_51/Shape:output:0Cconv_2d_46/instance_normalization_51/strided_slice_1/stack:output:0Econv_2d_46/instance_normalization_51/strided_slice_1/stack_1:output:0Econv_2d_46/instance_normalization_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_46/instance_normalization_51/strided_slice_1Â
:conv_2d_46/instance_normalization_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice_2/stackÆ
<conv_2d_46/instance_normalization_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_2/stack_1Æ
<conv_2d_46/instance_normalization_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_2/stack_2Ê
4conv_2d_46/instance_normalization_51/strided_slice_2StridedSlice3conv_2d_46/instance_normalization_51/Shape:output:0Cconv_2d_46/instance_normalization_51/strided_slice_2/stack:output:0Econv_2d_46/instance_normalization_51/strided_slice_2/stack_1:output:0Econv_2d_46/instance_normalization_51/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_46/instance_normalization_51/strided_slice_2Â
:conv_2d_46/instance_normalization_51/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice_3/stackÆ
<conv_2d_46/instance_normalization_51/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_3/stack_1Æ
<conv_2d_46/instance_normalization_51/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_3/stack_2Ê
4conv_2d_46/instance_normalization_51/strided_slice_3StridedSlice3conv_2d_46/instance_normalization_51/Shape:output:0Cconv_2d_46/instance_normalization_51/strided_slice_3/stack:output:0Econv_2d_46/instance_normalization_51/strided_slice_3/stack_1:output:0Econv_2d_46/instance_normalization_51/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_46/instance_normalization_51/strided_slice_3Û
Cconv_2d_46/instance_normalization_51/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_46/instance_normalization_51/moments/mean/reduction_indices­
1conv_2d_46/instance_normalization_51/moments/meanMean$conv_2d_46/conv2d_46/Conv2D:output:0Lconv_2d_46/instance_normalization_51/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(23
1conv_2d_46/instance_normalization_51/moments/meanü
9conv_2d_46/instance_normalization_51/moments/StopGradientStopGradient:conv_2d_46/instance_normalization_51/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2;
9conv_2d_46/instance_normalization_51/moments/StopGradient»
>conv_2d_46/instance_normalization_51/moments/SquaredDifferenceSquaredDifference$conv_2d_46/conv2d_46/Conv2D:output:0Bconv_2d_46/instance_normalization_51/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2@
>conv_2d_46/instance_normalization_51/moments/SquaredDifferenceã
Gconv_2d_46/instance_normalization_51/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_46/instance_normalization_51/moments/variance/reduction_indices×
5conv_2d_46/instance_normalization_51/moments/varianceMeanBconv_2d_46/instance_normalization_51/moments/SquaredDifference:z:0Pconv_2d_46/instance_normalization_51/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(27
5conv_2d_46/instance_normalization_51/moments/varianceû
;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOpReadVariableOpDconv_2d_46_instance_normalization_51_reshape_readvariableop_resource*
_output_shapes
: *
dtype02=
;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOpÁ
2conv_2d_46/instance_normalization_51/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             24
2conv_2d_46/instance_normalization_51/Reshape/shape
,conv_2d_46/instance_normalization_51/ReshapeReshapeCconv_2d_46/instance_normalization_51/Reshape/ReadVariableOp:value:0;conv_2d_46/instance_normalization_51/Reshape/shape:output:0*
T0*&
_output_shapes
: 2.
,conv_2d_46/instance_normalization_51/Reshape
=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_46_instance_normalization_51_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02?
=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOpÅ
4conv_2d_46/instance_normalization_51/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             26
4conv_2d_46/instance_normalization_51/Reshape_1/shape¢
.conv_2d_46/instance_normalization_51/Reshape_1ReshapeEconv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp:value:0=conv_2d_46/instance_normalization_51/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 20
.conv_2d_46/instance_normalization_51/Reshape_1±
4conv_2d_46/instance_normalization_51/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_46/instance_normalization_51/batchnorm/add/yª
2conv_2d_46/instance_normalization_51/batchnorm/addAddV2>conv_2d_46/instance_normalization_51/moments/variance:output:0=conv_2d_46/instance_normalization_51/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_46/instance_normalization_51/batchnorm/addç
4conv_2d_46/instance_normalization_51/batchnorm/RsqrtRsqrt6conv_2d_46/instance_normalization_51/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4conv_2d_46/instance_normalization_51/batchnorm/Rsqrt
2conv_2d_46/instance_normalization_51/batchnorm/mulMul8conv_2d_46/instance_normalization_51/batchnorm/Rsqrt:y:05conv_2d_46/instance_normalization_51/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_46/instance_normalization_51/batchnorm/mul
4conv_2d_46/instance_normalization_51/batchnorm/mul_1Mul$conv_2d_46/conv2d_46/Conv2D:output:06conv_2d_46/instance_normalization_51/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 26
4conv_2d_46/instance_normalization_51/batchnorm/mul_1¡
4conv_2d_46/instance_normalization_51/batchnorm/mul_2Mul:conv_2d_46/instance_normalization_51/moments/mean:output:06conv_2d_46/instance_normalization_51/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4conv_2d_46/instance_normalization_51/batchnorm/mul_2
2conv_2d_46/instance_normalization_51/batchnorm/subSub7conv_2d_46/instance_normalization_51/Reshape_1:output:08conv_2d_46/instance_normalization_51/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_46/instance_normalization_51/batchnorm/sub£
4conv_2d_46/instance_normalization_51/batchnorm/add_1AddV28conv_2d_46/instance_normalization_51/batchnorm/mul_1:z:06conv_2d_46/instance_normalization_51/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 26
4conv_2d_46/instance_normalization_51/batchnorm/add_1 
conv_2d_46/ReluRelu8conv_2d_46/instance_normalization_51/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2
conv_2d_46/Relu¦
IdentityIdentityconv_2d_46/Relu:activations:0+^conv_2d_46/conv2d_46/Conv2D/ReadVariableOp<^conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp>^conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::2X
*conv_2d_46/conv2d_46/Conv2D/ReadVariableOp*conv_2d_46/conv2d_46/Conv2D/ReadVariableOp2z
;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp2~
=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:
ÂO
³
D__inference_conv_2d_47_layer_call_and_return_conditional_losses_6929

inputs
mirrorpad_paddings,
(conv2d_47_conv2d_readvariableop_resource=
9instance_normalization_53_reshape_readvariableop_resource?
;instance_normalization_53_reshape_1_readvariableop_resource
identity¢conv2d_47/Conv2D/ReadVariableOp¢0instance_normalization_53/Reshape/ReadVariableOp¢2instance_normalization_53/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð *
mode	REFLECT2
	MirrorPad³
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_47/Conv2D/ReadVariableOpÐ
conv2d_47/Conv2DConv2DMirrorPad:output:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*
paddingVALID*
strides
2
conv2d_47/Conv2D
instance_normalization_53/ShapeShapeconv2d_47/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_53/Shape¨
-instance_normalization_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_53/strided_slice/stack¬
/instance_normalization_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice/stack_1¬
/instance_normalization_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice/stack_2þ
'instance_normalization_53/strided_sliceStridedSlice(instance_normalization_53/Shape:output:06instance_normalization_53/strided_slice/stack:output:08instance_normalization_53/strided_slice/stack_1:output:08instance_normalization_53/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_53/strided_slice¬
/instance_normalization_53/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice_1/stack°
1instance_normalization_53/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_1/stack_1°
1instance_normalization_53/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_1/stack_2
)instance_normalization_53/strided_slice_1StridedSlice(instance_normalization_53/Shape:output:08instance_normalization_53/strided_slice_1/stack:output:0:instance_normalization_53/strided_slice_1/stack_1:output:0:instance_normalization_53/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_53/strided_slice_1¬
/instance_normalization_53/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice_2/stack°
1instance_normalization_53/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_2/stack_1°
1instance_normalization_53/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_2/stack_2
)instance_normalization_53/strided_slice_2StridedSlice(instance_normalization_53/Shape:output:08instance_normalization_53/strided_slice_2/stack:output:0:instance_normalization_53/strided_slice_2/stack_1:output:0:instance_normalization_53/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_53/strided_slice_2¬
/instance_normalization_53/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice_3/stack°
1instance_normalization_53/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_3/stack_1°
1instance_normalization_53/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_3/stack_2
)instance_normalization_53/strided_slice_3StridedSlice(instance_normalization_53/Shape:output:08instance_normalization_53/strided_slice_3/stack:output:0:instance_normalization_53/strided_slice_3/stack_1:output:0:instance_normalization_53/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_53/strided_slice_3Å
8instance_normalization_53/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_53/moments/mean/reduction_indices
&instance_normalization_53/moments/meanMeanconv2d_47/Conv2D:output:0Ainstance_normalization_53/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2(
&instance_normalization_53/moments/meanÛ
.instance_normalization_53/moments/StopGradientStopGradient/instance_normalization_53/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.instance_normalization_53/moments/StopGradient
3instance_normalization_53/moments/SquaredDifferenceSquaredDifferenceconv2d_47/Conv2D:output:07instance_normalization_53/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè25
3instance_normalization_53/moments/SquaredDifferenceÍ
<instance_normalization_53/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_53/moments/variance/reduction_indices«
*instance_normalization_53/moments/varianceMean7instance_normalization_53/moments/SquaredDifference:z:0Einstance_normalization_53/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2,
*instance_normalization_53/moments/varianceÚ
0instance_normalization_53/Reshape/ReadVariableOpReadVariableOp9instance_normalization_53_reshape_readvariableop_resource*
_output_shapes
:*
dtype022
0instance_normalization_53/Reshape/ReadVariableOp«
'instance_normalization_53/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'instance_normalization_53/Reshape/shapeî
!instance_normalization_53/ReshapeReshape8instance_normalization_53/Reshape/ReadVariableOp:value:00instance_normalization_53/Reshape/shape:output:0*
T0*&
_output_shapes
:2#
!instance_normalization_53/Reshapeà
2instance_normalization_53/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_53_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype024
2instance_normalization_53/Reshape_1/ReadVariableOp¯
)instance_normalization_53/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)instance_normalization_53/Reshape_1/shapeö
#instance_normalization_53/Reshape_1Reshape:instance_normalization_53/Reshape_1/ReadVariableOp:value:02instance_normalization_53/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2%
#instance_normalization_53/Reshape_1
)instance_normalization_53/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_53/batchnorm/add/yþ
'instance_normalization_53/batchnorm/addAddV23instance_normalization_53/moments/variance:output:02instance_normalization_53/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_53/batchnorm/addÆ
)instance_normalization_53/batchnorm/RsqrtRsqrt+instance_normalization_53/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_53/batchnorm/Rsqrtî
'instance_normalization_53/batchnorm/mulMul-instance_normalization_53/batchnorm/Rsqrt:y:0*instance_normalization_53/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_53/batchnorm/mulá
)instance_normalization_53/batchnorm/mul_1Mulconv2d_47/Conv2D:output:0+instance_normalization_53/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2+
)instance_normalization_53/batchnorm/mul_1õ
)instance_normalization_53/batchnorm/mul_2Mul/instance_normalization_53/moments/mean:output:0+instance_normalization_53/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_53/batchnorm/mul_2ð
'instance_normalization_53/batchnorm/subSub,instance_normalization_53/Reshape_1:output:0-instance_normalization_53/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_53/batchnorm/sub÷
)instance_normalization_53/batchnorm/add_1AddV2-instance_normalization_53/batchnorm/mul_1:z:0+instance_normalization_53/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2+
)instance_normalization_53/batchnorm/add_1
IdentityIdentity-instance_normalization_53/batchnorm/add_1:z:0 ^conv2d_47/Conv2D/ReadVariableOp1^instance_normalization_53/Reshape/ReadVariableOp3^instance_normalization_53/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2d
0instance_normalization_53/Reshape/ReadVariableOp0instance_normalization_53/Reshape/ReadVariableOp2h
2instance_normalization_53/Reshape_1/ReadVariableOp2instance_normalization_53/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
å_

J__inference_resize_conv_2d_4_layer_call_and_return_conditional_losses_6804

inputs!
conv_2d_45_mirrorpad_paddings7
3conv_2d_45_conv2d_45_conv2d_readvariableop_resourceH
Dconv_2d_45_instance_normalization_49_reshape_readvariableop_resourceJ
Fconv_2d_45_instance_normalization_49_reshape_1_readvariableop_resource
identity¢*conv_2d_45/conv2d_45/Conv2D/ReadVariableOp¢;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp¢=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOpk
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
conv_2d_45/MirrorPad	MirrorPad-resize/ResizeNearestNeighbor:resized_images:0conv_2d_45_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿêê*
mode	REFLECT2
conv_2d_45/MirrorPadÕ
*conv_2d_45/conv2d_45/Conv2D/ReadVariableOpReadVariableOp3conv_2d_45_conv2d_45_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02,
*conv_2d_45/conv2d_45/Conv2D/ReadVariableOpü
conv_2d_45/conv2d_45/Conv2DConv2Dconv_2d_45/MirrorPad:output:02conv_2d_45/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2
conv_2d_45/conv2d_45/Conv2D¬
*conv_2d_45/instance_normalization_49/ShapeShape$conv_2d_45/conv2d_45/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_45/instance_normalization_49/Shape¾
8conv_2d_45/instance_normalization_49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_45/instance_normalization_49/strided_slice/stackÂ
:conv_2d_45/instance_normalization_49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice/stack_1Â
:conv_2d_45/instance_normalization_49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice/stack_2À
2conv_2d_45/instance_normalization_49/strided_sliceStridedSlice3conv_2d_45/instance_normalization_49/Shape:output:0Aconv_2d_45/instance_normalization_49/strided_slice/stack:output:0Cconv_2d_45/instance_normalization_49/strided_slice/stack_1:output:0Cconv_2d_45/instance_normalization_49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_45/instance_normalization_49/strided_sliceÂ
:conv_2d_45/instance_normalization_49/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice_1/stackÆ
<conv_2d_45/instance_normalization_49/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_1/stack_1Æ
<conv_2d_45/instance_normalization_49/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_1/stack_2Ê
4conv_2d_45/instance_normalization_49/strided_slice_1StridedSlice3conv_2d_45/instance_normalization_49/Shape:output:0Cconv_2d_45/instance_normalization_49/strided_slice_1/stack:output:0Econv_2d_45/instance_normalization_49/strided_slice_1/stack_1:output:0Econv_2d_45/instance_normalization_49/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_45/instance_normalization_49/strided_slice_1Â
:conv_2d_45/instance_normalization_49/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice_2/stackÆ
<conv_2d_45/instance_normalization_49/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_2/stack_1Æ
<conv_2d_45/instance_normalization_49/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_2/stack_2Ê
4conv_2d_45/instance_normalization_49/strided_slice_2StridedSlice3conv_2d_45/instance_normalization_49/Shape:output:0Cconv_2d_45/instance_normalization_49/strided_slice_2/stack:output:0Econv_2d_45/instance_normalization_49/strided_slice_2/stack_1:output:0Econv_2d_45/instance_normalization_49/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_45/instance_normalization_49/strided_slice_2Â
:conv_2d_45/instance_normalization_49/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice_3/stackÆ
<conv_2d_45/instance_normalization_49/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_3/stack_1Æ
<conv_2d_45/instance_normalization_49/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_3/stack_2Ê
4conv_2d_45/instance_normalization_49/strided_slice_3StridedSlice3conv_2d_45/instance_normalization_49/Shape:output:0Cconv_2d_45/instance_normalization_49/strided_slice_3/stack:output:0Econv_2d_45/instance_normalization_49/strided_slice_3/stack_1:output:0Econv_2d_45/instance_normalization_49/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_45/instance_normalization_49/strided_slice_3Û
Cconv_2d_45/instance_normalization_49/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_45/instance_normalization_49/moments/mean/reduction_indices­
1conv_2d_45/instance_normalization_49/moments/meanMean$conv_2d_45/conv2d_45/Conv2D:output:0Lconv_2d_45/instance_normalization_49/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(23
1conv_2d_45/instance_normalization_49/moments/meanü
9conv_2d_45/instance_normalization_49/moments/StopGradientStopGradient:conv_2d_45/instance_normalization_49/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2;
9conv_2d_45/instance_normalization_49/moments/StopGradient»
>conv_2d_45/instance_normalization_49/moments/SquaredDifferenceSquaredDifference$conv_2d_45/conv2d_45/Conv2D:output:0Bconv_2d_45/instance_normalization_49/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2@
>conv_2d_45/instance_normalization_49/moments/SquaredDifferenceã
Gconv_2d_45/instance_normalization_49/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_45/instance_normalization_49/moments/variance/reduction_indices×
5conv_2d_45/instance_normalization_49/moments/varianceMeanBconv_2d_45/instance_normalization_49/moments/SquaredDifference:z:0Pconv_2d_45/instance_normalization_49/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(27
5conv_2d_45/instance_normalization_49/moments/varianceû
;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOpReadVariableOpDconv_2d_45_instance_normalization_49_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02=
;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOpÁ
2conv_2d_45/instance_normalization_49/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   24
2conv_2d_45/instance_normalization_49/Reshape/shape
,conv_2d_45/instance_normalization_49/ReshapeReshapeCconv_2d_45/instance_normalization_49/Reshape/ReadVariableOp:value:0;conv_2d_45/instance_normalization_49/Reshape/shape:output:0*
T0*&
_output_shapes
:@2.
,conv_2d_45/instance_normalization_49/Reshape
=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_45_instance_normalization_49_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02?
=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOpÅ
4conv_2d_45/instance_normalization_49/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   26
4conv_2d_45/instance_normalization_49/Reshape_1/shape¢
.conv_2d_45/instance_normalization_49/Reshape_1ReshapeEconv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp:value:0=conv_2d_45/instance_normalization_49/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@20
.conv_2d_45/instance_normalization_49/Reshape_1±
4conv_2d_45/instance_normalization_49/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_45/instance_normalization_49/batchnorm/add/yª
2conv_2d_45/instance_normalization_49/batchnorm/addAddV2>conv_2d_45/instance_normalization_49/moments/variance:output:0=conv_2d_45/instance_normalization_49/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_45/instance_normalization_49/batchnorm/addç
4conv_2d_45/instance_normalization_49/batchnorm/RsqrtRsqrt6conv_2d_45/instance_normalization_49/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4conv_2d_45/instance_normalization_49/batchnorm/Rsqrt
2conv_2d_45/instance_normalization_49/batchnorm/mulMul8conv_2d_45/instance_normalization_49/batchnorm/Rsqrt:y:05conv_2d_45/instance_normalization_49/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_45/instance_normalization_49/batchnorm/mul
4conv_2d_45/instance_normalization_49/batchnorm/mul_1Mul$conv_2d_45/conv2d_45/Conv2D:output:06conv_2d_45/instance_normalization_49/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@26
4conv_2d_45/instance_normalization_49/batchnorm/mul_1¡
4conv_2d_45/instance_normalization_49/batchnorm/mul_2Mul:conv_2d_45/instance_normalization_49/moments/mean:output:06conv_2d_45/instance_normalization_49/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4conv_2d_45/instance_normalization_49/batchnorm/mul_2
2conv_2d_45/instance_normalization_49/batchnorm/subSub7conv_2d_45/instance_normalization_49/Reshape_1:output:08conv_2d_45/instance_normalization_49/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_45/instance_normalization_49/batchnorm/sub£
4conv_2d_45/instance_normalization_49/batchnorm/add_1AddV28conv_2d_45/instance_normalization_49/batchnorm/mul_1:z:06conv_2d_45/instance_normalization_49/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@26
4conv_2d_45/instance_normalization_49/batchnorm/add_1 
conv_2d_45/ReluRelu8conv_2d_45/instance_normalization_49/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2
conv_2d_45/Relu¦
IdentityIdentityconv_2d_45/Relu:activations:0+^conv_2d_45/conv2d_45/Conv2D/ReadVariableOp<^conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp>^conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿúú::::2X
*conv_2d_45/conv2d_45/Conv2D/ReadVariableOp*conv_2d_45/conv2d_45/Conv2D/ReadVariableOp2z
;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp2~
=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

:
¨P
³
D__inference_conv_2d_32_layer_call_and_return_conditional_losses_6041

inputs
mirrorpad_paddings,
(conv2d_32_conv2d_readvariableop_resource=
9instance_normalization_36_reshape_readvariableop_resource?
;instance_normalization_36_reshape_1_readvariableop_resource
identity¢conv2d_32/Conv2D/ReadVariableOp¢0instance_normalization_36/Reshape/ReadVariableOp¢2instance_normalization_36/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð*
mode	REFLECT2
	MirrorPad³
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_32/Conv2D/ReadVariableOpÐ
conv2d_32/Conv2DConv2DMirrorPad:output:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2
conv2d_32/Conv2D
instance_normalization_36/ShapeShapeconv2d_32/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_36/Shape¨
-instance_normalization_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_36/strided_slice/stack¬
/instance_normalization_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice/stack_1¬
/instance_normalization_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice/stack_2þ
'instance_normalization_36/strided_sliceStridedSlice(instance_normalization_36/Shape:output:06instance_normalization_36/strided_slice/stack:output:08instance_normalization_36/strided_slice/stack_1:output:08instance_normalization_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_36/strided_slice¬
/instance_normalization_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice_1/stack°
1instance_normalization_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_1/stack_1°
1instance_normalization_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_1/stack_2
)instance_normalization_36/strided_slice_1StridedSlice(instance_normalization_36/Shape:output:08instance_normalization_36/strided_slice_1/stack:output:0:instance_normalization_36/strided_slice_1/stack_1:output:0:instance_normalization_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_36/strided_slice_1¬
/instance_normalization_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice_2/stack°
1instance_normalization_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_2/stack_1°
1instance_normalization_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_2/stack_2
)instance_normalization_36/strided_slice_2StridedSlice(instance_normalization_36/Shape:output:08instance_normalization_36/strided_slice_2/stack:output:0:instance_normalization_36/strided_slice_2/stack_1:output:0:instance_normalization_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_36/strided_slice_2¬
/instance_normalization_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice_3/stack°
1instance_normalization_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_3/stack_1°
1instance_normalization_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_3/stack_2
)instance_normalization_36/strided_slice_3StridedSlice(instance_normalization_36/Shape:output:08instance_normalization_36/strided_slice_3/stack:output:0:instance_normalization_36/strided_slice_3/stack_1:output:0:instance_normalization_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_36/strided_slice_3Å
8instance_normalization_36/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_36/moments/mean/reduction_indices
&instance_normalization_36/moments/meanMeanconv2d_32/Conv2D:output:0Ainstance_normalization_36/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2(
&instance_normalization_36/moments/meanÛ
.instance_normalization_36/moments/StopGradientStopGradient/instance_normalization_36/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.instance_normalization_36/moments/StopGradient
3instance_normalization_36/moments/SquaredDifferenceSquaredDifferenceconv2d_32/Conv2D:output:07instance_normalization_36/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 25
3instance_normalization_36/moments/SquaredDifferenceÍ
<instance_normalization_36/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_36/moments/variance/reduction_indices«
*instance_normalization_36/moments/varianceMean7instance_normalization_36/moments/SquaredDifference:z:0Einstance_normalization_36/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2,
*instance_normalization_36/moments/varianceÚ
0instance_normalization_36/Reshape/ReadVariableOpReadVariableOp9instance_normalization_36_reshape_readvariableop_resource*
_output_shapes
: *
dtype022
0instance_normalization_36/Reshape/ReadVariableOp«
'instance_normalization_36/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'instance_normalization_36/Reshape/shapeî
!instance_normalization_36/ReshapeReshape8instance_normalization_36/Reshape/ReadVariableOp:value:00instance_normalization_36/Reshape/shape:output:0*
T0*&
_output_shapes
: 2#
!instance_normalization_36/Reshapeà
2instance_normalization_36/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_36_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype024
2instance_normalization_36/Reshape_1/ReadVariableOp¯
)instance_normalization_36/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2+
)instance_normalization_36/Reshape_1/shapeö
#instance_normalization_36/Reshape_1Reshape:instance_normalization_36/Reshape_1/ReadVariableOp:value:02instance_normalization_36/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2%
#instance_normalization_36/Reshape_1
)instance_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_36/batchnorm/add/yþ
'instance_normalization_36/batchnorm/addAddV23instance_normalization_36/moments/variance:output:02instance_normalization_36/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_36/batchnorm/addÆ
)instance_normalization_36/batchnorm/RsqrtRsqrt+instance_normalization_36/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)instance_normalization_36/batchnorm/Rsqrtî
'instance_normalization_36/batchnorm/mulMul-instance_normalization_36/batchnorm/Rsqrt:y:0*instance_normalization_36/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_36/batchnorm/mulá
)instance_normalization_36/batchnorm/mul_1Mulconv2d_32/Conv2D:output:0+instance_normalization_36/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2+
)instance_normalization_36/batchnorm/mul_1õ
)instance_normalization_36/batchnorm/mul_2Mul/instance_normalization_36/moments/mean:output:0+instance_normalization_36/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)instance_normalization_36/batchnorm/mul_2ð
'instance_normalization_36/batchnorm/subSub,instance_normalization_36/Reshape_1:output:0-instance_normalization_36/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_36/batchnorm/sub÷
)instance_normalization_36/batchnorm/add_1AddV2-instance_normalization_36/batchnorm/mul_1:z:0+instance_normalization_36/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2+
)instance_normalization_36/batchnorm/add_1
ReluRelu-instance_normalization_36/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2
Reluú
IdentityIdentityRelu:activations:0 ^conv2d_32/Conv2D/ReadVariableOp1^instance_normalization_36/Reshape/ReadVariableOp3^instance_normalization_36/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè::::2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2d
0instance_normalization_36/Reshape/ReadVariableOp0instance_normalization_36/Reshape/ReadVariableOp2h
2instance_normalization_36/Reshape_1/ReadVariableOp2instance_normalization_36/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè
 
_user_specified_nameinputs:$ 

_output_shapes

:
²0
ò
S__inference_instance_normalization_40_layer_call_and_return_conditional_losses_4002

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
8__inference_instance_normalization_51_layer_call_fn_4552

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
S__inference_instance_normalization_51_layer_call_and_return_conditional_losses_45422
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
ó

)__inference_conv_2d_33_layer_call_fn_6116

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
D__inference_conv_2d_33_layer_call_and_return_conditional_losses_47322
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
æ

8__inference_instance_normalization_49_layer_call_fn_4498

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
S__inference_instance_normalization_49_layer_call_and_return_conditional_losses_44882
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
ê

8__inference_instance_normalization_40_layer_call_fn_4012

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
S__inference_instance_normalization_40_layer_call_and_return_conditional_losses_40022
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
¤	
Ù
*__inference_residual_11_layer_call_fn_6408

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÏ
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
GPU2*0J 8 *N
fIRG
E__inference_residual_11_layer_call_and_return_conditional_losses_50572
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
æ

8__inference_instance_normalization_37_layer_call_fn_3850

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
S__inference_instance_normalization_37_layer_call_and_return_conditional_losses_38402
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
¼
Ï
"__inference_signature_wrapper_5992
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
__inference__wrapped_model_37422
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
·

E__inference_residual_14_layer_call_and_return_conditional_losses_5459

inputs!
conv_2d_43_mirrorpad_paddings7
3conv_2d_43_conv2d_43_conv2d_readvariableop_resourceH
Dconv_2d_43_instance_normalization_47_reshape_readvariableop_resourceJ
Fconv_2d_43_instance_normalization_47_reshape_1_readvariableop_resource!
conv_2d_44_mirrorpad_paddings7
3conv_2d_44_conv2d_44_conv2d_readvariableop_resourceH
Dconv_2d_44_instance_normalization_48_reshape_readvariableop_resourceJ
Fconv_2d_44_instance_normalization_48_reshape_1_readvariableop_resource
identity¢*conv_2d_43/conv2d_43/Conv2D/ReadVariableOp¢;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp¢=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp¢*conv_2d_44/conv2d_44/Conv2D/ReadVariableOp¢;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp¢=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp°
conv_2d_43/MirrorPad	MirrorPadinputsconv_2d_43_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_43/MirrorPadÖ
*conv_2d_43/conv2d_43/Conv2D/ReadVariableOpReadVariableOp3conv_2d_43_conv2d_43_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_43/conv2d_43/Conv2D/ReadVariableOpý
conv_2d_43/conv2d_43/Conv2DConv2Dconv_2d_43/MirrorPad:output:02conv_2d_43/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_43/conv2d_43/Conv2D¬
*conv_2d_43/instance_normalization_47/ShapeShape$conv_2d_43/conv2d_43/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_43/instance_normalization_47/Shape¾
8conv_2d_43/instance_normalization_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_43/instance_normalization_47/strided_slice/stackÂ
:conv_2d_43/instance_normalization_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice/stack_1Â
:conv_2d_43/instance_normalization_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice/stack_2À
2conv_2d_43/instance_normalization_47/strided_sliceStridedSlice3conv_2d_43/instance_normalization_47/Shape:output:0Aconv_2d_43/instance_normalization_47/strided_slice/stack:output:0Cconv_2d_43/instance_normalization_47/strided_slice/stack_1:output:0Cconv_2d_43/instance_normalization_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_43/instance_normalization_47/strided_sliceÂ
:conv_2d_43/instance_normalization_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice_1/stackÆ
<conv_2d_43/instance_normalization_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_1/stack_1Æ
<conv_2d_43/instance_normalization_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_1/stack_2Ê
4conv_2d_43/instance_normalization_47/strided_slice_1StridedSlice3conv_2d_43/instance_normalization_47/Shape:output:0Cconv_2d_43/instance_normalization_47/strided_slice_1/stack:output:0Econv_2d_43/instance_normalization_47/strided_slice_1/stack_1:output:0Econv_2d_43/instance_normalization_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_43/instance_normalization_47/strided_slice_1Â
:conv_2d_43/instance_normalization_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice_2/stackÆ
<conv_2d_43/instance_normalization_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_2/stack_1Æ
<conv_2d_43/instance_normalization_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_2/stack_2Ê
4conv_2d_43/instance_normalization_47/strided_slice_2StridedSlice3conv_2d_43/instance_normalization_47/Shape:output:0Cconv_2d_43/instance_normalization_47/strided_slice_2/stack:output:0Econv_2d_43/instance_normalization_47/strided_slice_2/stack_1:output:0Econv_2d_43/instance_normalization_47/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_43/instance_normalization_47/strided_slice_2Â
:conv_2d_43/instance_normalization_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice_3/stackÆ
<conv_2d_43/instance_normalization_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_3/stack_1Æ
<conv_2d_43/instance_normalization_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_3/stack_2Ê
4conv_2d_43/instance_normalization_47/strided_slice_3StridedSlice3conv_2d_43/instance_normalization_47/Shape:output:0Cconv_2d_43/instance_normalization_47/strided_slice_3/stack:output:0Econv_2d_43/instance_normalization_47/strided_slice_3/stack_1:output:0Econv_2d_43/instance_normalization_47/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_43/instance_normalization_47/strided_slice_3Û
Cconv_2d_43/instance_normalization_47/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_43/instance_normalization_47/moments/mean/reduction_indices®
1conv_2d_43/instance_normalization_47/moments/meanMean$conv_2d_43/conv2d_43/Conv2D:output:0Lconv_2d_43/instance_normalization_47/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_43/instance_normalization_47/moments/meaný
9conv_2d_43/instance_normalization_47/moments/StopGradientStopGradient:conv_2d_43/instance_normalization_47/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_43/instance_normalization_47/moments/StopGradient¼
>conv_2d_43/instance_normalization_47/moments/SquaredDifferenceSquaredDifference$conv_2d_43/conv2d_43/Conv2D:output:0Bconv_2d_43/instance_normalization_47/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_43/instance_normalization_47/moments/SquaredDifferenceã
Gconv_2d_43/instance_normalization_47/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_43/instance_normalization_47/moments/variance/reduction_indicesØ
5conv_2d_43/instance_normalization_47/moments/varianceMeanBconv_2d_43/instance_normalization_47/moments/SquaredDifference:z:0Pconv_2d_43/instance_normalization_47/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_43/instance_normalization_47/moments/varianceü
;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOpReadVariableOpDconv_2d_43_instance_normalization_47_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOpÁ
2conv_2d_43/instance_normalization_47/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_43/instance_normalization_47/Reshape/shape
,conv_2d_43/instance_normalization_47/ReshapeReshapeCconv_2d_43/instance_normalization_47/Reshape/ReadVariableOp:value:0;conv_2d_43/instance_normalization_47/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_43/instance_normalization_47/Reshape
=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_43_instance_normalization_47_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOpÅ
4conv_2d_43/instance_normalization_47/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_43/instance_normalization_47/Reshape_1/shape£
.conv_2d_43/instance_normalization_47/Reshape_1ReshapeEconv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp:value:0=conv_2d_43/instance_normalization_47/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_43/instance_normalization_47/Reshape_1±
4conv_2d_43/instance_normalization_47/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_43/instance_normalization_47/batchnorm/add/y«
2conv_2d_43/instance_normalization_47/batchnorm/addAddV2>conv_2d_43/instance_normalization_47/moments/variance:output:0=conv_2d_43/instance_normalization_47/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_43/instance_normalization_47/batchnorm/addè
4conv_2d_43/instance_normalization_47/batchnorm/RsqrtRsqrt6conv_2d_43/instance_normalization_47/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_43/instance_normalization_47/batchnorm/Rsqrt
2conv_2d_43/instance_normalization_47/batchnorm/mulMul8conv_2d_43/instance_normalization_47/batchnorm/Rsqrt:y:05conv_2d_43/instance_normalization_47/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_43/instance_normalization_47/batchnorm/mul
4conv_2d_43/instance_normalization_47/batchnorm/mul_1Mul$conv_2d_43/conv2d_43/Conv2D:output:06conv_2d_43/instance_normalization_47/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_43/instance_normalization_47/batchnorm/mul_1¢
4conv_2d_43/instance_normalization_47/batchnorm/mul_2Mul:conv_2d_43/instance_normalization_47/moments/mean:output:06conv_2d_43/instance_normalization_47/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_43/instance_normalization_47/batchnorm/mul_2
2conv_2d_43/instance_normalization_47/batchnorm/subSub7conv_2d_43/instance_normalization_47/Reshape_1:output:08conv_2d_43/instance_normalization_47/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_43/instance_normalization_47/batchnorm/sub¤
4conv_2d_43/instance_normalization_47/batchnorm/add_1AddV28conv_2d_43/instance_normalization_47/batchnorm/mul_1:z:06conv_2d_43/instance_normalization_47/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_43/instance_normalization_47/batchnorm/add_1¡
conv_2d_43/ReluRelu8conv_2d_43/instance_normalization_47/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_43/ReluÇ
conv_2d_44/MirrorPad	MirrorPadconv_2d_43/Relu:activations:0conv_2d_44_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_44/MirrorPadÖ
*conv_2d_44/conv2d_44/Conv2D/ReadVariableOpReadVariableOp3conv_2d_44_conv2d_44_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_44/conv2d_44/Conv2D/ReadVariableOpý
conv_2d_44/conv2d_44/Conv2DConv2Dconv_2d_44/MirrorPad:output:02conv_2d_44/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_44/conv2d_44/Conv2D¬
*conv_2d_44/instance_normalization_48/ShapeShape$conv_2d_44/conv2d_44/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_44/instance_normalization_48/Shape¾
8conv_2d_44/instance_normalization_48/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_44/instance_normalization_48/strided_slice/stackÂ
:conv_2d_44/instance_normalization_48/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice/stack_1Â
:conv_2d_44/instance_normalization_48/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice/stack_2À
2conv_2d_44/instance_normalization_48/strided_sliceStridedSlice3conv_2d_44/instance_normalization_48/Shape:output:0Aconv_2d_44/instance_normalization_48/strided_slice/stack:output:0Cconv_2d_44/instance_normalization_48/strided_slice/stack_1:output:0Cconv_2d_44/instance_normalization_48/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_44/instance_normalization_48/strided_sliceÂ
:conv_2d_44/instance_normalization_48/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice_1/stackÆ
<conv_2d_44/instance_normalization_48/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_1/stack_1Æ
<conv_2d_44/instance_normalization_48/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_1/stack_2Ê
4conv_2d_44/instance_normalization_48/strided_slice_1StridedSlice3conv_2d_44/instance_normalization_48/Shape:output:0Cconv_2d_44/instance_normalization_48/strided_slice_1/stack:output:0Econv_2d_44/instance_normalization_48/strided_slice_1/stack_1:output:0Econv_2d_44/instance_normalization_48/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_44/instance_normalization_48/strided_slice_1Â
:conv_2d_44/instance_normalization_48/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice_2/stackÆ
<conv_2d_44/instance_normalization_48/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_2/stack_1Æ
<conv_2d_44/instance_normalization_48/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_2/stack_2Ê
4conv_2d_44/instance_normalization_48/strided_slice_2StridedSlice3conv_2d_44/instance_normalization_48/Shape:output:0Cconv_2d_44/instance_normalization_48/strided_slice_2/stack:output:0Econv_2d_44/instance_normalization_48/strided_slice_2/stack_1:output:0Econv_2d_44/instance_normalization_48/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_44/instance_normalization_48/strided_slice_2Â
:conv_2d_44/instance_normalization_48/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice_3/stackÆ
<conv_2d_44/instance_normalization_48/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_3/stack_1Æ
<conv_2d_44/instance_normalization_48/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_3/stack_2Ê
4conv_2d_44/instance_normalization_48/strided_slice_3StridedSlice3conv_2d_44/instance_normalization_48/Shape:output:0Cconv_2d_44/instance_normalization_48/strided_slice_3/stack:output:0Econv_2d_44/instance_normalization_48/strided_slice_3/stack_1:output:0Econv_2d_44/instance_normalization_48/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_44/instance_normalization_48/strided_slice_3Û
Cconv_2d_44/instance_normalization_48/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_44/instance_normalization_48/moments/mean/reduction_indices®
1conv_2d_44/instance_normalization_48/moments/meanMean$conv_2d_44/conv2d_44/Conv2D:output:0Lconv_2d_44/instance_normalization_48/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_44/instance_normalization_48/moments/meaný
9conv_2d_44/instance_normalization_48/moments/StopGradientStopGradient:conv_2d_44/instance_normalization_48/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_44/instance_normalization_48/moments/StopGradient¼
>conv_2d_44/instance_normalization_48/moments/SquaredDifferenceSquaredDifference$conv_2d_44/conv2d_44/Conv2D:output:0Bconv_2d_44/instance_normalization_48/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_44/instance_normalization_48/moments/SquaredDifferenceã
Gconv_2d_44/instance_normalization_48/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_44/instance_normalization_48/moments/variance/reduction_indicesØ
5conv_2d_44/instance_normalization_48/moments/varianceMeanBconv_2d_44/instance_normalization_48/moments/SquaredDifference:z:0Pconv_2d_44/instance_normalization_48/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_44/instance_normalization_48/moments/varianceü
;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOpReadVariableOpDconv_2d_44_instance_normalization_48_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOpÁ
2conv_2d_44/instance_normalization_48/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_44/instance_normalization_48/Reshape/shape
,conv_2d_44/instance_normalization_48/ReshapeReshapeCconv_2d_44/instance_normalization_48/Reshape/ReadVariableOp:value:0;conv_2d_44/instance_normalization_48/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_44/instance_normalization_48/Reshape
=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_44_instance_normalization_48_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOpÅ
4conv_2d_44/instance_normalization_48/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_44/instance_normalization_48/Reshape_1/shape£
.conv_2d_44/instance_normalization_48/Reshape_1ReshapeEconv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp:value:0=conv_2d_44/instance_normalization_48/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_44/instance_normalization_48/Reshape_1±
4conv_2d_44/instance_normalization_48/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_44/instance_normalization_48/batchnorm/add/y«
2conv_2d_44/instance_normalization_48/batchnorm/addAddV2>conv_2d_44/instance_normalization_48/moments/variance:output:0=conv_2d_44/instance_normalization_48/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_44/instance_normalization_48/batchnorm/addè
4conv_2d_44/instance_normalization_48/batchnorm/RsqrtRsqrt6conv_2d_44/instance_normalization_48/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_44/instance_normalization_48/batchnorm/Rsqrt
2conv_2d_44/instance_normalization_48/batchnorm/mulMul8conv_2d_44/instance_normalization_48/batchnorm/Rsqrt:y:05conv_2d_44/instance_normalization_48/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_44/instance_normalization_48/batchnorm/mul
4conv_2d_44/instance_normalization_48/batchnorm/mul_1Mul$conv_2d_44/conv2d_44/Conv2D:output:06conv_2d_44/instance_normalization_48/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_44/instance_normalization_48/batchnorm/mul_1¢
4conv_2d_44/instance_normalization_48/batchnorm/mul_2Mul:conv_2d_44/instance_normalization_48/moments/mean:output:06conv_2d_44/instance_normalization_48/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_44/instance_normalization_48/batchnorm/mul_2
2conv_2d_44/instance_normalization_48/batchnorm/subSub7conv_2d_44/instance_normalization_48/Reshape_1:output:08conv_2d_44/instance_normalization_48/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_44/instance_normalization_48/batchnorm/sub¤
4conv_2d_44/instance_normalization_48/batchnorm/add_1AddV28conv_2d_44/instance_normalization_48/batchnorm/mul_1:z:06conv_2d_44/instance_normalization_48/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_44/instance_normalization_48/batchnorm/add_1
addAddV2inputs8conv_2d_44/instance_normalization_48/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_43/conv2d_43/Conv2D/ReadVariableOp<^conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp>^conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp+^conv_2d_44/conv2d_44/Conv2D/ReadVariableOp<^conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp>^conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_43/conv2d_43/Conv2D/ReadVariableOp*conv_2d_43/conv2d_43/Conv2D/ReadVariableOp2z
;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp2~
=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp2X
*conv_2d_44/conv2d_44/Conv2D/ReadVariableOp*conv_2d_44/conv2d_44/Conv2D/ReadVariableOp2z
;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp2~
=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp:Z V
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
8__inference_instance_normalization_47_layer_call_fn_4390

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
S__inference_instance_normalization_47_layer_call_and_return_conditional_losses_43802
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
8__inference_instance_normalization_36_layer_call_fn_3796

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
S__inference_instance_normalization_36_layer_call_and_return_conditional_losses_37862
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
å_

J__inference_resize_conv_2d_4_layer_call_and_return_conditional_losses_5550

inputs!
conv_2d_45_mirrorpad_paddings7
3conv_2d_45_conv2d_45_conv2d_readvariableop_resourceH
Dconv_2d_45_instance_normalization_49_reshape_readvariableop_resourceJ
Fconv_2d_45_instance_normalization_49_reshape_1_readvariableop_resource
identity¢*conv_2d_45/conv2d_45/Conv2D/ReadVariableOp¢;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp¢=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOpk
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
conv_2d_45/MirrorPad	MirrorPad-resize/ResizeNearestNeighbor:resized_images:0conv_2d_45_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿêê*
mode	REFLECT2
conv_2d_45/MirrorPadÕ
*conv_2d_45/conv2d_45/Conv2D/ReadVariableOpReadVariableOp3conv_2d_45_conv2d_45_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02,
*conv_2d_45/conv2d_45/Conv2D/ReadVariableOpü
conv_2d_45/conv2d_45/Conv2DConv2Dconv_2d_45/MirrorPad:output:02conv_2d_45/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2
conv_2d_45/conv2d_45/Conv2D¬
*conv_2d_45/instance_normalization_49/ShapeShape$conv_2d_45/conv2d_45/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_45/instance_normalization_49/Shape¾
8conv_2d_45/instance_normalization_49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_45/instance_normalization_49/strided_slice/stackÂ
:conv_2d_45/instance_normalization_49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice/stack_1Â
:conv_2d_45/instance_normalization_49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice/stack_2À
2conv_2d_45/instance_normalization_49/strided_sliceStridedSlice3conv_2d_45/instance_normalization_49/Shape:output:0Aconv_2d_45/instance_normalization_49/strided_slice/stack:output:0Cconv_2d_45/instance_normalization_49/strided_slice/stack_1:output:0Cconv_2d_45/instance_normalization_49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_45/instance_normalization_49/strided_sliceÂ
:conv_2d_45/instance_normalization_49/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice_1/stackÆ
<conv_2d_45/instance_normalization_49/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_1/stack_1Æ
<conv_2d_45/instance_normalization_49/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_1/stack_2Ê
4conv_2d_45/instance_normalization_49/strided_slice_1StridedSlice3conv_2d_45/instance_normalization_49/Shape:output:0Cconv_2d_45/instance_normalization_49/strided_slice_1/stack:output:0Econv_2d_45/instance_normalization_49/strided_slice_1/stack_1:output:0Econv_2d_45/instance_normalization_49/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_45/instance_normalization_49/strided_slice_1Â
:conv_2d_45/instance_normalization_49/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice_2/stackÆ
<conv_2d_45/instance_normalization_49/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_2/stack_1Æ
<conv_2d_45/instance_normalization_49/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_2/stack_2Ê
4conv_2d_45/instance_normalization_49/strided_slice_2StridedSlice3conv_2d_45/instance_normalization_49/Shape:output:0Cconv_2d_45/instance_normalization_49/strided_slice_2/stack:output:0Econv_2d_45/instance_normalization_49/strided_slice_2/stack_1:output:0Econv_2d_45/instance_normalization_49/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_45/instance_normalization_49/strided_slice_2Â
:conv_2d_45/instance_normalization_49/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_45/instance_normalization_49/strided_slice_3/stackÆ
<conv_2d_45/instance_normalization_49/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_3/stack_1Æ
<conv_2d_45/instance_normalization_49/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_45/instance_normalization_49/strided_slice_3/stack_2Ê
4conv_2d_45/instance_normalization_49/strided_slice_3StridedSlice3conv_2d_45/instance_normalization_49/Shape:output:0Cconv_2d_45/instance_normalization_49/strided_slice_3/stack:output:0Econv_2d_45/instance_normalization_49/strided_slice_3/stack_1:output:0Econv_2d_45/instance_normalization_49/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_45/instance_normalization_49/strided_slice_3Û
Cconv_2d_45/instance_normalization_49/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_45/instance_normalization_49/moments/mean/reduction_indices­
1conv_2d_45/instance_normalization_49/moments/meanMean$conv_2d_45/conv2d_45/Conv2D:output:0Lconv_2d_45/instance_normalization_49/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(23
1conv_2d_45/instance_normalization_49/moments/meanü
9conv_2d_45/instance_normalization_49/moments/StopGradientStopGradient:conv_2d_45/instance_normalization_49/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2;
9conv_2d_45/instance_normalization_49/moments/StopGradient»
>conv_2d_45/instance_normalization_49/moments/SquaredDifferenceSquaredDifference$conv_2d_45/conv2d_45/Conv2D:output:0Bconv_2d_45/instance_normalization_49/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2@
>conv_2d_45/instance_normalization_49/moments/SquaredDifferenceã
Gconv_2d_45/instance_normalization_49/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_45/instance_normalization_49/moments/variance/reduction_indices×
5conv_2d_45/instance_normalization_49/moments/varianceMeanBconv_2d_45/instance_normalization_49/moments/SquaredDifference:z:0Pconv_2d_45/instance_normalization_49/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(27
5conv_2d_45/instance_normalization_49/moments/varianceû
;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOpReadVariableOpDconv_2d_45_instance_normalization_49_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02=
;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOpÁ
2conv_2d_45/instance_normalization_49/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   24
2conv_2d_45/instance_normalization_49/Reshape/shape
,conv_2d_45/instance_normalization_49/ReshapeReshapeCconv_2d_45/instance_normalization_49/Reshape/ReadVariableOp:value:0;conv_2d_45/instance_normalization_49/Reshape/shape:output:0*
T0*&
_output_shapes
:@2.
,conv_2d_45/instance_normalization_49/Reshape
=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_45_instance_normalization_49_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02?
=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOpÅ
4conv_2d_45/instance_normalization_49/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   26
4conv_2d_45/instance_normalization_49/Reshape_1/shape¢
.conv_2d_45/instance_normalization_49/Reshape_1ReshapeEconv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp:value:0=conv_2d_45/instance_normalization_49/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@20
.conv_2d_45/instance_normalization_49/Reshape_1±
4conv_2d_45/instance_normalization_49/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_45/instance_normalization_49/batchnorm/add/yª
2conv_2d_45/instance_normalization_49/batchnorm/addAddV2>conv_2d_45/instance_normalization_49/moments/variance:output:0=conv_2d_45/instance_normalization_49/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_45/instance_normalization_49/batchnorm/addç
4conv_2d_45/instance_normalization_49/batchnorm/RsqrtRsqrt6conv_2d_45/instance_normalization_49/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4conv_2d_45/instance_normalization_49/batchnorm/Rsqrt
2conv_2d_45/instance_normalization_49/batchnorm/mulMul8conv_2d_45/instance_normalization_49/batchnorm/Rsqrt:y:05conv_2d_45/instance_normalization_49/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_45/instance_normalization_49/batchnorm/mul
4conv_2d_45/instance_normalization_49/batchnorm/mul_1Mul$conv_2d_45/conv2d_45/Conv2D:output:06conv_2d_45/instance_normalization_49/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@26
4conv_2d_45/instance_normalization_49/batchnorm/mul_1¡
4conv_2d_45/instance_normalization_49/batchnorm/mul_2Mul:conv_2d_45/instance_normalization_49/moments/mean:output:06conv_2d_45/instance_normalization_49/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4conv_2d_45/instance_normalization_49/batchnorm/mul_2
2conv_2d_45/instance_normalization_49/batchnorm/subSub7conv_2d_45/instance_normalization_49/Reshape_1:output:08conv_2d_45/instance_normalization_49/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@24
2conv_2d_45/instance_normalization_49/batchnorm/sub£
4conv_2d_45/instance_normalization_49/batchnorm/add_1AddV28conv_2d_45/instance_normalization_49/batchnorm/mul_1:z:06conv_2d_45/instance_normalization_49/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@26
4conv_2d_45/instance_normalization_49/batchnorm/add_1 
conv_2d_45/ReluRelu8conv_2d_45/instance_normalization_49/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2
conv_2d_45/Relu¦
IdentityIdentityconv_2d_45/Relu:activations:0+^conv_2d_45/conv2d_45/Conv2D/ReadVariableOp<^conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp>^conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*G
_input_shapes6
4:ÿÿÿÿÿÿÿÿÿúú::::2X
*conv_2d_45/conv2d_45/Conv2D/ReadVariableOp*conv_2d_45/conv2d_45/Conv2D/ReadVariableOp2z
;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp;conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp2~
=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp=conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

:
ê

8__inference_instance_normalization_44_layer_call_fn_4228

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
S__inference_instance_normalization_44_layer_call_and_return_conditional_losses_42182
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
¥ñ
ÕI
__inference__wrapped_model_3742
input_10
,feed_forward_2_conv_2d_32_mirrorpad_paddingsF
Bfeed_forward_2_conv_2d_32_conv2d_32_conv2d_readvariableop_resourceW
Sfeed_forward_2_conv_2d_32_instance_normalization_36_reshape_readvariableop_resourceY
Ufeed_forward_2_conv_2d_32_instance_normalization_36_reshape_1_readvariableop_resource0
,feed_forward_2_conv_2d_33_mirrorpad_paddingsF
Bfeed_forward_2_conv_2d_33_conv2d_33_conv2d_readvariableop_resourceW
Sfeed_forward_2_conv_2d_33_instance_normalization_37_reshape_readvariableop_resourceY
Ufeed_forward_2_conv_2d_33_instance_normalization_37_reshape_1_readvariableop_resource0
,feed_forward_2_conv_2d_34_mirrorpad_paddingsF
Bfeed_forward_2_conv_2d_34_conv2d_34_conv2d_readvariableop_resourceW
Sfeed_forward_2_conv_2d_34_instance_normalization_38_reshape_readvariableop_resourceY
Ufeed_forward_2_conv_2d_34_instance_normalization_38_reshape_1_readvariableop_resource<
8feed_forward_2_residual_10_conv_2d_35_mirrorpad_paddingsR
Nfeed_forward_2_residual_10_conv_2d_35_conv2d_35_conv2d_readvariableop_resourcec
_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_reshape_readvariableop_resourcee
afeed_forward_2_residual_10_conv_2d_35_instance_normalization_39_reshape_1_readvariableop_resource<
8feed_forward_2_residual_10_conv_2d_36_mirrorpad_paddingsR
Nfeed_forward_2_residual_10_conv_2d_36_conv2d_36_conv2d_readvariableop_resourcec
_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_reshape_readvariableop_resourcee
afeed_forward_2_residual_10_conv_2d_36_instance_normalization_40_reshape_1_readvariableop_resource<
8feed_forward_2_residual_11_conv_2d_37_mirrorpad_paddingsR
Nfeed_forward_2_residual_11_conv_2d_37_conv2d_37_conv2d_readvariableop_resourcec
_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_reshape_readvariableop_resourcee
afeed_forward_2_residual_11_conv_2d_37_instance_normalization_41_reshape_1_readvariableop_resource<
8feed_forward_2_residual_11_conv_2d_38_mirrorpad_paddingsR
Nfeed_forward_2_residual_11_conv_2d_38_conv2d_38_conv2d_readvariableop_resourcec
_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_reshape_readvariableop_resourcee
afeed_forward_2_residual_11_conv_2d_38_instance_normalization_42_reshape_1_readvariableop_resource<
8feed_forward_2_residual_12_conv_2d_39_mirrorpad_paddingsR
Nfeed_forward_2_residual_12_conv_2d_39_conv2d_39_conv2d_readvariableop_resourcec
_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_reshape_readvariableop_resourcee
afeed_forward_2_residual_12_conv_2d_39_instance_normalization_43_reshape_1_readvariableop_resource<
8feed_forward_2_residual_12_conv_2d_40_mirrorpad_paddingsR
Nfeed_forward_2_residual_12_conv_2d_40_conv2d_40_conv2d_readvariableop_resourcec
_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_reshape_readvariableop_resourcee
afeed_forward_2_residual_12_conv_2d_40_instance_normalization_44_reshape_1_readvariableop_resource<
8feed_forward_2_residual_13_conv_2d_41_mirrorpad_paddingsR
Nfeed_forward_2_residual_13_conv_2d_41_conv2d_41_conv2d_readvariableop_resourcec
_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_reshape_readvariableop_resourcee
afeed_forward_2_residual_13_conv_2d_41_instance_normalization_45_reshape_1_readvariableop_resource<
8feed_forward_2_residual_13_conv_2d_42_mirrorpad_paddingsR
Nfeed_forward_2_residual_13_conv_2d_42_conv2d_42_conv2d_readvariableop_resourcec
_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_reshape_readvariableop_resourcee
afeed_forward_2_residual_13_conv_2d_42_instance_normalization_46_reshape_1_readvariableop_resource<
8feed_forward_2_residual_14_conv_2d_43_mirrorpad_paddingsR
Nfeed_forward_2_residual_14_conv_2d_43_conv2d_43_conv2d_readvariableop_resourcec
_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_reshape_readvariableop_resourcee
afeed_forward_2_residual_14_conv_2d_43_instance_normalization_47_reshape_1_readvariableop_resource<
8feed_forward_2_residual_14_conv_2d_44_mirrorpad_paddingsR
Nfeed_forward_2_residual_14_conv_2d_44_conv2d_44_conv2d_readvariableop_resourcec
_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_reshape_readvariableop_resourcee
afeed_forward_2_residual_14_conv_2d_44_instance_normalization_48_reshape_1_readvariableop_resourceA
=feed_forward_2_resize_conv_2d_4_conv_2d_45_mirrorpad_paddingsW
Sfeed_forward_2_resize_conv_2d_4_conv_2d_45_conv2d_45_conv2d_readvariableop_resourceh
dfeed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_reshape_readvariableop_resourcej
ffeed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_reshape_1_readvariableop_resourceA
=feed_forward_2_resize_conv_2d_5_conv_2d_46_mirrorpad_paddingsW
Sfeed_forward_2_resize_conv_2d_5_conv_2d_46_conv2d_46_conv2d_readvariableop_resourceh
dfeed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_reshape_readvariableop_resourcej
ffeed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_reshape_1_readvariableop_resource0
,feed_forward_2_conv_2d_47_mirrorpad_paddingsF
Bfeed_forward_2_conv_2d_47_conv2d_47_conv2d_readvariableop_resourceW
Sfeed_forward_2_conv_2d_47_instance_normalization_53_reshape_readvariableop_resourceY
Ufeed_forward_2_conv_2d_47_instance_normalization_53_reshape_1_readvariableop_resource
identity¢9feed_forward_2/conv_2d_32/conv2d_32/Conv2D/ReadVariableOp¢Jfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape/ReadVariableOp¢Lfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/ReadVariableOp¢9feed_forward_2/conv_2d_33/conv2d_33/Conv2D/ReadVariableOp¢Jfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape/ReadVariableOp¢Lfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/ReadVariableOp¢9feed_forward_2/conv_2d_34/conv2d_34/Conv2D/ReadVariableOp¢Jfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape/ReadVariableOp¢Lfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/ReadVariableOp¢9feed_forward_2/conv_2d_47/conv2d_47/Conv2D/ReadVariableOp¢Jfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape/ReadVariableOp¢Lfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp¢Efeed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D/ReadVariableOp¢Vfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp¢Xfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp¢Jfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D/ReadVariableOp¢[feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp¢]feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp¢Jfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D/ReadVariableOp¢[feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp¢]feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOpÝ
#feed_forward_2/conv_2d_32/MirrorPad	MirrorPadinput_1,feed_forward_2_conv_2d_32_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð*
mode	REFLECT2%
#feed_forward_2/conv_2d_32/MirrorPad
9feed_forward_2/conv_2d_32/conv2d_32/Conv2D/ReadVariableOpReadVariableOpBfeed_forward_2_conv_2d_32_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02;
9feed_forward_2/conv_2d_32/conv2d_32/Conv2D/ReadVariableOp¸
*feed_forward_2/conv_2d_32/conv2d_32/Conv2DConv2D,feed_forward_2/conv_2d_32/MirrorPad:output:0Afeed_forward_2/conv_2d_32/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2,
*feed_forward_2/conv_2d_32/conv2d_32/Conv2DÙ
9feed_forward_2/conv_2d_32/instance_normalization_36/ShapeShape3feed_forward_2/conv_2d_32/conv2d_32/Conv2D:output:0*
T0*
_output_shapes
:2;
9feed_forward_2/conv_2d_32/instance_normalization_36/ShapeÜ
Gfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice/stackà
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice/stack_1à
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice/stack_2
Afeed_forward_2/conv_2d_32/instance_normalization_36/strided_sliceStridedSliceBfeed_forward_2/conv_2d_32/instance_normalization_36/Shape:output:0Pfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice/stack:output:0Rfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice/stack_1:output:0Rfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Afeed_forward_2/conv_2d_32/instance_normalization_36/strided_sliceà
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1/stackä
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1/stack_1ä
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1/stack_2¤
Cfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1StridedSliceBfeed_forward_2/conv_2d_32/instance_normalization_36/Shape:output:0Rfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1/stack:output:0Tfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1/stack_1:output:0Tfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_1à
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2/stackä
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2/stack_1ä
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2/stack_2¤
Cfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2StridedSliceBfeed_forward_2/conv_2d_32/instance_normalization_36/Shape:output:0Rfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2/stack:output:0Tfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2/stack_1:output:0Tfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_2à
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3/stackä
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3/stack_1ä
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3/stack_2¤
Cfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3StridedSliceBfeed_forward_2/conv_2d_32/instance_normalization_36/Shape:output:0Rfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3/stack:output:0Tfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3/stack_1:output:0Tfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_32/instance_normalization_36/strided_slice_3ù
Rfeed_forward_2/conv_2d_32/instance_normalization_36/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2T
Rfeed_forward_2/conv_2d_32/instance_normalization_36/moments/mean/reduction_indicesé
@feed_forward_2/conv_2d_32/instance_normalization_36/moments/meanMean3feed_forward_2/conv_2d_32/conv2d_32/Conv2D:output:0[feed_forward_2/conv_2d_32/instance_normalization_36/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2B
@feed_forward_2/conv_2d_32/instance_normalization_36/moments/mean©
Hfeed_forward_2/conv_2d_32/instance_normalization_36/moments/StopGradientStopGradientIfeed_forward_2/conv_2d_32/instance_normalization_36/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2J
Hfeed_forward_2/conv_2d_32/instance_normalization_36/moments/StopGradient÷
Mfeed_forward_2/conv_2d_32/instance_normalization_36/moments/SquaredDifferenceSquaredDifference3feed_forward_2/conv_2d_32/conv2d_32/Conv2D:output:0Qfeed_forward_2/conv_2d_32/instance_normalization_36/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2O
Mfeed_forward_2/conv_2d_32/instance_normalization_36/moments/SquaredDifference
Vfeed_forward_2/conv_2d_32/instance_normalization_36/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2X
Vfeed_forward_2/conv_2d_32/instance_normalization_36/moments/variance/reduction_indices
Dfeed_forward_2/conv_2d_32/instance_normalization_36/moments/varianceMeanQfeed_forward_2/conv_2d_32/instance_normalization_36/moments/SquaredDifference:z:0_feed_forward_2/conv_2d_32/instance_normalization_36/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2F
Dfeed_forward_2/conv_2d_32/instance_normalization_36/moments/variance¨
Jfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape/ReadVariableOpReadVariableOpSfeed_forward_2_conv_2d_32_instance_normalization_36_reshape_readvariableop_resource*
_output_shapes
: *
dtype02L
Jfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape/ReadVariableOpß
Afeed_forward_2/conv_2d_32/instance_normalization_36/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2C
Afeed_forward_2/conv_2d_32/instance_normalization_36/Reshape/shapeÖ
;feed_forward_2/conv_2d_32/instance_normalization_36/ReshapeReshapeRfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape/ReadVariableOp:value:0Jfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape/shape:output:0*
T0*&
_output_shapes
: 2=
;feed_forward_2/conv_2d_32/instance_normalization_36/Reshape®
Lfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/ReadVariableOpReadVariableOpUfeed_forward_2_conv_2d_32_instance_normalization_36_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02N
Lfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/ReadVariableOpã
Cfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2E
Cfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/shapeÞ
=feed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1ReshapeTfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/ReadVariableOp:value:0Lfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2?
=feed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1Ï
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2E
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/add/yæ
Afeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/addAddV2Mfeed_forward_2/conv_2d_32/instance_normalization_36/moments/variance:output:0Lfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2C
Afeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/add
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/RsqrtRsqrtEfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2E
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/RsqrtÖ
Afeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mulMulGfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/Rsqrt:y:0Dfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2C
Afeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mulÉ
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mul_1Mul3feed_forward_2/conv_2d_32/conv2d_32/Conv2D:output:0Efeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2E
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mul_1Ý
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mul_2MulIfeed_forward_2/conv_2d_32/instance_normalization_36/moments/mean:output:0Efeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2E
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mul_2Ø
Afeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/subSubFfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1:output:0Gfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2C
Afeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/subß
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/add_1AddV2Gfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/mul_1:z:0Efeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2E
Cfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/add_1Í
feed_forward_2/conv_2d_32/ReluReluGfeed_forward_2/conv_2d_32/instance_normalization_36/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2 
feed_forward_2/conv_2d_32/Relu
#feed_forward_2/conv_2d_33/MirrorPad	MirrorPad,feed_forward_2/conv_2d_32/Relu:activations:0,feed_forward_2_conv_2d_33_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿêê *
mode	REFLECT2%
#feed_forward_2/conv_2d_33/MirrorPad
9feed_forward_2/conv_2d_33/conv2d_33/Conv2D/ReadVariableOpReadVariableOpBfeed_forward_2_conv_2d_33_conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02;
9feed_forward_2/conv_2d_33/conv2d_33/Conv2D/ReadVariableOp¸
*feed_forward_2/conv_2d_33/conv2d_33/Conv2DConv2D,feed_forward_2/conv_2d_33/MirrorPad:output:0Afeed_forward_2/conv_2d_33/conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2,
*feed_forward_2/conv_2d_33/conv2d_33/Conv2DÙ
9feed_forward_2/conv_2d_33/instance_normalization_37/ShapeShape3feed_forward_2/conv_2d_33/conv2d_33/Conv2D:output:0*
T0*
_output_shapes
:2;
9feed_forward_2/conv_2d_33/instance_normalization_37/ShapeÜ
Gfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice/stackà
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice/stack_1à
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice/stack_2
Afeed_forward_2/conv_2d_33/instance_normalization_37/strided_sliceStridedSliceBfeed_forward_2/conv_2d_33/instance_normalization_37/Shape:output:0Pfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice/stack:output:0Rfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice/stack_1:output:0Rfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Afeed_forward_2/conv_2d_33/instance_normalization_37/strided_sliceà
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1/stackä
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1/stack_1ä
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1/stack_2¤
Cfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1StridedSliceBfeed_forward_2/conv_2d_33/instance_normalization_37/Shape:output:0Rfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1/stack:output:0Tfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1/stack_1:output:0Tfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_1à
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2/stackä
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2/stack_1ä
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2/stack_2¤
Cfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2StridedSliceBfeed_forward_2/conv_2d_33/instance_normalization_37/Shape:output:0Rfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2/stack:output:0Tfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2/stack_1:output:0Tfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_2à
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3/stackä
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3/stack_1ä
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3/stack_2¤
Cfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3StridedSliceBfeed_forward_2/conv_2d_33/instance_normalization_37/Shape:output:0Rfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3/stack:output:0Tfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3/stack_1:output:0Tfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_33/instance_normalization_37/strided_slice_3ù
Rfeed_forward_2/conv_2d_33/instance_normalization_37/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2T
Rfeed_forward_2/conv_2d_33/instance_normalization_37/moments/mean/reduction_indicesé
@feed_forward_2/conv_2d_33/instance_normalization_37/moments/meanMean3feed_forward_2/conv_2d_33/conv2d_33/Conv2D:output:0[feed_forward_2/conv_2d_33/instance_normalization_37/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2B
@feed_forward_2/conv_2d_33/instance_normalization_37/moments/mean©
Hfeed_forward_2/conv_2d_33/instance_normalization_37/moments/StopGradientStopGradientIfeed_forward_2/conv_2d_33/instance_normalization_37/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2J
Hfeed_forward_2/conv_2d_33/instance_normalization_37/moments/StopGradient÷
Mfeed_forward_2/conv_2d_33/instance_normalization_37/moments/SquaredDifferenceSquaredDifference3feed_forward_2/conv_2d_33/conv2d_33/Conv2D:output:0Qfeed_forward_2/conv_2d_33/instance_normalization_37/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2O
Mfeed_forward_2/conv_2d_33/instance_normalization_37/moments/SquaredDifference
Vfeed_forward_2/conv_2d_33/instance_normalization_37/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2X
Vfeed_forward_2/conv_2d_33/instance_normalization_37/moments/variance/reduction_indices
Dfeed_forward_2/conv_2d_33/instance_normalization_37/moments/varianceMeanQfeed_forward_2/conv_2d_33/instance_normalization_37/moments/SquaredDifference:z:0_feed_forward_2/conv_2d_33/instance_normalization_37/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2F
Dfeed_forward_2/conv_2d_33/instance_normalization_37/moments/variance¨
Jfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape/ReadVariableOpReadVariableOpSfeed_forward_2_conv_2d_33_instance_normalization_37_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02L
Jfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape/ReadVariableOpß
Afeed_forward_2/conv_2d_33/instance_normalization_37/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2C
Afeed_forward_2/conv_2d_33/instance_normalization_37/Reshape/shapeÖ
;feed_forward_2/conv_2d_33/instance_normalization_37/ReshapeReshapeRfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape/ReadVariableOp:value:0Jfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape/shape:output:0*
T0*&
_output_shapes
:@2=
;feed_forward_2/conv_2d_33/instance_normalization_37/Reshape®
Lfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/ReadVariableOpReadVariableOpUfeed_forward_2_conv_2d_33_instance_normalization_37_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02N
Lfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/ReadVariableOpã
Cfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2E
Cfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/shapeÞ
=feed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1ReshapeTfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/ReadVariableOp:value:0Lfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2?
=feed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1Ï
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2E
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/add/yæ
Afeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/addAddV2Mfeed_forward_2/conv_2d_33/instance_normalization_37/moments/variance:output:0Lfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2C
Afeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/add
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/RsqrtRsqrtEfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2E
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/RsqrtÖ
Afeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mulMulGfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/Rsqrt:y:0Dfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2C
Afeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mulÉ
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mul_1Mul3feed_forward_2/conv_2d_33/conv2d_33/Conv2D:output:0Efeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2E
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mul_1Ý
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mul_2MulIfeed_forward_2/conv_2d_33/instance_normalization_37/moments/mean:output:0Efeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2E
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mul_2Ø
Afeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/subSubFfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1:output:0Gfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2C
Afeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/subß
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/add_1AddV2Gfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/mul_1:z:0Efeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2E
Cfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/add_1Í
feed_forward_2/conv_2d_33/ReluReluGfeed_forward_2/conv_2d_33/instance_normalization_37/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2 
feed_forward_2/conv_2d_33/Relu
#feed_forward_2/conv_2d_34/MirrorPad	MirrorPad,feed_forward_2/conv_2d_33/Relu:activations:0,feed_forward_2_conv_2d_34_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿöö@*
mode	REFLECT2%
#feed_forward_2/conv_2d_34/MirrorPad
9feed_forward_2/conv_2d_34/conv2d_34/Conv2D/ReadVariableOpReadVariableOpBfeed_forward_2_conv_2d_34_conv2d_34_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02;
9feed_forward_2/conv_2d_34/conv2d_34/Conv2D/ReadVariableOp¹
*feed_forward_2/conv_2d_34/conv2d_34/Conv2DConv2D,feed_forward_2/conv_2d_34/MirrorPad:output:0Afeed_forward_2/conv_2d_34/conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2,
*feed_forward_2/conv_2d_34/conv2d_34/Conv2DÙ
9feed_forward_2/conv_2d_34/instance_normalization_38/ShapeShape3feed_forward_2/conv_2d_34/conv2d_34/Conv2D:output:0*
T0*
_output_shapes
:2;
9feed_forward_2/conv_2d_34/instance_normalization_38/ShapeÜ
Gfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice/stackà
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice/stack_1à
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice/stack_2
Afeed_forward_2/conv_2d_34/instance_normalization_38/strided_sliceStridedSliceBfeed_forward_2/conv_2d_34/instance_normalization_38/Shape:output:0Pfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice/stack:output:0Rfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice/stack_1:output:0Rfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Afeed_forward_2/conv_2d_34/instance_normalization_38/strided_sliceà
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1/stackä
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1/stack_1ä
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1/stack_2¤
Cfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1StridedSliceBfeed_forward_2/conv_2d_34/instance_normalization_38/Shape:output:0Rfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1/stack:output:0Tfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1/stack_1:output:0Tfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_1à
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2/stackä
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2/stack_1ä
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2/stack_2¤
Cfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2StridedSliceBfeed_forward_2/conv_2d_34/instance_normalization_38/Shape:output:0Rfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2/stack:output:0Tfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2/stack_1:output:0Tfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_2à
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3/stackä
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3/stack_1ä
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3/stack_2¤
Cfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3StridedSliceBfeed_forward_2/conv_2d_34/instance_normalization_38/Shape:output:0Rfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3/stack:output:0Tfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3/stack_1:output:0Tfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_34/instance_normalization_38/strided_slice_3ù
Rfeed_forward_2/conv_2d_34/instance_normalization_38/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2T
Rfeed_forward_2/conv_2d_34/instance_normalization_38/moments/mean/reduction_indicesê
@feed_forward_2/conv_2d_34/instance_normalization_38/moments/meanMean3feed_forward_2/conv_2d_34/conv2d_34/Conv2D:output:0[feed_forward_2/conv_2d_34/instance_normalization_38/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2B
@feed_forward_2/conv_2d_34/instance_normalization_38/moments/meanª
Hfeed_forward_2/conv_2d_34/instance_normalization_38/moments/StopGradientStopGradientIfeed_forward_2/conv_2d_34/instance_normalization_38/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2J
Hfeed_forward_2/conv_2d_34/instance_normalization_38/moments/StopGradientø
Mfeed_forward_2/conv_2d_34/instance_normalization_38/moments/SquaredDifferenceSquaredDifference3feed_forward_2/conv_2d_34/conv2d_34/Conv2D:output:0Qfeed_forward_2/conv_2d_34/instance_normalization_38/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2O
Mfeed_forward_2/conv_2d_34/instance_normalization_38/moments/SquaredDifference
Vfeed_forward_2/conv_2d_34/instance_normalization_38/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2X
Vfeed_forward_2/conv_2d_34/instance_normalization_38/moments/variance/reduction_indices
Dfeed_forward_2/conv_2d_34/instance_normalization_38/moments/varianceMeanQfeed_forward_2/conv_2d_34/instance_normalization_38/moments/SquaredDifference:z:0_feed_forward_2/conv_2d_34/instance_normalization_38/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2F
Dfeed_forward_2/conv_2d_34/instance_normalization_38/moments/variance©
Jfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape/ReadVariableOpReadVariableOpSfeed_forward_2_conv_2d_34_instance_normalization_38_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02L
Jfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape/ReadVariableOpß
Afeed_forward_2/conv_2d_34/instance_normalization_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2C
Afeed_forward_2/conv_2d_34/instance_normalization_38/Reshape/shape×
;feed_forward_2/conv_2d_34/instance_normalization_38/ReshapeReshapeRfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape/ReadVariableOp:value:0Jfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape/shape:output:0*
T0*'
_output_shapes
:2=
;feed_forward_2/conv_2d_34/instance_normalization_38/Reshape¯
Lfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/ReadVariableOpReadVariableOpUfeed_forward_2_conv_2d_34_instance_normalization_38_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02N
Lfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/ReadVariableOpã
Cfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2E
Cfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/shapeß
=feed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1ReshapeTfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/ReadVariableOp:value:0Lfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2?
=feed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1Ï
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2E
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/add/yç
Afeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/addAddV2Mfeed_forward_2/conv_2d_34/instance_normalization_38/moments/variance:output:0Lfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/add
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/RsqrtRsqrtEfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/Rsqrt×
Afeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mulMulGfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/Rsqrt:y:0Dfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mulÊ
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mul_1Mul3feed_forward_2/conv_2d_34/conv2d_34/Conv2D:output:0Efeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2E
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mul_1Þ
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mul_2MulIfeed_forward_2/conv_2d_34/instance_normalization_38/moments/mean:output:0Efeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mul_2Ù
Afeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/subSubFfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1:output:0Gfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/subà
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/add_1AddV2Gfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/mul_1:z:0Efeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2E
Cfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/add_1Î
feed_forward_2/conv_2d_34/ReluReluGfeed_forward_2/conv_2d_34/instance_normalization_38/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2 
feed_forward_2/conv_2d_34/Relu§
/feed_forward_2/residual_10/conv_2d_35/MirrorPad	MirrorPad,feed_forward_2/conv_2d_34/Relu:activations:08feed_forward_2_residual_10_conv_2d_35_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_10/conv_2d_35/MirrorPad§
Efeed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_10_conv_2d_35_conv2d_35_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D/ReadVariableOpé
6feed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2DConv2D8feed_forward_2/residual_10/conv_2d_35/MirrorPad:output:0Mfeed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2Dý
Efeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/ShapeShape?feed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Shapeô
Sfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice/stackø
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice/stack_1ø
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice/stack_2â
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_sliceStridedSliceNfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Shape:output:0\feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice/stack:output:0^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice/stack_1:output:0^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_sliceø
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1/stackü
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1StridedSliceNfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Shape:output:0^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1/stack:output:0`feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1/stack_1:output:0`feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_1ø
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2/stackü
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2StridedSliceNfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Shape:output:0^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2/stack:output:0`feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2/stack_1:output:0`feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_2ø
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3/stackü
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3StridedSliceNfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Shape:output:0^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3/stack:output:0`feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3/stack_1:output:0`feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/strided_slice_3
^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/mean/reduction_indices
Lfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/meanMean?feed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D:output:0gfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/meanÎ
Tfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/StopGradientStopGradientUfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/StopGradient¨
Yfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D:output:0]feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/SquaredDifference
bfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/varianceMean]feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/SquaredDifference:z:0kfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/varianceÍ
Vfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/shape
Gfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/ReshapeReshape^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/ReshapeÓ
Xfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_10_conv_2d_35_instance_normalization_39_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/shape
Ifeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1Reshape`feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1ç
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/add/y
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/addAddV2Yfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/variance:output:0Xfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/add¹
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/Rsqrt
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mulMulSfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mulú
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mul_1Mul?feed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D:output:0Qfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mul_1
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mul_2MulUfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/moments/mean:output:0Qfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mul_2
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/subSubRfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1:output:0Sfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/sub
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/add_1AddV2Sfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/mul_1:z:0Qfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/add_1ò
*feed_forward_2/residual_10/conv_2d_35/ReluReluSfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2,
*feed_forward_2/residual_10/conv_2d_35/Relu³
/feed_forward_2/residual_10/conv_2d_36/MirrorPad	MirrorPad8feed_forward_2/residual_10/conv_2d_35/Relu:activations:08feed_forward_2_residual_10_conv_2d_36_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_10/conv_2d_36/MirrorPad§
Efeed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_10_conv_2d_36_conv2d_36_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D/ReadVariableOpé
6feed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2DConv2D8feed_forward_2/residual_10/conv_2d_36/MirrorPad:output:0Mfeed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2Dý
Efeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/ShapeShape?feed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Shapeô
Sfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice/stackø
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice/stack_1ø
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice/stack_2â
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_sliceStridedSliceNfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Shape:output:0\feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice/stack:output:0^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice/stack_1:output:0^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_sliceø
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1/stackü
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1StridedSliceNfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Shape:output:0^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1/stack:output:0`feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1/stack_1:output:0`feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_1ø
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2/stackü
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2StridedSliceNfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Shape:output:0^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2/stack:output:0`feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2/stack_1:output:0`feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_2ø
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3/stackü
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3StridedSliceNfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Shape:output:0^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3/stack:output:0`feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3/stack_1:output:0`feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/strided_slice_3
^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/mean/reduction_indices
Lfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/meanMean?feed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D:output:0gfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/meanÎ
Tfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/StopGradientStopGradientUfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/StopGradient¨
Yfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D:output:0]feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/SquaredDifference
bfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/varianceMean]feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/SquaredDifference:z:0kfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/varianceÍ
Vfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/shape
Gfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/ReshapeReshape^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/ReshapeÓ
Xfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_10_conv_2d_36_instance_normalization_40_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/shape
Ifeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1Reshape`feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1ç
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/add/y
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/addAddV2Yfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/variance:output:0Xfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/add¹
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/Rsqrt
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mulMulSfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mulú
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mul_1Mul?feed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D:output:0Qfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mul_1
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mul_2MulUfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/moments/mean:output:0Qfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mul_2
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/subSubRfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1:output:0Sfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/sub
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/add_1AddV2Sfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/mul_1:z:0Qfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/add_1
feed_forward_2/residual_10/addAddV2,feed_forward_2/conv_2d_34/Relu:activations:0Sfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2 
feed_forward_2/residual_10/add
/feed_forward_2/residual_11/conv_2d_37/MirrorPad	MirrorPad"feed_forward_2/residual_10/add:z:08feed_forward_2_residual_11_conv_2d_37_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_11/conv_2d_37/MirrorPad§
Efeed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_11_conv_2d_37_conv2d_37_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D/ReadVariableOpé
6feed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2DConv2D8feed_forward_2/residual_11/conv_2d_37/MirrorPad:output:0Mfeed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2Dý
Efeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/ShapeShape?feed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Shapeô
Sfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice/stackø
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice/stack_1ø
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice/stack_2â
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_sliceStridedSliceNfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Shape:output:0\feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice/stack:output:0^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice/stack_1:output:0^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_sliceø
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1/stackü
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1StridedSliceNfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Shape:output:0^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1/stack:output:0`feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1/stack_1:output:0`feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_1ø
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2/stackü
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2StridedSliceNfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Shape:output:0^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2/stack:output:0`feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2/stack_1:output:0`feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_2ø
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3/stackü
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3StridedSliceNfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Shape:output:0^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3/stack:output:0`feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3/stack_1:output:0`feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/strided_slice_3
^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/mean/reduction_indices
Lfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/meanMean?feed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D:output:0gfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/meanÎ
Tfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/StopGradientStopGradientUfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/StopGradient¨
Yfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D:output:0]feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/SquaredDifference
bfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/varianceMean]feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/SquaredDifference:z:0kfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/varianceÍ
Vfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/shape
Gfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/ReshapeReshape^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/ReshapeÓ
Xfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_11_conv_2d_37_instance_normalization_41_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/shape
Ifeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1Reshape`feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1ç
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/add/y
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/addAddV2Yfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/variance:output:0Xfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/add¹
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/Rsqrt
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mulMulSfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mulú
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mul_1Mul?feed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D:output:0Qfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mul_1
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mul_2MulUfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/moments/mean:output:0Qfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mul_2
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/subSubRfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1:output:0Sfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/sub
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/add_1AddV2Sfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/mul_1:z:0Qfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/add_1ò
*feed_forward_2/residual_11/conv_2d_37/ReluReluSfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2,
*feed_forward_2/residual_11/conv_2d_37/Relu³
/feed_forward_2/residual_11/conv_2d_38/MirrorPad	MirrorPad8feed_forward_2/residual_11/conv_2d_37/Relu:activations:08feed_forward_2_residual_11_conv_2d_38_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_11/conv_2d_38/MirrorPad§
Efeed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_11_conv_2d_38_conv2d_38_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D/ReadVariableOpé
6feed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2DConv2D8feed_forward_2/residual_11/conv_2d_38/MirrorPad:output:0Mfeed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2Dý
Efeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/ShapeShape?feed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Shapeô
Sfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice/stackø
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice/stack_1ø
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice/stack_2â
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_sliceStridedSliceNfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Shape:output:0\feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice/stack:output:0^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice/stack_1:output:0^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_sliceø
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1/stackü
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1StridedSliceNfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Shape:output:0^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1/stack:output:0`feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1/stack_1:output:0`feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_1ø
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2/stackü
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2StridedSliceNfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Shape:output:0^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2/stack:output:0`feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2/stack_1:output:0`feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_2ø
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3/stackü
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3StridedSliceNfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Shape:output:0^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3/stack:output:0`feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3/stack_1:output:0`feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/strided_slice_3
^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/mean/reduction_indices
Lfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/meanMean?feed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D:output:0gfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/meanÎ
Tfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/StopGradientStopGradientUfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/StopGradient¨
Yfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D:output:0]feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/SquaredDifference
bfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/varianceMean]feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/SquaredDifference:z:0kfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/varianceÍ
Vfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/shape
Gfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/ReshapeReshape^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/ReshapeÓ
Xfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_11_conv_2d_38_instance_normalization_42_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/shape
Ifeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1Reshape`feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1ç
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/add/y
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/addAddV2Yfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/variance:output:0Xfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/add¹
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/Rsqrt
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mulMulSfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mulú
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mul_1Mul?feed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D:output:0Qfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mul_1
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mul_2MulUfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/moments/mean:output:0Qfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mul_2
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/subSubRfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1:output:0Sfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/sub
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/add_1AddV2Sfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/mul_1:z:0Qfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/add_1ÿ
feed_forward_2/residual_11/addAddV2"feed_forward_2/residual_10/add:z:0Sfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2 
feed_forward_2/residual_11/add
/feed_forward_2/residual_12/conv_2d_39/MirrorPad	MirrorPad"feed_forward_2/residual_11/add:z:08feed_forward_2_residual_12_conv_2d_39_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_12/conv_2d_39/MirrorPad§
Efeed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_12_conv_2d_39_conv2d_39_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D/ReadVariableOpé
6feed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2DConv2D8feed_forward_2/residual_12/conv_2d_39/MirrorPad:output:0Mfeed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2Dý
Efeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/ShapeShape?feed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Shapeô
Sfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice/stackø
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice/stack_1ø
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice/stack_2â
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_sliceStridedSliceNfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Shape:output:0\feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice/stack:output:0^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice/stack_1:output:0^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_sliceø
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1/stackü
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1StridedSliceNfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Shape:output:0^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1/stack:output:0`feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1/stack_1:output:0`feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_1ø
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2/stackü
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2StridedSliceNfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Shape:output:0^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2/stack:output:0`feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2/stack_1:output:0`feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_2ø
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3/stackü
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3StridedSliceNfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Shape:output:0^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3/stack:output:0`feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3/stack_1:output:0`feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/strided_slice_3
^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/mean/reduction_indices
Lfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/meanMean?feed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D:output:0gfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/meanÎ
Tfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/StopGradientStopGradientUfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/StopGradient¨
Yfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D:output:0]feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/SquaredDifference
bfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/varianceMean]feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/SquaredDifference:z:0kfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/varianceÍ
Vfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/shape
Gfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/ReshapeReshape^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/ReshapeÓ
Xfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_12_conv_2d_39_instance_normalization_43_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/shape
Ifeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1Reshape`feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1ç
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/add/y
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/addAddV2Yfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/variance:output:0Xfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/add¹
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/Rsqrt
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mulMulSfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mulú
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mul_1Mul?feed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D:output:0Qfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mul_1
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mul_2MulUfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/moments/mean:output:0Qfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mul_2
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/subSubRfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1:output:0Sfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/sub
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/add_1AddV2Sfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/mul_1:z:0Qfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/add_1ò
*feed_forward_2/residual_12/conv_2d_39/ReluReluSfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2,
*feed_forward_2/residual_12/conv_2d_39/Relu³
/feed_forward_2/residual_12/conv_2d_40/MirrorPad	MirrorPad8feed_forward_2/residual_12/conv_2d_39/Relu:activations:08feed_forward_2_residual_12_conv_2d_40_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_12/conv_2d_40/MirrorPad§
Efeed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_12_conv_2d_40_conv2d_40_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D/ReadVariableOpé
6feed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2DConv2D8feed_forward_2/residual_12/conv_2d_40/MirrorPad:output:0Mfeed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2Dý
Efeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/ShapeShape?feed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Shapeô
Sfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice/stackø
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice/stack_1ø
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice/stack_2â
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_sliceStridedSliceNfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Shape:output:0\feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice/stack:output:0^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice/stack_1:output:0^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_sliceø
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1/stackü
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1StridedSliceNfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Shape:output:0^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1/stack:output:0`feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1/stack_1:output:0`feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_1ø
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2/stackü
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2StridedSliceNfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Shape:output:0^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2/stack:output:0`feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2/stack_1:output:0`feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_2ø
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3/stackü
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3StridedSliceNfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Shape:output:0^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3/stack:output:0`feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3/stack_1:output:0`feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/strided_slice_3
^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/mean/reduction_indices
Lfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/meanMean?feed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D:output:0gfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/meanÎ
Tfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/StopGradientStopGradientUfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/StopGradient¨
Yfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D:output:0]feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/SquaredDifference
bfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/varianceMean]feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/SquaredDifference:z:0kfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/varianceÍ
Vfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/shape
Gfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/ReshapeReshape^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/ReshapeÓ
Xfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_12_conv_2d_40_instance_normalization_44_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/shape
Ifeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1Reshape`feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1ç
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/add/y
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/addAddV2Yfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/variance:output:0Xfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/add¹
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/Rsqrt
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mulMulSfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mulú
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mul_1Mul?feed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D:output:0Qfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mul_1
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mul_2MulUfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/moments/mean:output:0Qfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mul_2
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/subSubRfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1:output:0Sfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/sub
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/add_1AddV2Sfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/mul_1:z:0Qfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/add_1ÿ
feed_forward_2/residual_12/addAddV2"feed_forward_2/residual_11/add:z:0Sfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2 
feed_forward_2/residual_12/add
/feed_forward_2/residual_13/conv_2d_41/MirrorPad	MirrorPad"feed_forward_2/residual_12/add:z:08feed_forward_2_residual_13_conv_2d_41_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_13/conv_2d_41/MirrorPad§
Efeed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_13_conv_2d_41_conv2d_41_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D/ReadVariableOpé
6feed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2DConv2D8feed_forward_2/residual_13/conv_2d_41/MirrorPad:output:0Mfeed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2Dý
Efeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/ShapeShape?feed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Shapeô
Sfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice/stackø
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice/stack_1ø
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice/stack_2â
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_sliceStridedSliceNfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Shape:output:0\feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice/stack:output:0^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice/stack_1:output:0^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_sliceø
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1/stackü
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1StridedSliceNfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Shape:output:0^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1/stack:output:0`feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1/stack_1:output:0`feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_1ø
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2/stackü
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2StridedSliceNfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Shape:output:0^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2/stack:output:0`feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2/stack_1:output:0`feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_2ø
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3/stackü
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3StridedSliceNfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Shape:output:0^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3/stack:output:0`feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3/stack_1:output:0`feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/strided_slice_3
^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/mean/reduction_indices
Lfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/meanMean?feed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D:output:0gfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/meanÎ
Tfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/StopGradientStopGradientUfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/StopGradient¨
Yfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D:output:0]feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/SquaredDifference
bfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/varianceMean]feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/SquaredDifference:z:0kfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/varianceÍ
Vfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/shape
Gfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/ReshapeReshape^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/ReshapeÓ
Xfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_13_conv_2d_41_instance_normalization_45_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/shape
Ifeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1Reshape`feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1ç
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/add/y
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/addAddV2Yfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/variance:output:0Xfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/add¹
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/Rsqrt
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mulMulSfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mulú
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mul_1Mul?feed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D:output:0Qfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mul_1
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mul_2MulUfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/moments/mean:output:0Qfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mul_2
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/subSubRfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1:output:0Sfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/sub
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/add_1AddV2Sfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/mul_1:z:0Qfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/add_1ò
*feed_forward_2/residual_13/conv_2d_41/ReluReluSfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2,
*feed_forward_2/residual_13/conv_2d_41/Relu³
/feed_forward_2/residual_13/conv_2d_42/MirrorPad	MirrorPad8feed_forward_2/residual_13/conv_2d_41/Relu:activations:08feed_forward_2_residual_13_conv_2d_42_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_13/conv_2d_42/MirrorPad§
Efeed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_13_conv_2d_42_conv2d_42_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D/ReadVariableOpé
6feed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2DConv2D8feed_forward_2/residual_13/conv_2d_42/MirrorPad:output:0Mfeed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2Dý
Efeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/ShapeShape?feed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Shapeô
Sfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice/stackø
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice/stack_1ø
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice/stack_2â
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_sliceStridedSliceNfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Shape:output:0\feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice/stack:output:0^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice/stack_1:output:0^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_sliceø
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1/stackü
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1StridedSliceNfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Shape:output:0^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1/stack:output:0`feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1/stack_1:output:0`feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_1ø
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2/stackü
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2StridedSliceNfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Shape:output:0^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2/stack:output:0`feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2/stack_1:output:0`feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_2ø
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3/stackü
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3StridedSliceNfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Shape:output:0^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3/stack:output:0`feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3/stack_1:output:0`feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/strided_slice_3
^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/mean/reduction_indices
Lfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/meanMean?feed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D:output:0gfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/meanÎ
Tfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/StopGradientStopGradientUfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/StopGradient¨
Yfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D:output:0]feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/SquaredDifference
bfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/varianceMean]feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/SquaredDifference:z:0kfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/varianceÍ
Vfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/shape
Gfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/ReshapeReshape^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/ReshapeÓ
Xfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_13_conv_2d_42_instance_normalization_46_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/shape
Ifeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1Reshape`feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1ç
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/add/y
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/addAddV2Yfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/variance:output:0Xfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/add¹
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/Rsqrt
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mulMulSfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mulú
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mul_1Mul?feed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D:output:0Qfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mul_1
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mul_2MulUfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/moments/mean:output:0Qfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mul_2
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/subSubRfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1:output:0Sfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/sub
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/add_1AddV2Sfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/mul_1:z:0Qfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/add_1ÿ
feed_forward_2/residual_13/addAddV2"feed_forward_2/residual_12/add:z:0Sfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2 
feed_forward_2/residual_13/add
/feed_forward_2/residual_14/conv_2d_43/MirrorPad	MirrorPad"feed_forward_2/residual_13/add:z:08feed_forward_2_residual_14_conv_2d_43_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_14/conv_2d_43/MirrorPad§
Efeed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_14_conv_2d_43_conv2d_43_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D/ReadVariableOpé
6feed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2DConv2D8feed_forward_2/residual_14/conv_2d_43/MirrorPad:output:0Mfeed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2Dý
Efeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/ShapeShape?feed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Shapeô
Sfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice/stackø
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice/stack_1ø
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice/stack_2â
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_sliceStridedSliceNfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Shape:output:0\feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice/stack:output:0^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice/stack_1:output:0^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_sliceø
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1/stackü
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1StridedSliceNfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Shape:output:0^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1/stack:output:0`feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1/stack_1:output:0`feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_1ø
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2/stackü
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2StridedSliceNfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Shape:output:0^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2/stack:output:0`feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2/stack_1:output:0`feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_2ø
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3/stackü
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3StridedSliceNfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Shape:output:0^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3/stack:output:0`feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3/stack_1:output:0`feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/strided_slice_3
^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/mean/reduction_indices
Lfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/meanMean?feed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D:output:0gfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/meanÎ
Tfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/StopGradientStopGradientUfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/StopGradient¨
Yfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D:output:0]feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/SquaredDifference
bfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/varianceMean]feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/SquaredDifference:z:0kfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/varianceÍ
Vfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/shape
Gfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/ReshapeReshape^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/ReshapeÓ
Xfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_14_conv_2d_43_instance_normalization_47_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/shape
Ifeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1Reshape`feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1ç
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/add/y
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/addAddV2Yfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/variance:output:0Xfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/add¹
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/Rsqrt
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mulMulSfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mulú
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mul_1Mul?feed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D:output:0Qfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mul_1
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mul_2MulUfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/moments/mean:output:0Qfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mul_2
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/subSubRfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1:output:0Sfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/sub
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/add_1AddV2Sfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/mul_1:z:0Qfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/add_1ò
*feed_forward_2/residual_14/conv_2d_43/ReluReluSfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2,
*feed_forward_2/residual_14/conv_2d_43/Relu³
/feed_forward_2/residual_14/conv_2d_44/MirrorPad	MirrorPad8feed_forward_2/residual_14/conv_2d_43/Relu:activations:08feed_forward_2_residual_14_conv_2d_44_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT21
/feed_forward_2/residual_14/conv_2d_44/MirrorPad§
Efeed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D/ReadVariableOpReadVariableOpNfeed_forward_2_residual_14_conv_2d_44_conv2d_44_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02G
Efeed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D/ReadVariableOpé
6feed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2DConv2D8feed_forward_2/residual_14/conv_2d_44/MirrorPad:output:0Mfeed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
28
6feed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2Dý
Efeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/ShapeShape?feed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D:output:0*
T0*
_output_shapes
:2G
Efeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Shapeô
Sfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2U
Sfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice/stackø
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice/stack_1ø
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice/stack_2â
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_sliceStridedSliceNfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Shape:output:0\feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice/stack:output:0^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice/stack_1:output:0^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2O
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_sliceø
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1/stackü
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1/stack_1ü
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1/stack_2ì
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1StridedSliceNfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Shape:output:0^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1/stack:output:0`feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1/stack_1:output:0`feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_1ø
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2/stackü
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2/stack_1ü
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2/stack_2ì
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2StridedSliceNfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Shape:output:0^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2/stack:output:0`feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2/stack_1:output:0`feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_2ø
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2W
Ufeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3/stackü
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3/stack_1ü
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2Y
Wfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3/stack_2ì
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3StridedSliceNfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Shape:output:0^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3/stack:output:0`feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3/stack_1:output:0`feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2Q
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/strided_slice_3
^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2`
^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/mean/reduction_indices
Lfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/meanMean?feed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D:output:0gfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2N
Lfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/meanÎ
Tfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/StopGradientStopGradientUfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2V
Tfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/StopGradient¨
Yfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/SquaredDifferenceSquaredDifference?feed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D:output:0]feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2[
Yfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/SquaredDifference
bfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2d
bfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/variance/reduction_indicesÄ
Pfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/varianceMean]feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/SquaredDifference:z:0kfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2R
Pfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/varianceÍ
Vfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/ReadVariableOpReadVariableOp_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02X
Vfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp÷
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2O
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/shape
Gfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/ReshapeReshape^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp:value:0Vfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/shape:output:0*
T0*'
_output_shapes
:2I
Gfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/ReshapeÓ
Xfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOpReadVariableOpafeed_forward_2_residual_14_conv_2d_44_instance_normalization_48_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02Z
Xfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOpû
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2Q
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/shape
Ifeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1Reshape`feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp:value:0Xfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2K
Ifeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1ç
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2Q
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/add/y
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/addAddV2Yfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/variance:output:0Xfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/add¹
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/RsqrtRsqrtQfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/Rsqrt
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mulMulSfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/Rsqrt:y:0Pfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mulú
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mul_1Mul?feed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D:output:0Qfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mul_1
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mul_2MulUfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/moments/mean:output:0Qfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2Q
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mul_2
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/subSubRfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1:output:0Sfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2O
Mfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/sub
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/add_1AddV2Sfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/mul_1:z:0Qfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2Q
Ofeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/add_1ÿ
feed_forward_2/residual_14/addAddV2"feed_forward_2/residual_13/add:z:0Sfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2 
feed_forward_2/residual_14/add«
+feed_forward_2/resize_conv_2d_4/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"è  è  2-
+feed_forward_2/resize_conv_2d_4/resize/sizeÆ
<feed_forward_2/resize_conv_2d_4/resize/ResizeNearestNeighborResizeNearestNeighbor"feed_forward_2/residual_14/add:z:04feed_forward_2/resize_conv_2d_4/resize/size:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿèè*
half_pixel_centers(2>
<feed_forward_2/resize_conv_2d_4/resize/ResizeNearestNeighbor×
4feed_forward_2/resize_conv_2d_4/conv_2d_45/MirrorPad	MirrorPadMfeed_forward_2/resize_conv_2d_4/resize/ResizeNearestNeighbor:resized_images:0=feed_forward_2_resize_conv_2d_4_conv_2d_45_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿêê*
mode	REFLECT26
4feed_forward_2/resize_conv_2d_4/conv_2d_45/MirrorPadµ
Jfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D/ReadVariableOpReadVariableOpSfeed_forward_2_resize_conv_2d_4_conv_2d_45_conv2d_45_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02L
Jfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D/ReadVariableOpü
;feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2DConv2D=feed_forward_2/resize_conv_2d_4/conv_2d_45/MirrorPad:output:0Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2=
;feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D
Jfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/ShapeShapeDfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D:output:0*
T0*
_output_shapes
:2L
Jfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Shapeþ
Xfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2Z
Xfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice/stack
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice/stack_1
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice/stack_2
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_sliceStridedSliceSfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Shape:output:0afeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice/stack:output:0cfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice/stack_1:output:0cfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2T
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1/stack
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1/stack_1
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1/stack_2
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1StridedSliceSfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Shape:output:0cfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1/stack:output:0efeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1/stack_1:output:0efeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_1
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2/stack
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2/stack_1
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2/stack_2
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2StridedSliceSfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Shape:output:0cfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2/stack:output:0efeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2/stack_1:output:0efeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_2
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3/stack
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3/stack_1
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3/stack_2
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3StridedSliceSfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Shape:output:0cfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3/stack:output:0efeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3/stack_1:output:0efeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/strided_slice_3
cfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2e
cfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/mean/reduction_indices­
Qfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/meanMeanDfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D:output:0lfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2S
Qfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/meanÜ
Yfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/StopGradientStopGradientZfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2[
Yfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/StopGradient»
^feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/SquaredDifferenceSquaredDifferenceDfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D:output:0bfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2`
^feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/SquaredDifference£
gfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2i
gfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/variance/reduction_indices×
Ufeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/varianceMeanbfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/SquaredDifference:z:0pfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2W
Ufeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/varianceÛ
[feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/ReadVariableOpReadVariableOpdfeed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_reshape_readvariableop_resource*
_output_shapes
:@*
dtype02]
[feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2T
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/shape
Lfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/ReshapeReshapecfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp:value:0[feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/shape:output:0*
T0*&
_output_shapes
:@2N
Lfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshapeá
]feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOpReadVariableOpffeed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype02_
]feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2V
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/shape¢
Nfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1Reshapeefeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp:value:0]feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2P
Nfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1ñ
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2V
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/add/yª
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/addAddV2^feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/variance:output:0]feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2T
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/addÇ
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/RsqrtRsqrtVfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2V
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/Rsqrt
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mulMulXfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/Rsqrt:y:0Ufeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2T
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mul
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mul_1MulDfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D:output:0Vfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2V
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mul_1¡
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mul_2MulZfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/moments/mean:output:0Vfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2V
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mul_2
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/subSubWfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1:output:0Xfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2T
Rfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/sub£
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/add_1AddV2Xfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/mul_1:z:0Vfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2V
Tfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/add_1
/feed_forward_2/resize_conv_2d_4/conv_2d_45/ReluReluXfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@21
/feed_forward_2/resize_conv_2d_4/conv_2d_45/Relu«
+feed_forward_2/resize_conv_2d_5/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"Ð  Ð  2-
+feed_forward_2/resize_conv_2d_5/resize/sizeà
<feed_forward_2/resize_conv_2d_5/resize/ResizeNearestNeighborResizeNearestNeighbor=feed_forward_2/resize_conv_2d_4/conv_2d_45/Relu:activations:04feed_forward_2/resize_conv_2d_5/resize/size:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐÐ@*
half_pixel_centers(2>
<feed_forward_2/resize_conv_2d_5/resize/ResizeNearestNeighborÖ
4feed_forward_2/resize_conv_2d_5/conv_2d_46/MirrorPad	MirrorPadMfeed_forward_2/resize_conv_2d_5/resize/ResizeNearestNeighbor:resized_images:0=feed_forward_2_resize_conv_2d_5_conv_2d_46_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒÒ@*
mode	REFLECT26
4feed_forward_2/resize_conv_2d_5/conv_2d_46/MirrorPad´
Jfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D/ReadVariableOpReadVariableOpSfeed_forward_2_resize_conv_2d_5_conv_2d_46_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02L
Jfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D/ReadVariableOpü
;feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2DConv2D=feed_forward_2/resize_conv_2d_5/conv_2d_46/MirrorPad:output:0Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2=
;feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D
Jfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/ShapeShapeDfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D:output:0*
T0*
_output_shapes
:2L
Jfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Shapeþ
Xfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2Z
Xfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice/stack
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice/stack_1
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice/stack_2
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_sliceStridedSliceSfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Shape:output:0afeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice/stack:output:0cfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice/stack_1:output:0cfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2T
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1/stack
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1/stack_1
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1/stack_2
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1StridedSliceSfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Shape:output:0cfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1/stack:output:0efeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1/stack_1:output:0efeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_1
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2/stack
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2/stack_1
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2/stack_2
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2StridedSliceSfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Shape:output:0cfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2/stack:output:0efeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2/stack_1:output:0efeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_2
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2\
Zfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3/stack
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3/stack_1
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2^
\feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3/stack_2
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3StridedSliceSfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Shape:output:0cfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3/stack:output:0efeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3/stack_1:output:0efeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2V
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/strided_slice_3
cfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2e
cfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/mean/reduction_indices­
Qfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/meanMeanDfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D:output:0lfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2S
Qfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/meanÜ
Yfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/StopGradientStopGradientZfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2[
Yfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/StopGradient»
^feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/SquaredDifferenceSquaredDifferenceDfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D:output:0bfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2`
^feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/SquaredDifference£
gfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2i
gfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/variance/reduction_indices×
Ufeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/varianceMeanbfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/SquaredDifference:z:0pfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2W
Ufeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/varianceÛ
[feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/ReadVariableOpReadVariableOpdfeed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_reshape_readvariableop_resource*
_output_shapes
: *
dtype02]
[feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2T
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/shape
Lfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/ReshapeReshapecfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp:value:0[feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/shape:output:0*
T0*&
_output_shapes
: 2N
Lfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshapeá
]feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOpReadVariableOpffeed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02_
]feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2V
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/shape¢
Nfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1Reshapeefeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp:value:0]feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2P
Nfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1ñ
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2V
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/add/yª
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/addAddV2^feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/variance:output:0]feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2T
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/addÇ
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/RsqrtRsqrtVfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2V
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/Rsqrt
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mulMulXfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/Rsqrt:y:0Ufeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2T
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mul
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mul_1MulDfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D:output:0Vfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2V
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mul_1¡
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mul_2MulZfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/moments/mean:output:0Vfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2V
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mul_2
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/subSubWfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1:output:0Xfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2T
Rfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/sub£
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/add_1AddV2Xfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/mul_1:z:0Vfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2V
Tfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/add_1
/feed_forward_2/resize_conv_2d_5/conv_2d_46/ReluReluXfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 21
/feed_forward_2/resize_conv_2d_5/conv_2d_46/Relu
#feed_forward_2/conv_2d_47/MirrorPad	MirrorPad=feed_forward_2/resize_conv_2d_5/conv_2d_46/Relu:activations:0,feed_forward_2_conv_2d_47_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð *
mode	REFLECT2%
#feed_forward_2/conv_2d_47/MirrorPad
9feed_forward_2/conv_2d_47/conv2d_47/Conv2D/ReadVariableOpReadVariableOpBfeed_forward_2_conv_2d_47_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02;
9feed_forward_2/conv_2d_47/conv2d_47/Conv2D/ReadVariableOp¸
*feed_forward_2/conv_2d_47/conv2d_47/Conv2DConv2D,feed_forward_2/conv_2d_47/MirrorPad:output:0Afeed_forward_2/conv_2d_47/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*
paddingVALID*
strides
2,
*feed_forward_2/conv_2d_47/conv2d_47/Conv2DÙ
9feed_forward_2/conv_2d_47/instance_normalization_53/ShapeShape3feed_forward_2/conv_2d_47/conv2d_47/Conv2D:output:0*
T0*
_output_shapes
:2;
9feed_forward_2/conv_2d_47/instance_normalization_53/ShapeÜ
Gfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice/stackà
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice/stack_1à
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice/stack_2
Afeed_forward_2/conv_2d_47/instance_normalization_53/strided_sliceStridedSliceBfeed_forward_2/conv_2d_47/instance_normalization_53/Shape:output:0Pfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice/stack:output:0Rfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice/stack_1:output:0Rfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2C
Afeed_forward_2/conv_2d_47/instance_normalization_53/strided_sliceà
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1/stackä
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1/stack_1ä
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1/stack_2¤
Cfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1StridedSliceBfeed_forward_2/conv_2d_47/instance_normalization_53/Shape:output:0Rfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1/stack:output:0Tfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1/stack_1:output:0Tfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_1à
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2/stackä
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2/stack_1ä
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2/stack_2¤
Cfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2StridedSliceBfeed_forward_2/conv_2d_47/instance_normalization_53/Shape:output:0Rfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2/stack:output:0Tfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2/stack_1:output:0Tfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_2à
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2K
Ifeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3/stackä
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3/stack_1ä
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2M
Kfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3/stack_2¤
Cfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3StridedSliceBfeed_forward_2/conv_2d_47/instance_normalization_53/Shape:output:0Rfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3/stack:output:0Tfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3/stack_1:output:0Tfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2E
Cfeed_forward_2/conv_2d_47/instance_normalization_53/strided_slice_3ù
Rfeed_forward_2/conv_2d_47/instance_normalization_53/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2T
Rfeed_forward_2/conv_2d_47/instance_normalization_53/moments/mean/reduction_indicesé
@feed_forward_2/conv_2d_47/instance_normalization_53/moments/meanMean3feed_forward_2/conv_2d_47/conv2d_47/Conv2D:output:0[feed_forward_2/conv_2d_47/instance_normalization_53/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2B
@feed_forward_2/conv_2d_47/instance_normalization_53/moments/mean©
Hfeed_forward_2/conv_2d_47/instance_normalization_53/moments/StopGradientStopGradientIfeed_forward_2/conv_2d_47/instance_normalization_53/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2J
Hfeed_forward_2/conv_2d_47/instance_normalization_53/moments/StopGradient÷
Mfeed_forward_2/conv_2d_47/instance_normalization_53/moments/SquaredDifferenceSquaredDifference3feed_forward_2/conv_2d_47/conv2d_47/Conv2D:output:0Qfeed_forward_2/conv_2d_47/instance_normalization_53/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2O
Mfeed_forward_2/conv_2d_47/instance_normalization_53/moments/SquaredDifference
Vfeed_forward_2/conv_2d_47/instance_normalization_53/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2X
Vfeed_forward_2/conv_2d_47/instance_normalization_53/moments/variance/reduction_indices
Dfeed_forward_2/conv_2d_47/instance_normalization_53/moments/varianceMeanQfeed_forward_2/conv_2d_47/instance_normalization_53/moments/SquaredDifference:z:0_feed_forward_2/conv_2d_47/instance_normalization_53/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2F
Dfeed_forward_2/conv_2d_47/instance_normalization_53/moments/variance¨
Jfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape/ReadVariableOpReadVariableOpSfeed_forward_2_conv_2d_47_instance_normalization_53_reshape_readvariableop_resource*
_output_shapes
:*
dtype02L
Jfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape/ReadVariableOpß
Afeed_forward_2/conv_2d_47/instance_normalization_53/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2C
Afeed_forward_2/conv_2d_47/instance_normalization_53/Reshape/shapeÖ
;feed_forward_2/conv_2d_47/instance_normalization_53/ReshapeReshapeRfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape/ReadVariableOp:value:0Jfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape/shape:output:0*
T0*&
_output_shapes
:2=
;feed_forward_2/conv_2d_47/instance_normalization_53/Reshape®
Lfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/ReadVariableOpReadVariableOpUfeed_forward_2_conv_2d_47_instance_normalization_53_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02N
Lfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/ReadVariableOpã
Cfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2E
Cfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/shapeÞ
=feed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1ReshapeTfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/ReadVariableOp:value:0Lfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2?
=feed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1Ï
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2E
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/add/yæ
Afeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/addAddV2Mfeed_forward_2/conv_2d_47/instance_normalization_53/moments/variance:output:0Lfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/add
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/RsqrtRsqrtEfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/RsqrtÖ
Afeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mulMulGfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/Rsqrt:y:0Dfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mulÉ
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mul_1Mul3feed_forward_2/conv_2d_47/conv2d_47/Conv2D:output:0Efeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2E
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mul_1Ý
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mul_2MulIfeed_forward_2/conv_2d_47/instance_normalization_53/moments/mean:output:0Efeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2E
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mul_2Ø
Afeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/subSubFfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1:output:0Gfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2C
Afeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/subß
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/add_1AddV2Gfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/mul_1:z:0Efeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2E
Cfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/add_1·
feed_forward_2/TanhTanhGfeed_forward_2/conv_2d_47/instance_normalization_53/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2
feed_forward_2/TanhÃ
IdentityIdentityfeed_forward_2/Tanh:y:0:^feed_forward_2/conv_2d_32/conv2d_32/Conv2D/ReadVariableOpK^feed_forward_2/conv_2d_32/instance_normalization_36/Reshape/ReadVariableOpM^feed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/ReadVariableOp:^feed_forward_2/conv_2d_33/conv2d_33/Conv2D/ReadVariableOpK^feed_forward_2/conv_2d_33/instance_normalization_37/Reshape/ReadVariableOpM^feed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/ReadVariableOp:^feed_forward_2/conv_2d_34/conv2d_34/Conv2D/ReadVariableOpK^feed_forward_2/conv_2d_34/instance_normalization_38/Reshape/ReadVariableOpM^feed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/ReadVariableOp:^feed_forward_2/conv_2d_47/conv2d_47/Conv2D/ReadVariableOpK^feed_forward_2/conv_2d_47/instance_normalization_53/Reshape/ReadVariableOpM^feed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/ReadVariableOpF^feed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D/ReadVariableOpW^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/ReadVariableOpY^feed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOpF^feed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D/ReadVariableOpW^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/ReadVariableOpY^feed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOpF^feed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D/ReadVariableOpW^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/ReadVariableOpY^feed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOpF^feed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D/ReadVariableOpW^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/ReadVariableOpY^feed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOpF^feed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D/ReadVariableOpW^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/ReadVariableOpY^feed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOpF^feed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D/ReadVariableOpW^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/ReadVariableOpY^feed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOpF^feed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D/ReadVariableOpW^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/ReadVariableOpY^feed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOpF^feed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D/ReadVariableOpW^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/ReadVariableOpY^feed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOpF^feed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D/ReadVariableOpW^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/ReadVariableOpY^feed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOpF^feed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D/ReadVariableOpW^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/ReadVariableOpY^feed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOpK^feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D/ReadVariableOp\^feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp^^feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOpK^feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D/ReadVariableOp\^feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp^^feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*
_input_shapes
ý:ÿÿÿÿÿÿÿÿÿèè::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2v
9feed_forward_2/conv_2d_32/conv2d_32/Conv2D/ReadVariableOp9feed_forward_2/conv_2d_32/conv2d_32/Conv2D/ReadVariableOp2
Jfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape/ReadVariableOpJfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape/ReadVariableOp2
Lfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/ReadVariableOpLfeed_forward_2/conv_2d_32/instance_normalization_36/Reshape_1/ReadVariableOp2v
9feed_forward_2/conv_2d_33/conv2d_33/Conv2D/ReadVariableOp9feed_forward_2/conv_2d_33/conv2d_33/Conv2D/ReadVariableOp2
Jfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape/ReadVariableOpJfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape/ReadVariableOp2
Lfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/ReadVariableOpLfeed_forward_2/conv_2d_33/instance_normalization_37/Reshape_1/ReadVariableOp2v
9feed_forward_2/conv_2d_34/conv2d_34/Conv2D/ReadVariableOp9feed_forward_2/conv_2d_34/conv2d_34/Conv2D/ReadVariableOp2
Jfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape/ReadVariableOpJfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape/ReadVariableOp2
Lfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/ReadVariableOpLfeed_forward_2/conv_2d_34/instance_normalization_38/Reshape_1/ReadVariableOp2v
9feed_forward_2/conv_2d_47/conv2d_47/Conv2D/ReadVariableOp9feed_forward_2/conv_2d_47/conv2d_47/Conv2D/ReadVariableOp2
Jfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape/ReadVariableOpJfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape/ReadVariableOp2
Lfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/ReadVariableOpLfeed_forward_2/conv_2d_47/instance_normalization_53/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D/ReadVariableOpEfeed_forward_2/residual_10/conv_2d_35/conv2d_35/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/ReadVariableOpVfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOpXfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D/ReadVariableOpEfeed_forward_2/residual_10/conv_2d_36/conv2d_36/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/ReadVariableOpVfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOpXfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D/ReadVariableOpEfeed_forward_2/residual_11/conv_2d_37/conv2d_37/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/ReadVariableOpVfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOpXfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D/ReadVariableOpEfeed_forward_2/residual_11/conv_2d_38/conv2d_38/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/ReadVariableOpVfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOpXfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D/ReadVariableOpEfeed_forward_2/residual_12/conv_2d_39/conv2d_39/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/ReadVariableOpVfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOpXfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D/ReadVariableOpEfeed_forward_2/residual_12/conv_2d_40/conv2d_40/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/ReadVariableOpVfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOpXfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D/ReadVariableOpEfeed_forward_2/residual_13/conv_2d_41/conv2d_41/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/ReadVariableOpVfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOpXfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D/ReadVariableOpEfeed_forward_2/residual_13/conv_2d_42/conv2d_42/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/ReadVariableOpVfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOpXfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D/ReadVariableOpEfeed_forward_2/residual_14/conv_2d_43/conv2d_43/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/ReadVariableOpVfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOpXfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp2
Efeed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D/ReadVariableOpEfeed_forward_2/residual_14/conv_2d_44/conv2d_44/Conv2D/ReadVariableOp2°
Vfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/ReadVariableOpVfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp2´
Xfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOpXfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp2
Jfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D/ReadVariableOpJfeed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/Conv2D/ReadVariableOp2º
[feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp[feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape/ReadVariableOp2¾
]feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp]feed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/Reshape_1/ReadVariableOp2
Jfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D/ReadVariableOpJfeed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/Conv2D/ReadVariableOp2º
[feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp[feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp2¾
]feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp]feed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp:Z V
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
²0
ò
S__inference_instance_normalization_46_layer_call_and_return_conditional_losses_4326

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
S__inference_instance_normalization_38_layer_call_and_return_conditional_losses_3894

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
S__inference_instance_normalization_41_layer_call_and_return_conditional_losses_4056

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
S__inference_instance_normalization_48_layer_call_and_return_conditional_losses_4434

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
8__inference_instance_normalization_43_layer_call_fn_4174

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
S__inference_instance_normalization_43_layer_call_and_return_conditional_losses_41642
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
¤	
Ù
*__inference_residual_13_layer_call_fn_6638

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÏ
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
GPU2*0J 8 *N
fIRG
E__inference_residual_13_layer_call_and_return_conditional_losses_53252
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
S__inference_instance_normalization_39_layer_call_and_return_conditional_losses_3948

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
8__inference_instance_normalization_45_layer_call_fn_4282

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
S__inference_instance_normalization_45_layer_call_and_return_conditional_losses_42722
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
·

E__inference_residual_12_layer_call_and_return_conditional_losses_5191

inputs!
conv_2d_39_mirrorpad_paddings7
3conv_2d_39_conv2d_39_conv2d_readvariableop_resourceH
Dconv_2d_39_instance_normalization_43_reshape_readvariableop_resourceJ
Fconv_2d_39_instance_normalization_43_reshape_1_readvariableop_resource!
conv_2d_40_mirrorpad_paddings7
3conv_2d_40_conv2d_40_conv2d_readvariableop_resourceH
Dconv_2d_40_instance_normalization_44_reshape_readvariableop_resourceJ
Fconv_2d_40_instance_normalization_44_reshape_1_readvariableop_resource
identity¢*conv_2d_39/conv2d_39/Conv2D/ReadVariableOp¢;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp¢=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp¢*conv_2d_40/conv2d_40/Conv2D/ReadVariableOp¢;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp¢=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp°
conv_2d_39/MirrorPad	MirrorPadinputsconv_2d_39_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_39/MirrorPadÖ
*conv_2d_39/conv2d_39/Conv2D/ReadVariableOpReadVariableOp3conv_2d_39_conv2d_39_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_39/conv2d_39/Conv2D/ReadVariableOpý
conv_2d_39/conv2d_39/Conv2DConv2Dconv_2d_39/MirrorPad:output:02conv_2d_39/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_39/conv2d_39/Conv2D¬
*conv_2d_39/instance_normalization_43/ShapeShape$conv_2d_39/conv2d_39/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_39/instance_normalization_43/Shape¾
8conv_2d_39/instance_normalization_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_39/instance_normalization_43/strided_slice/stackÂ
:conv_2d_39/instance_normalization_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice/stack_1Â
:conv_2d_39/instance_normalization_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice/stack_2À
2conv_2d_39/instance_normalization_43/strided_sliceStridedSlice3conv_2d_39/instance_normalization_43/Shape:output:0Aconv_2d_39/instance_normalization_43/strided_slice/stack:output:0Cconv_2d_39/instance_normalization_43/strided_slice/stack_1:output:0Cconv_2d_39/instance_normalization_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_39/instance_normalization_43/strided_sliceÂ
:conv_2d_39/instance_normalization_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice_1/stackÆ
<conv_2d_39/instance_normalization_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_1/stack_1Æ
<conv_2d_39/instance_normalization_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_1/stack_2Ê
4conv_2d_39/instance_normalization_43/strided_slice_1StridedSlice3conv_2d_39/instance_normalization_43/Shape:output:0Cconv_2d_39/instance_normalization_43/strided_slice_1/stack:output:0Econv_2d_39/instance_normalization_43/strided_slice_1/stack_1:output:0Econv_2d_39/instance_normalization_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_39/instance_normalization_43/strided_slice_1Â
:conv_2d_39/instance_normalization_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice_2/stackÆ
<conv_2d_39/instance_normalization_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_2/stack_1Æ
<conv_2d_39/instance_normalization_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_2/stack_2Ê
4conv_2d_39/instance_normalization_43/strided_slice_2StridedSlice3conv_2d_39/instance_normalization_43/Shape:output:0Cconv_2d_39/instance_normalization_43/strided_slice_2/stack:output:0Econv_2d_39/instance_normalization_43/strided_slice_2/stack_1:output:0Econv_2d_39/instance_normalization_43/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_39/instance_normalization_43/strided_slice_2Â
:conv_2d_39/instance_normalization_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_39/instance_normalization_43/strided_slice_3/stackÆ
<conv_2d_39/instance_normalization_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_3/stack_1Æ
<conv_2d_39/instance_normalization_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_39/instance_normalization_43/strided_slice_3/stack_2Ê
4conv_2d_39/instance_normalization_43/strided_slice_3StridedSlice3conv_2d_39/instance_normalization_43/Shape:output:0Cconv_2d_39/instance_normalization_43/strided_slice_3/stack:output:0Econv_2d_39/instance_normalization_43/strided_slice_3/stack_1:output:0Econv_2d_39/instance_normalization_43/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_39/instance_normalization_43/strided_slice_3Û
Cconv_2d_39/instance_normalization_43/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_39/instance_normalization_43/moments/mean/reduction_indices®
1conv_2d_39/instance_normalization_43/moments/meanMean$conv_2d_39/conv2d_39/Conv2D:output:0Lconv_2d_39/instance_normalization_43/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_39/instance_normalization_43/moments/meaný
9conv_2d_39/instance_normalization_43/moments/StopGradientStopGradient:conv_2d_39/instance_normalization_43/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_39/instance_normalization_43/moments/StopGradient¼
>conv_2d_39/instance_normalization_43/moments/SquaredDifferenceSquaredDifference$conv_2d_39/conv2d_39/Conv2D:output:0Bconv_2d_39/instance_normalization_43/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_39/instance_normalization_43/moments/SquaredDifferenceã
Gconv_2d_39/instance_normalization_43/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_39/instance_normalization_43/moments/variance/reduction_indicesØ
5conv_2d_39/instance_normalization_43/moments/varianceMeanBconv_2d_39/instance_normalization_43/moments/SquaredDifference:z:0Pconv_2d_39/instance_normalization_43/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_39/instance_normalization_43/moments/varianceü
;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOpReadVariableOpDconv_2d_39_instance_normalization_43_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOpÁ
2conv_2d_39/instance_normalization_43/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_39/instance_normalization_43/Reshape/shape
,conv_2d_39/instance_normalization_43/ReshapeReshapeCconv_2d_39/instance_normalization_43/Reshape/ReadVariableOp:value:0;conv_2d_39/instance_normalization_43/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_39/instance_normalization_43/Reshape
=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_39_instance_normalization_43_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOpÅ
4conv_2d_39/instance_normalization_43/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_39/instance_normalization_43/Reshape_1/shape£
.conv_2d_39/instance_normalization_43/Reshape_1ReshapeEconv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp:value:0=conv_2d_39/instance_normalization_43/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_39/instance_normalization_43/Reshape_1±
4conv_2d_39/instance_normalization_43/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_39/instance_normalization_43/batchnorm/add/y«
2conv_2d_39/instance_normalization_43/batchnorm/addAddV2>conv_2d_39/instance_normalization_43/moments/variance:output:0=conv_2d_39/instance_normalization_43/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_39/instance_normalization_43/batchnorm/addè
4conv_2d_39/instance_normalization_43/batchnorm/RsqrtRsqrt6conv_2d_39/instance_normalization_43/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_39/instance_normalization_43/batchnorm/Rsqrt
2conv_2d_39/instance_normalization_43/batchnorm/mulMul8conv_2d_39/instance_normalization_43/batchnorm/Rsqrt:y:05conv_2d_39/instance_normalization_43/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_39/instance_normalization_43/batchnorm/mul
4conv_2d_39/instance_normalization_43/batchnorm/mul_1Mul$conv_2d_39/conv2d_39/Conv2D:output:06conv_2d_39/instance_normalization_43/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_39/instance_normalization_43/batchnorm/mul_1¢
4conv_2d_39/instance_normalization_43/batchnorm/mul_2Mul:conv_2d_39/instance_normalization_43/moments/mean:output:06conv_2d_39/instance_normalization_43/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_39/instance_normalization_43/batchnorm/mul_2
2conv_2d_39/instance_normalization_43/batchnorm/subSub7conv_2d_39/instance_normalization_43/Reshape_1:output:08conv_2d_39/instance_normalization_43/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_39/instance_normalization_43/batchnorm/sub¤
4conv_2d_39/instance_normalization_43/batchnorm/add_1AddV28conv_2d_39/instance_normalization_43/batchnorm/mul_1:z:06conv_2d_39/instance_normalization_43/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_39/instance_normalization_43/batchnorm/add_1¡
conv_2d_39/ReluRelu8conv_2d_39/instance_normalization_43/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_39/ReluÇ
conv_2d_40/MirrorPad	MirrorPadconv_2d_39/Relu:activations:0conv_2d_40_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_40/MirrorPadÖ
*conv_2d_40/conv2d_40/Conv2D/ReadVariableOpReadVariableOp3conv_2d_40_conv2d_40_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_40/conv2d_40/Conv2D/ReadVariableOpý
conv_2d_40/conv2d_40/Conv2DConv2Dconv_2d_40/MirrorPad:output:02conv_2d_40/conv2d_40/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_40/conv2d_40/Conv2D¬
*conv_2d_40/instance_normalization_44/ShapeShape$conv_2d_40/conv2d_40/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_40/instance_normalization_44/Shape¾
8conv_2d_40/instance_normalization_44/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_40/instance_normalization_44/strided_slice/stackÂ
:conv_2d_40/instance_normalization_44/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice/stack_1Â
:conv_2d_40/instance_normalization_44/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice/stack_2À
2conv_2d_40/instance_normalization_44/strided_sliceStridedSlice3conv_2d_40/instance_normalization_44/Shape:output:0Aconv_2d_40/instance_normalization_44/strided_slice/stack:output:0Cconv_2d_40/instance_normalization_44/strided_slice/stack_1:output:0Cconv_2d_40/instance_normalization_44/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_40/instance_normalization_44/strided_sliceÂ
:conv_2d_40/instance_normalization_44/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice_1/stackÆ
<conv_2d_40/instance_normalization_44/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_1/stack_1Æ
<conv_2d_40/instance_normalization_44/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_1/stack_2Ê
4conv_2d_40/instance_normalization_44/strided_slice_1StridedSlice3conv_2d_40/instance_normalization_44/Shape:output:0Cconv_2d_40/instance_normalization_44/strided_slice_1/stack:output:0Econv_2d_40/instance_normalization_44/strided_slice_1/stack_1:output:0Econv_2d_40/instance_normalization_44/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_40/instance_normalization_44/strided_slice_1Â
:conv_2d_40/instance_normalization_44/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice_2/stackÆ
<conv_2d_40/instance_normalization_44/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_2/stack_1Æ
<conv_2d_40/instance_normalization_44/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_2/stack_2Ê
4conv_2d_40/instance_normalization_44/strided_slice_2StridedSlice3conv_2d_40/instance_normalization_44/Shape:output:0Cconv_2d_40/instance_normalization_44/strided_slice_2/stack:output:0Econv_2d_40/instance_normalization_44/strided_slice_2/stack_1:output:0Econv_2d_40/instance_normalization_44/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_40/instance_normalization_44/strided_slice_2Â
:conv_2d_40/instance_normalization_44/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_40/instance_normalization_44/strided_slice_3/stackÆ
<conv_2d_40/instance_normalization_44/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_3/stack_1Æ
<conv_2d_40/instance_normalization_44/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_40/instance_normalization_44/strided_slice_3/stack_2Ê
4conv_2d_40/instance_normalization_44/strided_slice_3StridedSlice3conv_2d_40/instance_normalization_44/Shape:output:0Cconv_2d_40/instance_normalization_44/strided_slice_3/stack:output:0Econv_2d_40/instance_normalization_44/strided_slice_3/stack_1:output:0Econv_2d_40/instance_normalization_44/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_40/instance_normalization_44/strided_slice_3Û
Cconv_2d_40/instance_normalization_44/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_40/instance_normalization_44/moments/mean/reduction_indices®
1conv_2d_40/instance_normalization_44/moments/meanMean$conv_2d_40/conv2d_40/Conv2D:output:0Lconv_2d_40/instance_normalization_44/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_40/instance_normalization_44/moments/meaný
9conv_2d_40/instance_normalization_44/moments/StopGradientStopGradient:conv_2d_40/instance_normalization_44/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_40/instance_normalization_44/moments/StopGradient¼
>conv_2d_40/instance_normalization_44/moments/SquaredDifferenceSquaredDifference$conv_2d_40/conv2d_40/Conv2D:output:0Bconv_2d_40/instance_normalization_44/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_40/instance_normalization_44/moments/SquaredDifferenceã
Gconv_2d_40/instance_normalization_44/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_40/instance_normalization_44/moments/variance/reduction_indicesØ
5conv_2d_40/instance_normalization_44/moments/varianceMeanBconv_2d_40/instance_normalization_44/moments/SquaredDifference:z:0Pconv_2d_40/instance_normalization_44/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_40/instance_normalization_44/moments/varianceü
;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOpReadVariableOpDconv_2d_40_instance_normalization_44_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOpÁ
2conv_2d_40/instance_normalization_44/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_40/instance_normalization_44/Reshape/shape
,conv_2d_40/instance_normalization_44/ReshapeReshapeCconv_2d_40/instance_normalization_44/Reshape/ReadVariableOp:value:0;conv_2d_40/instance_normalization_44/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_40/instance_normalization_44/Reshape
=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_40_instance_normalization_44_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOpÅ
4conv_2d_40/instance_normalization_44/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_40/instance_normalization_44/Reshape_1/shape£
.conv_2d_40/instance_normalization_44/Reshape_1ReshapeEconv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp:value:0=conv_2d_40/instance_normalization_44/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_40/instance_normalization_44/Reshape_1±
4conv_2d_40/instance_normalization_44/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_40/instance_normalization_44/batchnorm/add/y«
2conv_2d_40/instance_normalization_44/batchnorm/addAddV2>conv_2d_40/instance_normalization_44/moments/variance:output:0=conv_2d_40/instance_normalization_44/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_40/instance_normalization_44/batchnorm/addè
4conv_2d_40/instance_normalization_44/batchnorm/RsqrtRsqrt6conv_2d_40/instance_normalization_44/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_40/instance_normalization_44/batchnorm/Rsqrt
2conv_2d_40/instance_normalization_44/batchnorm/mulMul8conv_2d_40/instance_normalization_44/batchnorm/Rsqrt:y:05conv_2d_40/instance_normalization_44/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_40/instance_normalization_44/batchnorm/mul
4conv_2d_40/instance_normalization_44/batchnorm/mul_1Mul$conv_2d_40/conv2d_40/Conv2D:output:06conv_2d_40/instance_normalization_44/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_40/instance_normalization_44/batchnorm/mul_1¢
4conv_2d_40/instance_normalization_44/batchnorm/mul_2Mul:conv_2d_40/instance_normalization_44/moments/mean:output:06conv_2d_40/instance_normalization_44/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_40/instance_normalization_44/batchnorm/mul_2
2conv_2d_40/instance_normalization_44/batchnorm/subSub7conv_2d_40/instance_normalization_44/Reshape_1:output:08conv_2d_40/instance_normalization_44/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_40/instance_normalization_44/batchnorm/sub¤
4conv_2d_40/instance_normalization_44/batchnorm/add_1AddV28conv_2d_40/instance_normalization_44/batchnorm/mul_1:z:06conv_2d_40/instance_normalization_44/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_40/instance_normalization_44/batchnorm/add_1
addAddV2inputs8conv_2d_40/instance_normalization_44/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_39/conv2d_39/Conv2D/ReadVariableOp<^conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp>^conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp+^conv_2d_40/conv2d_40/Conv2D/ReadVariableOp<^conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp>^conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_39/conv2d_39/Conv2D/ReadVariableOp*conv_2d_39/conv2d_39/Conv2D/ReadVariableOp2z
;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp;conv_2d_39/instance_normalization_43/Reshape/ReadVariableOp2~
=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp=conv_2d_39/instance_normalization_43/Reshape_1/ReadVariableOp2X
*conv_2d_40/conv2d_40/Conv2D/ReadVariableOp*conv_2d_40/conv2d_40/Conv2D/ReadVariableOp2z
;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp;conv_2d_40/instance_normalization_44/Reshape/ReadVariableOp2~
=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp=conv_2d_40/instance_normalization_44/Reshape_1/ReadVariableOp:Z V
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
S__inference_instance_normalization_45_layer_call_and_return_conditional_losses_4272

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
ä
­)
 __inference__traced_restore_7279
file_prefix?
;assignvariableop_feed_forward_2_conv_2d_32_conv2d_32_kernelP
Lassignvariableop_1_feed_forward_2_conv_2d_32_instance_normalization_36_gammaO
Kassignvariableop_2_feed_forward_2_conv_2d_32_instance_normalization_36_betaA
=assignvariableop_3_feed_forward_2_conv_2d_33_conv2d_33_kernelP
Lassignvariableop_4_feed_forward_2_conv_2d_33_instance_normalization_37_gammaO
Kassignvariableop_5_feed_forward_2_conv_2d_33_instance_normalization_37_betaA
=assignvariableop_6_feed_forward_2_conv_2d_34_conv2d_34_kernelP
Lassignvariableop_7_feed_forward_2_conv_2d_34_instance_normalization_38_gammaO
Kassignvariableop_8_feed_forward_2_conv_2d_34_instance_normalization_38_betaM
Iassignvariableop_9_feed_forward_2_residual_10_conv_2d_35_conv2d_35_kernel]
Yassignvariableop_10_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_gamma\
Xassignvariableop_11_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_betaN
Jassignvariableop_12_feed_forward_2_residual_10_conv_2d_36_conv2d_36_kernel]
Yassignvariableop_13_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_gamma\
Xassignvariableop_14_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_betaN
Jassignvariableop_15_feed_forward_2_residual_11_conv_2d_37_conv2d_37_kernel]
Yassignvariableop_16_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_gamma\
Xassignvariableop_17_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_betaN
Jassignvariableop_18_feed_forward_2_residual_11_conv_2d_38_conv2d_38_kernel]
Yassignvariableop_19_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_gamma\
Xassignvariableop_20_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_betaN
Jassignvariableop_21_feed_forward_2_residual_12_conv_2d_39_conv2d_39_kernel]
Yassignvariableop_22_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_gamma\
Xassignvariableop_23_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_betaN
Jassignvariableop_24_feed_forward_2_residual_12_conv_2d_40_conv2d_40_kernel]
Yassignvariableop_25_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_gamma\
Xassignvariableop_26_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_betaN
Jassignvariableop_27_feed_forward_2_residual_13_conv_2d_41_conv2d_41_kernel]
Yassignvariableop_28_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_gamma\
Xassignvariableop_29_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_betaN
Jassignvariableop_30_feed_forward_2_residual_13_conv_2d_42_conv2d_42_kernel]
Yassignvariableop_31_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_gamma\
Xassignvariableop_32_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_betaN
Jassignvariableop_33_feed_forward_2_residual_14_conv_2d_43_conv2d_43_kernel]
Yassignvariableop_34_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_gamma\
Xassignvariableop_35_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_betaN
Jassignvariableop_36_feed_forward_2_residual_14_conv_2d_44_conv2d_44_kernel]
Yassignvariableop_37_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_gamma\
Xassignvariableop_38_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_betaS
Oassignvariableop_39_feed_forward_2_resize_conv_2d_4_conv_2d_45_conv2d_45_kernelb
^assignvariableop_40_feed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_gammaa
]assignvariableop_41_feed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_betaS
Oassignvariableop_42_feed_forward_2_resize_conv_2d_5_conv_2d_46_conv2d_46_kernelb
^assignvariableop_43_feed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_gammaa
]assignvariableop_44_feed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_betaB
>assignvariableop_45_feed_forward_2_conv_2d_47_conv2d_47_kernelQ
Massignvariableop_46_feed_forward_2_conv_2d_47_instance_normalization_53_gammaP
Lassignvariableop_47_feed_forward_2_conv_2d_47_instance_normalization_53_beta
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
AssignVariableOpAssignVariableOp;assignvariableop_feed_forward_2_conv_2d_32_conv2d_32_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ñ
AssignVariableOp_1AssignVariableOpLassignvariableop_1_feed_forward_2_conv_2d_32_instance_normalization_36_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ð
AssignVariableOp_2AssignVariableOpKassignvariableop_2_feed_forward_2_conv_2d_32_instance_normalization_36_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Â
AssignVariableOp_3AssignVariableOp=assignvariableop_3_feed_forward_2_conv_2d_33_conv2d_33_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ñ
AssignVariableOp_4AssignVariableOpLassignvariableop_4_feed_forward_2_conv_2d_33_instance_normalization_37_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ð
AssignVariableOp_5AssignVariableOpKassignvariableop_5_feed_forward_2_conv_2d_33_instance_normalization_37_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Â
AssignVariableOp_6AssignVariableOp=assignvariableop_6_feed_forward_2_conv_2d_34_conv2d_34_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ñ
AssignVariableOp_7AssignVariableOpLassignvariableop_7_feed_forward_2_conv_2d_34_instance_normalization_38_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ð
AssignVariableOp_8AssignVariableOpKassignvariableop_8_feed_forward_2_conv_2d_34_instance_normalization_38_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Î
AssignVariableOp_9AssignVariableOpIassignvariableop_9_feed_forward_2_residual_10_conv_2d_35_conv2d_35_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10á
AssignVariableOp_10AssignVariableOpYassignvariableop_10_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11à
AssignVariableOp_11AssignVariableOpXassignvariableop_11_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Ò
AssignVariableOp_12AssignVariableOpJassignvariableop_12_feed_forward_2_residual_10_conv_2d_36_conv2d_36_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13á
AssignVariableOp_13AssignVariableOpYassignvariableop_13_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14à
AssignVariableOp_14AssignVariableOpXassignvariableop_14_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ò
AssignVariableOp_15AssignVariableOpJassignvariableop_15_feed_forward_2_residual_11_conv_2d_37_conv2d_37_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16á
AssignVariableOp_16AssignVariableOpYassignvariableop_16_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17à
AssignVariableOp_17AssignVariableOpXassignvariableop_17_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ò
AssignVariableOp_18AssignVariableOpJassignvariableop_18_feed_forward_2_residual_11_conv_2d_38_conv2d_38_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19á
AssignVariableOp_19AssignVariableOpYassignvariableop_19_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_gammaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20à
AssignVariableOp_20AssignVariableOpXassignvariableop_20_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_betaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ò
AssignVariableOp_21AssignVariableOpJassignvariableop_21_feed_forward_2_residual_12_conv_2d_39_conv2d_39_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22á
AssignVariableOp_22AssignVariableOpYassignvariableop_22_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23à
AssignVariableOp_23AssignVariableOpXassignvariableop_23_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ò
AssignVariableOp_24AssignVariableOpJassignvariableop_24_feed_forward_2_residual_12_conv_2d_40_conv2d_40_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25á
AssignVariableOp_25AssignVariableOpYassignvariableop_25_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26à
AssignVariableOp_26AssignVariableOpXassignvariableop_26_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Ò
AssignVariableOp_27AssignVariableOpJassignvariableop_27_feed_forward_2_residual_13_conv_2d_41_conv2d_41_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28á
AssignVariableOp_28AssignVariableOpYassignvariableop_28_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_gammaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29à
AssignVariableOp_29AssignVariableOpXassignvariableop_29_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_betaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ò
AssignVariableOp_30AssignVariableOpJassignvariableop_30_feed_forward_2_residual_13_conv_2d_42_conv2d_42_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31á
AssignVariableOp_31AssignVariableOpYassignvariableop_31_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_gammaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32à
AssignVariableOp_32AssignVariableOpXassignvariableop_32_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_betaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Ò
AssignVariableOp_33AssignVariableOpJassignvariableop_33_feed_forward_2_residual_14_conv_2d_43_conv2d_43_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34á
AssignVariableOp_34AssignVariableOpYassignvariableop_34_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_gammaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35à
AssignVariableOp_35AssignVariableOpXassignvariableop_35_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_betaIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ò
AssignVariableOp_36AssignVariableOpJassignvariableop_36_feed_forward_2_residual_14_conv_2d_44_conv2d_44_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37á
AssignVariableOp_37AssignVariableOpYassignvariableop_37_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_gammaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38à
AssignVariableOp_38AssignVariableOpXassignvariableop_38_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_betaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39×
AssignVariableOp_39AssignVariableOpOassignvariableop_39_feed_forward_2_resize_conv_2d_4_conv_2d_45_conv2d_45_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40æ
AssignVariableOp_40AssignVariableOp^assignvariableop_40_feed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_gammaIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41å
AssignVariableOp_41AssignVariableOp]assignvariableop_41_feed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_betaIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42×
AssignVariableOp_42AssignVariableOpOassignvariableop_42_feed_forward_2_resize_conv_2d_5_conv_2d_46_conv2d_46_kernelIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43æ
AssignVariableOp_43AssignVariableOp^assignvariableop_43_feed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_gammaIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44å
AssignVariableOp_44AssignVariableOp]assignvariableop_44_feed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_betaIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Æ
AssignVariableOp_45AssignVariableOp>assignvariableop_45_feed_forward_2_conv_2d_47_conv2d_47_kernelIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46Õ
AssignVariableOp_46AssignVariableOpMassignvariableop_46_feed_forward_2_conv_2d_47_instance_normalization_53_gammaIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Ô
AssignVariableOp_47AssignVariableOpLassignvariableop_47_feed_forward_2_conv_2d_47_instance_normalization_53_betaIdentity_47:output:0"/device:CPU:0*
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
ð
Ú
-__inference_feed_forward_2_layer_call_fn_5857
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
H__inference_feed_forward_2_layer_call_and_return_conditional_losses_57232
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
æ

8__inference_instance_normalization_53_layer_call_fn_4606

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
S__inference_instance_normalization_53_layer_call_and_return_conditional_losses_45962
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
ê

8__inference_instance_normalization_46_layer_call_fn_4336

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
S__inference_instance_normalization_46_layer_call_and_return_conditional_losses_43262
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
S__inference_instance_normalization_44_layer_call_and_return_conditional_losses_4218

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
8__inference_instance_normalization_48_layer_call_fn_4444

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
S__inference_instance_normalization_48_layer_call_and_return_conditional_losses_44342
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
·

E__inference_residual_14_layer_call_and_return_conditional_losses_6732

inputs!
conv_2d_43_mirrorpad_paddings7
3conv_2d_43_conv2d_43_conv2d_readvariableop_resourceH
Dconv_2d_43_instance_normalization_47_reshape_readvariableop_resourceJ
Fconv_2d_43_instance_normalization_47_reshape_1_readvariableop_resource!
conv_2d_44_mirrorpad_paddings7
3conv_2d_44_conv2d_44_conv2d_readvariableop_resourceH
Dconv_2d_44_instance_normalization_48_reshape_readvariableop_resourceJ
Fconv_2d_44_instance_normalization_48_reshape_1_readvariableop_resource
identity¢*conv_2d_43/conv2d_43/Conv2D/ReadVariableOp¢;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp¢=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp¢*conv_2d_44/conv2d_44/Conv2D/ReadVariableOp¢;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp¢=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp°
conv_2d_43/MirrorPad	MirrorPadinputsconv_2d_43_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_43/MirrorPadÖ
*conv_2d_43/conv2d_43/Conv2D/ReadVariableOpReadVariableOp3conv_2d_43_conv2d_43_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_43/conv2d_43/Conv2D/ReadVariableOpý
conv_2d_43/conv2d_43/Conv2DConv2Dconv_2d_43/MirrorPad:output:02conv_2d_43/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_43/conv2d_43/Conv2D¬
*conv_2d_43/instance_normalization_47/ShapeShape$conv_2d_43/conv2d_43/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_43/instance_normalization_47/Shape¾
8conv_2d_43/instance_normalization_47/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_43/instance_normalization_47/strided_slice/stackÂ
:conv_2d_43/instance_normalization_47/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice/stack_1Â
:conv_2d_43/instance_normalization_47/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice/stack_2À
2conv_2d_43/instance_normalization_47/strided_sliceStridedSlice3conv_2d_43/instance_normalization_47/Shape:output:0Aconv_2d_43/instance_normalization_47/strided_slice/stack:output:0Cconv_2d_43/instance_normalization_47/strided_slice/stack_1:output:0Cconv_2d_43/instance_normalization_47/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_43/instance_normalization_47/strided_sliceÂ
:conv_2d_43/instance_normalization_47/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice_1/stackÆ
<conv_2d_43/instance_normalization_47/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_1/stack_1Æ
<conv_2d_43/instance_normalization_47/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_1/stack_2Ê
4conv_2d_43/instance_normalization_47/strided_slice_1StridedSlice3conv_2d_43/instance_normalization_47/Shape:output:0Cconv_2d_43/instance_normalization_47/strided_slice_1/stack:output:0Econv_2d_43/instance_normalization_47/strided_slice_1/stack_1:output:0Econv_2d_43/instance_normalization_47/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_43/instance_normalization_47/strided_slice_1Â
:conv_2d_43/instance_normalization_47/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice_2/stackÆ
<conv_2d_43/instance_normalization_47/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_2/stack_1Æ
<conv_2d_43/instance_normalization_47/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_2/stack_2Ê
4conv_2d_43/instance_normalization_47/strided_slice_2StridedSlice3conv_2d_43/instance_normalization_47/Shape:output:0Cconv_2d_43/instance_normalization_47/strided_slice_2/stack:output:0Econv_2d_43/instance_normalization_47/strided_slice_2/stack_1:output:0Econv_2d_43/instance_normalization_47/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_43/instance_normalization_47/strided_slice_2Â
:conv_2d_43/instance_normalization_47/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_43/instance_normalization_47/strided_slice_3/stackÆ
<conv_2d_43/instance_normalization_47/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_3/stack_1Æ
<conv_2d_43/instance_normalization_47/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_43/instance_normalization_47/strided_slice_3/stack_2Ê
4conv_2d_43/instance_normalization_47/strided_slice_3StridedSlice3conv_2d_43/instance_normalization_47/Shape:output:0Cconv_2d_43/instance_normalization_47/strided_slice_3/stack:output:0Econv_2d_43/instance_normalization_47/strided_slice_3/stack_1:output:0Econv_2d_43/instance_normalization_47/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_43/instance_normalization_47/strided_slice_3Û
Cconv_2d_43/instance_normalization_47/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_43/instance_normalization_47/moments/mean/reduction_indices®
1conv_2d_43/instance_normalization_47/moments/meanMean$conv_2d_43/conv2d_43/Conv2D:output:0Lconv_2d_43/instance_normalization_47/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_43/instance_normalization_47/moments/meaný
9conv_2d_43/instance_normalization_47/moments/StopGradientStopGradient:conv_2d_43/instance_normalization_47/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_43/instance_normalization_47/moments/StopGradient¼
>conv_2d_43/instance_normalization_47/moments/SquaredDifferenceSquaredDifference$conv_2d_43/conv2d_43/Conv2D:output:0Bconv_2d_43/instance_normalization_47/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_43/instance_normalization_47/moments/SquaredDifferenceã
Gconv_2d_43/instance_normalization_47/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_43/instance_normalization_47/moments/variance/reduction_indicesØ
5conv_2d_43/instance_normalization_47/moments/varianceMeanBconv_2d_43/instance_normalization_47/moments/SquaredDifference:z:0Pconv_2d_43/instance_normalization_47/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_43/instance_normalization_47/moments/varianceü
;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOpReadVariableOpDconv_2d_43_instance_normalization_47_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOpÁ
2conv_2d_43/instance_normalization_47/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_43/instance_normalization_47/Reshape/shape
,conv_2d_43/instance_normalization_47/ReshapeReshapeCconv_2d_43/instance_normalization_47/Reshape/ReadVariableOp:value:0;conv_2d_43/instance_normalization_47/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_43/instance_normalization_47/Reshape
=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_43_instance_normalization_47_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOpÅ
4conv_2d_43/instance_normalization_47/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_43/instance_normalization_47/Reshape_1/shape£
.conv_2d_43/instance_normalization_47/Reshape_1ReshapeEconv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp:value:0=conv_2d_43/instance_normalization_47/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_43/instance_normalization_47/Reshape_1±
4conv_2d_43/instance_normalization_47/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_43/instance_normalization_47/batchnorm/add/y«
2conv_2d_43/instance_normalization_47/batchnorm/addAddV2>conv_2d_43/instance_normalization_47/moments/variance:output:0=conv_2d_43/instance_normalization_47/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_43/instance_normalization_47/batchnorm/addè
4conv_2d_43/instance_normalization_47/batchnorm/RsqrtRsqrt6conv_2d_43/instance_normalization_47/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_43/instance_normalization_47/batchnorm/Rsqrt
2conv_2d_43/instance_normalization_47/batchnorm/mulMul8conv_2d_43/instance_normalization_47/batchnorm/Rsqrt:y:05conv_2d_43/instance_normalization_47/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_43/instance_normalization_47/batchnorm/mul
4conv_2d_43/instance_normalization_47/batchnorm/mul_1Mul$conv_2d_43/conv2d_43/Conv2D:output:06conv_2d_43/instance_normalization_47/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_43/instance_normalization_47/batchnorm/mul_1¢
4conv_2d_43/instance_normalization_47/batchnorm/mul_2Mul:conv_2d_43/instance_normalization_47/moments/mean:output:06conv_2d_43/instance_normalization_47/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_43/instance_normalization_47/batchnorm/mul_2
2conv_2d_43/instance_normalization_47/batchnorm/subSub7conv_2d_43/instance_normalization_47/Reshape_1:output:08conv_2d_43/instance_normalization_47/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_43/instance_normalization_47/batchnorm/sub¤
4conv_2d_43/instance_normalization_47/batchnorm/add_1AddV28conv_2d_43/instance_normalization_47/batchnorm/mul_1:z:06conv_2d_43/instance_normalization_47/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_43/instance_normalization_47/batchnorm/add_1¡
conv_2d_43/ReluRelu8conv_2d_43/instance_normalization_47/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_43/ReluÇ
conv_2d_44/MirrorPad	MirrorPadconv_2d_43/Relu:activations:0conv_2d_44_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_44/MirrorPadÖ
*conv_2d_44/conv2d_44/Conv2D/ReadVariableOpReadVariableOp3conv_2d_44_conv2d_44_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_44/conv2d_44/Conv2D/ReadVariableOpý
conv_2d_44/conv2d_44/Conv2DConv2Dconv_2d_44/MirrorPad:output:02conv_2d_44/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_44/conv2d_44/Conv2D¬
*conv_2d_44/instance_normalization_48/ShapeShape$conv_2d_44/conv2d_44/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_44/instance_normalization_48/Shape¾
8conv_2d_44/instance_normalization_48/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_44/instance_normalization_48/strided_slice/stackÂ
:conv_2d_44/instance_normalization_48/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice/stack_1Â
:conv_2d_44/instance_normalization_48/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice/stack_2À
2conv_2d_44/instance_normalization_48/strided_sliceStridedSlice3conv_2d_44/instance_normalization_48/Shape:output:0Aconv_2d_44/instance_normalization_48/strided_slice/stack:output:0Cconv_2d_44/instance_normalization_48/strided_slice/stack_1:output:0Cconv_2d_44/instance_normalization_48/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_44/instance_normalization_48/strided_sliceÂ
:conv_2d_44/instance_normalization_48/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice_1/stackÆ
<conv_2d_44/instance_normalization_48/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_1/stack_1Æ
<conv_2d_44/instance_normalization_48/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_1/stack_2Ê
4conv_2d_44/instance_normalization_48/strided_slice_1StridedSlice3conv_2d_44/instance_normalization_48/Shape:output:0Cconv_2d_44/instance_normalization_48/strided_slice_1/stack:output:0Econv_2d_44/instance_normalization_48/strided_slice_1/stack_1:output:0Econv_2d_44/instance_normalization_48/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_44/instance_normalization_48/strided_slice_1Â
:conv_2d_44/instance_normalization_48/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice_2/stackÆ
<conv_2d_44/instance_normalization_48/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_2/stack_1Æ
<conv_2d_44/instance_normalization_48/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_2/stack_2Ê
4conv_2d_44/instance_normalization_48/strided_slice_2StridedSlice3conv_2d_44/instance_normalization_48/Shape:output:0Cconv_2d_44/instance_normalization_48/strided_slice_2/stack:output:0Econv_2d_44/instance_normalization_48/strided_slice_2/stack_1:output:0Econv_2d_44/instance_normalization_48/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_44/instance_normalization_48/strided_slice_2Â
:conv_2d_44/instance_normalization_48/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_44/instance_normalization_48/strided_slice_3/stackÆ
<conv_2d_44/instance_normalization_48/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_3/stack_1Æ
<conv_2d_44/instance_normalization_48/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_44/instance_normalization_48/strided_slice_3/stack_2Ê
4conv_2d_44/instance_normalization_48/strided_slice_3StridedSlice3conv_2d_44/instance_normalization_48/Shape:output:0Cconv_2d_44/instance_normalization_48/strided_slice_3/stack:output:0Econv_2d_44/instance_normalization_48/strided_slice_3/stack_1:output:0Econv_2d_44/instance_normalization_48/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_44/instance_normalization_48/strided_slice_3Û
Cconv_2d_44/instance_normalization_48/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_44/instance_normalization_48/moments/mean/reduction_indices®
1conv_2d_44/instance_normalization_48/moments/meanMean$conv_2d_44/conv2d_44/Conv2D:output:0Lconv_2d_44/instance_normalization_48/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_44/instance_normalization_48/moments/meaný
9conv_2d_44/instance_normalization_48/moments/StopGradientStopGradient:conv_2d_44/instance_normalization_48/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_44/instance_normalization_48/moments/StopGradient¼
>conv_2d_44/instance_normalization_48/moments/SquaredDifferenceSquaredDifference$conv_2d_44/conv2d_44/Conv2D:output:0Bconv_2d_44/instance_normalization_48/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_44/instance_normalization_48/moments/SquaredDifferenceã
Gconv_2d_44/instance_normalization_48/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_44/instance_normalization_48/moments/variance/reduction_indicesØ
5conv_2d_44/instance_normalization_48/moments/varianceMeanBconv_2d_44/instance_normalization_48/moments/SquaredDifference:z:0Pconv_2d_44/instance_normalization_48/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_44/instance_normalization_48/moments/varianceü
;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOpReadVariableOpDconv_2d_44_instance_normalization_48_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOpÁ
2conv_2d_44/instance_normalization_48/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_44/instance_normalization_48/Reshape/shape
,conv_2d_44/instance_normalization_48/ReshapeReshapeCconv_2d_44/instance_normalization_48/Reshape/ReadVariableOp:value:0;conv_2d_44/instance_normalization_48/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_44/instance_normalization_48/Reshape
=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_44_instance_normalization_48_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOpÅ
4conv_2d_44/instance_normalization_48/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_44/instance_normalization_48/Reshape_1/shape£
.conv_2d_44/instance_normalization_48/Reshape_1ReshapeEconv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp:value:0=conv_2d_44/instance_normalization_48/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_44/instance_normalization_48/Reshape_1±
4conv_2d_44/instance_normalization_48/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_44/instance_normalization_48/batchnorm/add/y«
2conv_2d_44/instance_normalization_48/batchnorm/addAddV2>conv_2d_44/instance_normalization_48/moments/variance:output:0=conv_2d_44/instance_normalization_48/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_44/instance_normalization_48/batchnorm/addè
4conv_2d_44/instance_normalization_48/batchnorm/RsqrtRsqrt6conv_2d_44/instance_normalization_48/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_44/instance_normalization_48/batchnorm/Rsqrt
2conv_2d_44/instance_normalization_48/batchnorm/mulMul8conv_2d_44/instance_normalization_48/batchnorm/Rsqrt:y:05conv_2d_44/instance_normalization_48/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_44/instance_normalization_48/batchnorm/mul
4conv_2d_44/instance_normalization_48/batchnorm/mul_1Mul$conv_2d_44/conv2d_44/Conv2D:output:06conv_2d_44/instance_normalization_48/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_44/instance_normalization_48/batchnorm/mul_1¢
4conv_2d_44/instance_normalization_48/batchnorm/mul_2Mul:conv_2d_44/instance_normalization_48/moments/mean:output:06conv_2d_44/instance_normalization_48/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_44/instance_normalization_48/batchnorm/mul_2
2conv_2d_44/instance_normalization_48/batchnorm/subSub7conv_2d_44/instance_normalization_48/Reshape_1:output:08conv_2d_44/instance_normalization_48/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_44/instance_normalization_48/batchnorm/sub¤
4conv_2d_44/instance_normalization_48/batchnorm/add_1AddV28conv_2d_44/instance_normalization_48/batchnorm/mul_1:z:06conv_2d_44/instance_normalization_48/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_44/instance_normalization_48/batchnorm/add_1
addAddV2inputs8conv_2d_44/instance_normalization_48/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_43/conv2d_43/Conv2D/ReadVariableOp<^conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp>^conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp+^conv_2d_44/conv2d_44/Conv2D/ReadVariableOp<^conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp>^conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_43/conv2d_43/Conv2D/ReadVariableOp*conv_2d_43/conv2d_43/Conv2D/ReadVariableOp2z
;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp;conv_2d_43/instance_normalization_47/Reshape/ReadVariableOp2~
=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp=conv_2d_43/instance_normalization_47/Reshape_1/ReadVariableOp2X
*conv_2d_44/conv2d_44/Conv2D/ReadVariableOp*conv_2d_44/conv2d_44/Conv2D/ReadVariableOp2z
;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp;conv_2d_44/instance_normalization_48/Reshape/ReadVariableOp2~
=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp=conv_2d_44/instance_normalization_48/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
¤	
Ù
*__inference_residual_10_layer_call_fn_6293

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÏ
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
GPU2*0J 8 *N
fIRG
E__inference_residual_10_layer_call_and_return_conditional_losses_49232
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
ÂO
³
D__inference_conv_2d_47_layer_call_and_return_conditional_losses_5697

inputs
mirrorpad_paddings,
(conv2d_47_conv2d_readvariableop_resource=
9instance_normalization_53_reshape_readvariableop_resource?
;instance_normalization_53_reshape_1_readvariableop_resource
identity¢conv2d_47/Conv2D/ReadVariableOp¢0instance_normalization_53/Reshape/ReadVariableOp¢2instance_normalization_53/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð *
mode	REFLECT2
	MirrorPad³
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_47/Conv2D/ReadVariableOpÐ
conv2d_47/Conv2DConv2DMirrorPad:output:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè*
paddingVALID*
strides
2
conv2d_47/Conv2D
instance_normalization_53/ShapeShapeconv2d_47/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_53/Shape¨
-instance_normalization_53/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_53/strided_slice/stack¬
/instance_normalization_53/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice/stack_1¬
/instance_normalization_53/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice/stack_2þ
'instance_normalization_53/strided_sliceStridedSlice(instance_normalization_53/Shape:output:06instance_normalization_53/strided_slice/stack:output:08instance_normalization_53/strided_slice/stack_1:output:08instance_normalization_53/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_53/strided_slice¬
/instance_normalization_53/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice_1/stack°
1instance_normalization_53/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_1/stack_1°
1instance_normalization_53/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_1/stack_2
)instance_normalization_53/strided_slice_1StridedSlice(instance_normalization_53/Shape:output:08instance_normalization_53/strided_slice_1/stack:output:0:instance_normalization_53/strided_slice_1/stack_1:output:0:instance_normalization_53/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_53/strided_slice_1¬
/instance_normalization_53/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice_2/stack°
1instance_normalization_53/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_2/stack_1°
1instance_normalization_53/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_2/stack_2
)instance_normalization_53/strided_slice_2StridedSlice(instance_normalization_53/Shape:output:08instance_normalization_53/strided_slice_2/stack:output:0:instance_normalization_53/strided_slice_2/stack_1:output:0:instance_normalization_53/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_53/strided_slice_2¬
/instance_normalization_53/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_53/strided_slice_3/stack°
1instance_normalization_53/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_3/stack_1°
1instance_normalization_53/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_53/strided_slice_3/stack_2
)instance_normalization_53/strided_slice_3StridedSlice(instance_normalization_53/Shape:output:08instance_normalization_53/strided_slice_3/stack:output:0:instance_normalization_53/strided_slice_3/stack_1:output:0:instance_normalization_53/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_53/strided_slice_3Å
8instance_normalization_53/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_53/moments/mean/reduction_indices
&instance_normalization_53/moments/meanMeanconv2d_47/Conv2D:output:0Ainstance_normalization_53/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2(
&instance_normalization_53/moments/meanÛ
.instance_normalization_53/moments/StopGradientStopGradient/instance_normalization_53/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.instance_normalization_53/moments/StopGradient
3instance_normalization_53/moments/SquaredDifferenceSquaredDifferenceconv2d_47/Conv2D:output:07instance_normalization_53/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè25
3instance_normalization_53/moments/SquaredDifferenceÍ
<instance_normalization_53/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_53/moments/variance/reduction_indices«
*instance_normalization_53/moments/varianceMean7instance_normalization_53/moments/SquaredDifference:z:0Einstance_normalization_53/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2,
*instance_normalization_53/moments/varianceÚ
0instance_normalization_53/Reshape/ReadVariableOpReadVariableOp9instance_normalization_53_reshape_readvariableop_resource*
_output_shapes
:*
dtype022
0instance_normalization_53/Reshape/ReadVariableOp«
'instance_normalization_53/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'instance_normalization_53/Reshape/shapeî
!instance_normalization_53/ReshapeReshape8instance_normalization_53/Reshape/ReadVariableOp:value:00instance_normalization_53/Reshape/shape:output:0*
T0*&
_output_shapes
:2#
!instance_normalization_53/Reshapeà
2instance_normalization_53/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_53_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype024
2instance_normalization_53/Reshape_1/ReadVariableOp¯
)instance_normalization_53/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)instance_normalization_53/Reshape_1/shapeö
#instance_normalization_53/Reshape_1Reshape:instance_normalization_53/Reshape_1/ReadVariableOp:value:02instance_normalization_53/Reshape_1/shape:output:0*
T0*&
_output_shapes
:2%
#instance_normalization_53/Reshape_1
)instance_normalization_53/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_53/batchnorm/add/yþ
'instance_normalization_53/batchnorm/addAddV23instance_normalization_53/moments/variance:output:02instance_normalization_53/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_53/batchnorm/addÆ
)instance_normalization_53/batchnorm/RsqrtRsqrt+instance_normalization_53/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_53/batchnorm/Rsqrtî
'instance_normalization_53/batchnorm/mulMul-instance_normalization_53/batchnorm/Rsqrt:y:0*instance_normalization_53/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_53/batchnorm/mulá
)instance_normalization_53/batchnorm/mul_1Mulconv2d_47/Conv2D:output:0+instance_normalization_53/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2+
)instance_normalization_53/batchnorm/mul_1õ
)instance_normalization_53/batchnorm/mul_2Mul/instance_normalization_53/moments/mean:output:0+instance_normalization_53/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_53/batchnorm/mul_2ð
'instance_normalization_53/batchnorm/subSub,instance_normalization_53/Reshape_1:output:0-instance_normalization_53/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_53/batchnorm/sub÷
)instance_normalization_53/batchnorm/add_1AddV2-instance_normalization_53/batchnorm/mul_1:z:0+instance_normalization_53/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2+
)instance_normalization_53/batchnorm/add_1
IdentityIdentity-instance_normalization_53/batchnorm/add_1:z:0 ^conv2d_47/Conv2D/ReadVariableOp1^instance_normalization_53/Reshape/ReadVariableOp3^instance_normalization_53/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2d
0instance_normalization_53/Reshape/ReadVariableOp0instance_normalization_53/Reshape/ReadVariableOp2h
2instance_normalization_53/Reshape_1/ReadVariableOp2instance_normalization_53/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
ÿ
¢
/__inference_resize_conv_2d_5_layer_call_fn_6881

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
J__inference_resize_conv_2d_5_layer_call_and_return_conditional_losses_56252
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
¨P
³
D__inference_conv_2d_33_layer_call_and_return_conditional_losses_6103

inputs
mirrorpad_paddings,
(conv2d_33_conv2d_readvariableop_resource=
9instance_normalization_37_reshape_readvariableop_resource?
;instance_normalization_37_reshape_1_readvariableop_resource
identity¢conv2d_33/Conv2D/ReadVariableOp¢0instance_normalization_37/Reshape/ReadVariableOp¢2instance_normalization_37/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿêê *
mode	REFLECT2
	MirrorPad³
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_33/Conv2D/ReadVariableOpÐ
conv2d_33/Conv2DConv2DMirrorPad:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@*
paddingVALID*
strides
2
conv2d_33/Conv2D
instance_normalization_37/ShapeShapeconv2d_33/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_37/Shape¨
-instance_normalization_37/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_37/strided_slice/stack¬
/instance_normalization_37/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice/stack_1¬
/instance_normalization_37/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice/stack_2þ
'instance_normalization_37/strided_sliceStridedSlice(instance_normalization_37/Shape:output:06instance_normalization_37/strided_slice/stack:output:08instance_normalization_37/strided_slice/stack_1:output:08instance_normalization_37/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_37/strided_slice¬
/instance_normalization_37/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice_1/stack°
1instance_normalization_37/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_1/stack_1°
1instance_normalization_37/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_1/stack_2
)instance_normalization_37/strided_slice_1StridedSlice(instance_normalization_37/Shape:output:08instance_normalization_37/strided_slice_1/stack:output:0:instance_normalization_37/strided_slice_1/stack_1:output:0:instance_normalization_37/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_37/strided_slice_1¬
/instance_normalization_37/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice_2/stack°
1instance_normalization_37/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_2/stack_1°
1instance_normalization_37/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_2/stack_2
)instance_normalization_37/strided_slice_2StridedSlice(instance_normalization_37/Shape:output:08instance_normalization_37/strided_slice_2/stack:output:0:instance_normalization_37/strided_slice_2/stack_1:output:0:instance_normalization_37/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_37/strided_slice_2¬
/instance_normalization_37/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_37/strided_slice_3/stack°
1instance_normalization_37/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_3/stack_1°
1instance_normalization_37/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_37/strided_slice_3/stack_2
)instance_normalization_37/strided_slice_3StridedSlice(instance_normalization_37/Shape:output:08instance_normalization_37/strided_slice_3/stack:output:0:instance_normalization_37/strided_slice_3/stack_1:output:0:instance_normalization_37/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_37/strided_slice_3Å
8instance_normalization_37/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_37/moments/mean/reduction_indices
&instance_normalization_37/moments/meanMeanconv2d_33/Conv2D:output:0Ainstance_normalization_37/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2(
&instance_normalization_37/moments/meanÛ
.instance_normalization_37/moments/StopGradientStopGradient/instance_normalization_37/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@20
.instance_normalization_37/moments/StopGradient
3instance_normalization_37/moments/SquaredDifferenceSquaredDifferenceconv2d_33/Conv2D:output:07instance_normalization_37/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@25
3instance_normalization_37/moments/SquaredDifferenceÍ
<instance_normalization_37/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_37/moments/variance/reduction_indices«
*instance_normalization_37/moments/varianceMean7instance_normalization_37/moments/SquaredDifference:z:0Einstance_normalization_37/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
	keep_dims(2,
*instance_normalization_37/moments/varianceÚ
0instance_normalization_37/Reshape/ReadVariableOpReadVariableOp9instance_normalization_37_reshape_readvariableop_resource*
_output_shapes
:@*
dtype022
0instance_normalization_37/Reshape/ReadVariableOp«
'instance_normalization_37/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2)
'instance_normalization_37/Reshape/shapeî
!instance_normalization_37/ReshapeReshape8instance_normalization_37/Reshape/ReadVariableOp:value:00instance_normalization_37/Reshape/shape:output:0*
T0*&
_output_shapes
:@2#
!instance_normalization_37/Reshapeà
2instance_normalization_37/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_37_reshape_1_readvariableop_resource*
_output_shapes
:@*
dtype024
2instance_normalization_37/Reshape_1/ReadVariableOp¯
)instance_normalization_37/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   2+
)instance_normalization_37/Reshape_1/shapeö
#instance_normalization_37/Reshape_1Reshape:instance_normalization_37/Reshape_1/ReadVariableOp:value:02instance_normalization_37/Reshape_1/shape:output:0*
T0*&
_output_shapes
:@2%
#instance_normalization_37/Reshape_1
)instance_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_37/batchnorm/add/yþ
'instance_normalization_37/batchnorm/addAddV23instance_normalization_37/moments/variance:output:02instance_normalization_37/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_37/batchnorm/addÆ
)instance_normalization_37/batchnorm/RsqrtRsqrt+instance_normalization_37/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)instance_normalization_37/batchnorm/Rsqrtî
'instance_normalization_37/batchnorm/mulMul-instance_normalization_37/batchnorm/Rsqrt:y:0*instance_normalization_37/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_37/batchnorm/mulá
)instance_normalization_37/batchnorm/mul_1Mulconv2d_33/Conv2D:output:0+instance_normalization_37/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2+
)instance_normalization_37/batchnorm/mul_1õ
)instance_normalization_37/batchnorm/mul_2Mul/instance_normalization_37/moments/mean:output:0+instance_normalization_37/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2+
)instance_normalization_37/batchnorm/mul_2ð
'instance_normalization_37/batchnorm/subSub,instance_normalization_37/Reshape_1:output:0-instance_normalization_37/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2)
'instance_normalization_37/batchnorm/sub÷
)instance_normalization_37/batchnorm/add_1AddV2-instance_normalization_37/batchnorm/mul_1:z:0+instance_normalization_37/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2+
)instance_normalization_37/batchnorm/add_1
ReluRelu-instance_normalization_37/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2
Reluú
IdentityIdentityRelu:activations:0 ^conv2d_33/Conv2D/ReadVariableOp1^instance_normalization_37/Reshape/ReadVariableOp3^instance_normalization_37/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè ::::2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2d
0instance_normalization_37/Reshape/ReadVariableOp0instance_normalization_37/Reshape/ReadVariableOp2h
2instance_normalization_37/Reshape_1/ReadVariableOp2instance_normalization_37/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 
 
_user_specified_nameinputs:$ 

_output_shapes

:
²0
ò
S__inference_instance_normalization_42_layer_call_and_return_conditional_losses_4110

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
ÖR
¨
H__inference_feed_forward_2_layer_call_and_return_conditional_losses_5723
input_1
conv_2d_32_4674
conv_2d_32_4676
conv_2d_32_4678
conv_2d_32_4680
conv_2d_33_4747
conv_2d_33_4749
conv_2d_33_4751
conv_2d_33_4753
conv_2d_34_4820
conv_2d_34_4822
conv_2d_34_4824
conv_2d_34_4826
residual_10_4946
residual_10_4948
residual_10_4950
residual_10_4952
residual_10_4954
residual_10_4956
residual_10_4958
residual_10_4960
residual_11_5080
residual_11_5082
residual_11_5084
residual_11_5086
residual_11_5088
residual_11_5090
residual_11_5092
residual_11_5094
residual_12_5214
residual_12_5216
residual_12_5218
residual_12_5220
residual_12_5222
residual_12_5224
residual_12_5226
residual_12_5228
residual_13_5348
residual_13_5350
residual_13_5352
residual_13_5354
residual_13_5356
residual_13_5358
residual_13_5360
residual_13_5362
residual_14_5482
residual_14_5484
residual_14_5486
residual_14_5488
residual_14_5490
residual_14_5492
residual_14_5494
residual_14_5496
resize_conv_2d_4_5565
resize_conv_2d_4_5567
resize_conv_2d_4_5569
resize_conv_2d_4_5571
resize_conv_2d_5_5640
resize_conv_2d_5_5642
resize_conv_2d_5_5644
resize_conv_2d_5_5646
conv_2d_47_5712
conv_2d_47_5714
conv_2d_47_5716
conv_2d_47_5718
identity¢"conv_2d_32/StatefulPartitionedCall¢"conv_2d_33/StatefulPartitionedCall¢"conv_2d_34/StatefulPartitionedCall¢"conv_2d_47/StatefulPartitionedCall¢#residual_10/StatefulPartitionedCall¢#residual_11/StatefulPartitionedCall¢#residual_12/StatefulPartitionedCall¢#residual_13/StatefulPartitionedCall¢#residual_14/StatefulPartitionedCall¢(resize_conv_2d_4/StatefulPartitionedCall¢(resize_conv_2d_5/StatefulPartitionedCallË
"conv_2d_32/StatefulPartitionedCallStatefulPartitionedCallinput_1conv_2d_32_4674conv_2d_32_4676conv_2d_32_4678conv_2d_32_4680*
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
D__inference_conv_2d_32_layer_call_and_return_conditional_losses_46592$
"conv_2d_32/StatefulPartitionedCallï
"conv_2d_33/StatefulPartitionedCallStatefulPartitionedCall+conv_2d_32/StatefulPartitionedCall:output:0conv_2d_33_4747conv_2d_33_4749conv_2d_33_4751conv_2d_33_4753*
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
D__inference_conv_2d_33_layer_call_and_return_conditional_losses_47322$
"conv_2d_33/StatefulPartitionedCallð
"conv_2d_34/StatefulPartitionedCallStatefulPartitionedCall+conv_2d_33/StatefulPartitionedCall:output:0conv_2d_34_4820conv_2d_34_4822conv_2d_34_4824conv_2d_34_4826*
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
D__inference_conv_2d_34_layer_call_and_return_conditional_losses_48052$
"conv_2d_34/StatefulPartitionedCallÆ
#residual_10/StatefulPartitionedCallStatefulPartitionedCall+conv_2d_34/StatefulPartitionedCall:output:0residual_10_4946residual_10_4948residual_10_4950residual_10_4952residual_10_4954residual_10_4956residual_10_4958residual_10_4960*
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
GPU2*0J 8 *N
fIRG
E__inference_residual_10_layer_call_and_return_conditional_losses_49232%
#residual_10/StatefulPartitionedCallÇ
#residual_11/StatefulPartitionedCallStatefulPartitionedCall,residual_10/StatefulPartitionedCall:output:0residual_11_5080residual_11_5082residual_11_5084residual_11_5086residual_11_5088residual_11_5090residual_11_5092residual_11_5094*
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
GPU2*0J 8 *N
fIRG
E__inference_residual_11_layer_call_and_return_conditional_losses_50572%
#residual_11/StatefulPartitionedCallÇ
#residual_12/StatefulPartitionedCallStatefulPartitionedCall,residual_11/StatefulPartitionedCall:output:0residual_12_5214residual_12_5216residual_12_5218residual_12_5220residual_12_5222residual_12_5224residual_12_5226residual_12_5228*
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
GPU2*0J 8 *N
fIRG
E__inference_residual_12_layer_call_and_return_conditional_losses_51912%
#residual_12/StatefulPartitionedCallÇ
#residual_13/StatefulPartitionedCallStatefulPartitionedCall,residual_12/StatefulPartitionedCall:output:0residual_13_5348residual_13_5350residual_13_5352residual_13_5354residual_13_5356residual_13_5358residual_13_5360residual_13_5362*
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
GPU2*0J 8 *N
fIRG
E__inference_residual_13_layer_call_and_return_conditional_losses_53252%
#residual_13/StatefulPartitionedCallÇ
#residual_14/StatefulPartitionedCallStatefulPartitionedCall,residual_13/StatefulPartitionedCall:output:0residual_14_5482residual_14_5484residual_14_5486residual_14_5488residual_14_5490residual_14_5492residual_14_5494residual_14_5496*
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
GPU2*0J 8 *N
fIRG
E__inference_residual_14_layer_call_and_return_conditional_losses_54592%
#residual_14/StatefulPartitionedCall
(resize_conv_2d_4/StatefulPartitionedCallStatefulPartitionedCall,residual_14/StatefulPartitionedCall:output:0resize_conv_2d_4_5565resize_conv_2d_4_5567resize_conv_2d_4_5569resize_conv_2d_4_5571*
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
J__inference_resize_conv_2d_4_layer_call_and_return_conditional_losses_55502*
(resize_conv_2d_4/StatefulPartitionedCall
(resize_conv_2d_5/StatefulPartitionedCallStatefulPartitionedCall1resize_conv_2d_4/StatefulPartitionedCall:output:0resize_conv_2d_5_5640resize_conv_2d_5_5642resize_conv_2d_5_5644resize_conv_2d_5_5646*
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
J__inference_resize_conv_2d_5_layer_call_and_return_conditional_losses_56252*
(resize_conv_2d_5/StatefulPartitionedCallõ
"conv_2d_47/StatefulPartitionedCallStatefulPartitionedCall1resize_conv_2d_5/StatefulPartitionedCall:output:0conv_2d_47_5712conv_2d_47_5714conv_2d_47_5716conv_2d_47_5718*
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
D__inference_conv_2d_47_layer_call_and_return_conditional_losses_56972$
"conv_2d_47/StatefulPartitionedCall}
TanhTanh+conv_2d_47/StatefulPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2
Tanh
IdentityIdentityTanh:y:0#^conv_2d_32/StatefulPartitionedCall#^conv_2d_33/StatefulPartitionedCall#^conv_2d_34/StatefulPartitionedCall#^conv_2d_47/StatefulPartitionedCall$^residual_10/StatefulPartitionedCall$^residual_11/StatefulPartitionedCall$^residual_12/StatefulPartitionedCall$^residual_13/StatefulPartitionedCall$^residual_14/StatefulPartitionedCall)^resize_conv_2d_4/StatefulPartitionedCall)^resize_conv_2d_5/StatefulPartitionedCall*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè2

Identity"
identityIdentity:output:0*
_input_shapes
ý:ÿÿÿÿÿÿÿÿÿèè::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2H
"conv_2d_32/StatefulPartitionedCall"conv_2d_32/StatefulPartitionedCall2H
"conv_2d_33/StatefulPartitionedCall"conv_2d_33/StatefulPartitionedCall2H
"conv_2d_34/StatefulPartitionedCall"conv_2d_34/StatefulPartitionedCall2H
"conv_2d_47/StatefulPartitionedCall"conv_2d_47/StatefulPartitionedCall2J
#residual_10/StatefulPartitionedCall#residual_10/StatefulPartitionedCall2J
#residual_11/StatefulPartitionedCall#residual_11/StatefulPartitionedCall2J
#residual_12/StatefulPartitionedCall#residual_12/StatefulPartitionedCall2J
#residual_13/StatefulPartitionedCall#residual_13/StatefulPartitionedCall2J
#residual_14/StatefulPartitionedCall#residual_14/StatefulPartitionedCall2T
(resize_conv_2d_4/StatefulPartitionedCall(resize_conv_2d_4/StatefulPartitionedCall2T
(resize_conv_2d_5/StatefulPartitionedCall(resize_conv_2d_5/StatefulPartitionedCall:Z V
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
·

E__inference_residual_10_layer_call_and_return_conditional_losses_4923

inputs!
conv_2d_35_mirrorpad_paddings7
3conv_2d_35_conv2d_35_conv2d_readvariableop_resourceH
Dconv_2d_35_instance_normalization_39_reshape_readvariableop_resourceJ
Fconv_2d_35_instance_normalization_39_reshape_1_readvariableop_resource!
conv_2d_36_mirrorpad_paddings7
3conv_2d_36_conv2d_36_conv2d_readvariableop_resourceH
Dconv_2d_36_instance_normalization_40_reshape_readvariableop_resourceJ
Fconv_2d_36_instance_normalization_40_reshape_1_readvariableop_resource
identity¢*conv_2d_35/conv2d_35/Conv2D/ReadVariableOp¢;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp¢=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp¢*conv_2d_36/conv2d_36/Conv2D/ReadVariableOp¢;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp¢=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp°
conv_2d_35/MirrorPad	MirrorPadinputsconv_2d_35_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_35/MirrorPadÖ
*conv_2d_35/conv2d_35/Conv2D/ReadVariableOpReadVariableOp3conv_2d_35_conv2d_35_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_35/conv2d_35/Conv2D/ReadVariableOpý
conv_2d_35/conv2d_35/Conv2DConv2Dconv_2d_35/MirrorPad:output:02conv_2d_35/conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_35/conv2d_35/Conv2D¬
*conv_2d_35/instance_normalization_39/ShapeShape$conv_2d_35/conv2d_35/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_35/instance_normalization_39/Shape¾
8conv_2d_35/instance_normalization_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_35/instance_normalization_39/strided_slice/stackÂ
:conv_2d_35/instance_normalization_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice/stack_1Â
:conv_2d_35/instance_normalization_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice/stack_2À
2conv_2d_35/instance_normalization_39/strided_sliceStridedSlice3conv_2d_35/instance_normalization_39/Shape:output:0Aconv_2d_35/instance_normalization_39/strided_slice/stack:output:0Cconv_2d_35/instance_normalization_39/strided_slice/stack_1:output:0Cconv_2d_35/instance_normalization_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_35/instance_normalization_39/strided_sliceÂ
:conv_2d_35/instance_normalization_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice_1/stackÆ
<conv_2d_35/instance_normalization_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_1/stack_1Æ
<conv_2d_35/instance_normalization_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_1/stack_2Ê
4conv_2d_35/instance_normalization_39/strided_slice_1StridedSlice3conv_2d_35/instance_normalization_39/Shape:output:0Cconv_2d_35/instance_normalization_39/strided_slice_1/stack:output:0Econv_2d_35/instance_normalization_39/strided_slice_1/stack_1:output:0Econv_2d_35/instance_normalization_39/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_35/instance_normalization_39/strided_slice_1Â
:conv_2d_35/instance_normalization_39/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice_2/stackÆ
<conv_2d_35/instance_normalization_39/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_2/stack_1Æ
<conv_2d_35/instance_normalization_39/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_2/stack_2Ê
4conv_2d_35/instance_normalization_39/strided_slice_2StridedSlice3conv_2d_35/instance_normalization_39/Shape:output:0Cconv_2d_35/instance_normalization_39/strided_slice_2/stack:output:0Econv_2d_35/instance_normalization_39/strided_slice_2/stack_1:output:0Econv_2d_35/instance_normalization_39/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_35/instance_normalization_39/strided_slice_2Â
:conv_2d_35/instance_normalization_39/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice_3/stackÆ
<conv_2d_35/instance_normalization_39/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_3/stack_1Æ
<conv_2d_35/instance_normalization_39/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_3/stack_2Ê
4conv_2d_35/instance_normalization_39/strided_slice_3StridedSlice3conv_2d_35/instance_normalization_39/Shape:output:0Cconv_2d_35/instance_normalization_39/strided_slice_3/stack:output:0Econv_2d_35/instance_normalization_39/strided_slice_3/stack_1:output:0Econv_2d_35/instance_normalization_39/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_35/instance_normalization_39/strided_slice_3Û
Cconv_2d_35/instance_normalization_39/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_35/instance_normalization_39/moments/mean/reduction_indices®
1conv_2d_35/instance_normalization_39/moments/meanMean$conv_2d_35/conv2d_35/Conv2D:output:0Lconv_2d_35/instance_normalization_39/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_35/instance_normalization_39/moments/meaný
9conv_2d_35/instance_normalization_39/moments/StopGradientStopGradient:conv_2d_35/instance_normalization_39/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_35/instance_normalization_39/moments/StopGradient¼
>conv_2d_35/instance_normalization_39/moments/SquaredDifferenceSquaredDifference$conv_2d_35/conv2d_35/Conv2D:output:0Bconv_2d_35/instance_normalization_39/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_35/instance_normalization_39/moments/SquaredDifferenceã
Gconv_2d_35/instance_normalization_39/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_35/instance_normalization_39/moments/variance/reduction_indicesØ
5conv_2d_35/instance_normalization_39/moments/varianceMeanBconv_2d_35/instance_normalization_39/moments/SquaredDifference:z:0Pconv_2d_35/instance_normalization_39/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_35/instance_normalization_39/moments/varianceü
;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOpReadVariableOpDconv_2d_35_instance_normalization_39_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOpÁ
2conv_2d_35/instance_normalization_39/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_35/instance_normalization_39/Reshape/shape
,conv_2d_35/instance_normalization_39/ReshapeReshapeCconv_2d_35/instance_normalization_39/Reshape/ReadVariableOp:value:0;conv_2d_35/instance_normalization_39/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_35/instance_normalization_39/Reshape
=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_35_instance_normalization_39_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOpÅ
4conv_2d_35/instance_normalization_39/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_35/instance_normalization_39/Reshape_1/shape£
.conv_2d_35/instance_normalization_39/Reshape_1ReshapeEconv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp:value:0=conv_2d_35/instance_normalization_39/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_35/instance_normalization_39/Reshape_1±
4conv_2d_35/instance_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_35/instance_normalization_39/batchnorm/add/y«
2conv_2d_35/instance_normalization_39/batchnorm/addAddV2>conv_2d_35/instance_normalization_39/moments/variance:output:0=conv_2d_35/instance_normalization_39/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_35/instance_normalization_39/batchnorm/addè
4conv_2d_35/instance_normalization_39/batchnorm/RsqrtRsqrt6conv_2d_35/instance_normalization_39/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_35/instance_normalization_39/batchnorm/Rsqrt
2conv_2d_35/instance_normalization_39/batchnorm/mulMul8conv_2d_35/instance_normalization_39/batchnorm/Rsqrt:y:05conv_2d_35/instance_normalization_39/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_35/instance_normalization_39/batchnorm/mul
4conv_2d_35/instance_normalization_39/batchnorm/mul_1Mul$conv_2d_35/conv2d_35/Conv2D:output:06conv_2d_35/instance_normalization_39/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_35/instance_normalization_39/batchnorm/mul_1¢
4conv_2d_35/instance_normalization_39/batchnorm/mul_2Mul:conv_2d_35/instance_normalization_39/moments/mean:output:06conv_2d_35/instance_normalization_39/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_35/instance_normalization_39/batchnorm/mul_2
2conv_2d_35/instance_normalization_39/batchnorm/subSub7conv_2d_35/instance_normalization_39/Reshape_1:output:08conv_2d_35/instance_normalization_39/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_35/instance_normalization_39/batchnorm/sub¤
4conv_2d_35/instance_normalization_39/batchnorm/add_1AddV28conv_2d_35/instance_normalization_39/batchnorm/mul_1:z:06conv_2d_35/instance_normalization_39/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_35/instance_normalization_39/batchnorm/add_1¡
conv_2d_35/ReluRelu8conv_2d_35/instance_normalization_39/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_35/ReluÇ
conv_2d_36/MirrorPad	MirrorPadconv_2d_35/Relu:activations:0conv_2d_36_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_36/MirrorPadÖ
*conv_2d_36/conv2d_36/Conv2D/ReadVariableOpReadVariableOp3conv_2d_36_conv2d_36_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_36/conv2d_36/Conv2D/ReadVariableOpý
conv_2d_36/conv2d_36/Conv2DConv2Dconv_2d_36/MirrorPad:output:02conv_2d_36/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_36/conv2d_36/Conv2D¬
*conv_2d_36/instance_normalization_40/ShapeShape$conv_2d_36/conv2d_36/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_36/instance_normalization_40/Shape¾
8conv_2d_36/instance_normalization_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_36/instance_normalization_40/strided_slice/stackÂ
:conv_2d_36/instance_normalization_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice/stack_1Â
:conv_2d_36/instance_normalization_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice/stack_2À
2conv_2d_36/instance_normalization_40/strided_sliceStridedSlice3conv_2d_36/instance_normalization_40/Shape:output:0Aconv_2d_36/instance_normalization_40/strided_slice/stack:output:0Cconv_2d_36/instance_normalization_40/strided_slice/stack_1:output:0Cconv_2d_36/instance_normalization_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_36/instance_normalization_40/strided_sliceÂ
:conv_2d_36/instance_normalization_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice_1/stackÆ
<conv_2d_36/instance_normalization_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_1/stack_1Æ
<conv_2d_36/instance_normalization_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_1/stack_2Ê
4conv_2d_36/instance_normalization_40/strided_slice_1StridedSlice3conv_2d_36/instance_normalization_40/Shape:output:0Cconv_2d_36/instance_normalization_40/strided_slice_1/stack:output:0Econv_2d_36/instance_normalization_40/strided_slice_1/stack_1:output:0Econv_2d_36/instance_normalization_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_36/instance_normalization_40/strided_slice_1Â
:conv_2d_36/instance_normalization_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice_2/stackÆ
<conv_2d_36/instance_normalization_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_2/stack_1Æ
<conv_2d_36/instance_normalization_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_2/stack_2Ê
4conv_2d_36/instance_normalization_40/strided_slice_2StridedSlice3conv_2d_36/instance_normalization_40/Shape:output:0Cconv_2d_36/instance_normalization_40/strided_slice_2/stack:output:0Econv_2d_36/instance_normalization_40/strided_slice_2/stack_1:output:0Econv_2d_36/instance_normalization_40/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_36/instance_normalization_40/strided_slice_2Â
:conv_2d_36/instance_normalization_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice_3/stackÆ
<conv_2d_36/instance_normalization_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_3/stack_1Æ
<conv_2d_36/instance_normalization_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_3/stack_2Ê
4conv_2d_36/instance_normalization_40/strided_slice_3StridedSlice3conv_2d_36/instance_normalization_40/Shape:output:0Cconv_2d_36/instance_normalization_40/strided_slice_3/stack:output:0Econv_2d_36/instance_normalization_40/strided_slice_3/stack_1:output:0Econv_2d_36/instance_normalization_40/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_36/instance_normalization_40/strided_slice_3Û
Cconv_2d_36/instance_normalization_40/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_36/instance_normalization_40/moments/mean/reduction_indices®
1conv_2d_36/instance_normalization_40/moments/meanMean$conv_2d_36/conv2d_36/Conv2D:output:0Lconv_2d_36/instance_normalization_40/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_36/instance_normalization_40/moments/meaný
9conv_2d_36/instance_normalization_40/moments/StopGradientStopGradient:conv_2d_36/instance_normalization_40/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_36/instance_normalization_40/moments/StopGradient¼
>conv_2d_36/instance_normalization_40/moments/SquaredDifferenceSquaredDifference$conv_2d_36/conv2d_36/Conv2D:output:0Bconv_2d_36/instance_normalization_40/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_36/instance_normalization_40/moments/SquaredDifferenceã
Gconv_2d_36/instance_normalization_40/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_36/instance_normalization_40/moments/variance/reduction_indicesØ
5conv_2d_36/instance_normalization_40/moments/varianceMeanBconv_2d_36/instance_normalization_40/moments/SquaredDifference:z:0Pconv_2d_36/instance_normalization_40/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_36/instance_normalization_40/moments/varianceü
;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOpReadVariableOpDconv_2d_36_instance_normalization_40_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOpÁ
2conv_2d_36/instance_normalization_40/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_36/instance_normalization_40/Reshape/shape
,conv_2d_36/instance_normalization_40/ReshapeReshapeCconv_2d_36/instance_normalization_40/Reshape/ReadVariableOp:value:0;conv_2d_36/instance_normalization_40/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_36/instance_normalization_40/Reshape
=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_36_instance_normalization_40_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOpÅ
4conv_2d_36/instance_normalization_40/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_36/instance_normalization_40/Reshape_1/shape£
.conv_2d_36/instance_normalization_40/Reshape_1ReshapeEconv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp:value:0=conv_2d_36/instance_normalization_40/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_36/instance_normalization_40/Reshape_1±
4conv_2d_36/instance_normalization_40/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_36/instance_normalization_40/batchnorm/add/y«
2conv_2d_36/instance_normalization_40/batchnorm/addAddV2>conv_2d_36/instance_normalization_40/moments/variance:output:0=conv_2d_36/instance_normalization_40/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_36/instance_normalization_40/batchnorm/addè
4conv_2d_36/instance_normalization_40/batchnorm/RsqrtRsqrt6conv_2d_36/instance_normalization_40/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_36/instance_normalization_40/batchnorm/Rsqrt
2conv_2d_36/instance_normalization_40/batchnorm/mulMul8conv_2d_36/instance_normalization_40/batchnorm/Rsqrt:y:05conv_2d_36/instance_normalization_40/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_36/instance_normalization_40/batchnorm/mul
4conv_2d_36/instance_normalization_40/batchnorm/mul_1Mul$conv_2d_36/conv2d_36/Conv2D:output:06conv_2d_36/instance_normalization_40/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_36/instance_normalization_40/batchnorm/mul_1¢
4conv_2d_36/instance_normalization_40/batchnorm/mul_2Mul:conv_2d_36/instance_normalization_40/moments/mean:output:06conv_2d_36/instance_normalization_40/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_36/instance_normalization_40/batchnorm/mul_2
2conv_2d_36/instance_normalization_40/batchnorm/subSub7conv_2d_36/instance_normalization_40/Reshape_1:output:08conv_2d_36/instance_normalization_40/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_36/instance_normalization_40/batchnorm/sub¤
4conv_2d_36/instance_normalization_40/batchnorm/add_1AddV28conv_2d_36/instance_normalization_40/batchnorm/mul_1:z:06conv_2d_36/instance_normalization_40/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_36/instance_normalization_40/batchnorm/add_1
addAddV2inputs8conv_2d_36/instance_normalization_40/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_35/conv2d_35/Conv2D/ReadVariableOp<^conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp>^conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp+^conv_2d_36/conv2d_36/Conv2D/ReadVariableOp<^conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp>^conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_35/conv2d_35/Conv2D/ReadVariableOp*conv_2d_35/conv2d_35/Conv2D/ReadVariableOp2z
;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp2~
=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp2X
*conv_2d_36/conv2d_36/Conv2D/ReadVariableOp*conv_2d_36/conv2d_36/Conv2D/ReadVariableOp2z
;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp2~
=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp:Z V
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
8__inference_instance_normalization_42_layer_call_fn_4120

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
S__inference_instance_normalization_42_layer_call_and_return_conditional_losses_41102
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
 0
ò
S__inference_instance_normalization_51_layer_call_and_return_conditional_losses_4542

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
ê~
$
__inference__traced_save_7125
file_prefixI
Esavev2_feed_forward_2_conv_2d_32_conv2d_32_kernel_read_readvariableopX
Tsavev2_feed_forward_2_conv_2d_32_instance_normalization_36_gamma_read_readvariableopW
Ssavev2_feed_forward_2_conv_2d_32_instance_normalization_36_beta_read_readvariableopI
Esavev2_feed_forward_2_conv_2d_33_conv2d_33_kernel_read_readvariableopX
Tsavev2_feed_forward_2_conv_2d_33_instance_normalization_37_gamma_read_readvariableopW
Ssavev2_feed_forward_2_conv_2d_33_instance_normalization_37_beta_read_readvariableopI
Esavev2_feed_forward_2_conv_2d_34_conv2d_34_kernel_read_readvariableopX
Tsavev2_feed_forward_2_conv_2d_34_instance_normalization_38_gamma_read_readvariableopW
Ssavev2_feed_forward_2_conv_2d_34_instance_normalization_38_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_10_conv_2d_35_conv2d_35_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_10_conv_2d_36_conv2d_36_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_11_conv_2d_37_conv2d_37_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_11_conv_2d_38_conv2d_38_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_12_conv_2d_39_conv2d_39_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_12_conv_2d_40_conv2d_40_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_13_conv_2d_41_conv2d_41_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_13_conv_2d_42_conv2d_42_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_14_conv_2d_43_conv2d_43_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_beta_read_readvariableopU
Qsavev2_feed_forward_2_residual_14_conv_2d_44_conv2d_44_kernel_read_readvariableopd
`savev2_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_gamma_read_readvariableopc
_savev2_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_beta_read_readvariableopZ
Vsavev2_feed_forward_2_resize_conv_2d_4_conv_2d_45_conv2d_45_kernel_read_readvariableopi
esavev2_feed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_gamma_read_readvariableoph
dsavev2_feed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_beta_read_readvariableopZ
Vsavev2_feed_forward_2_resize_conv_2d_5_conv_2d_46_conv2d_46_kernel_read_readvariableopi
esavev2_feed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_gamma_read_readvariableoph
dsavev2_feed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_beta_read_readvariableopI
Esavev2_feed_forward_2_conv_2d_47_conv2d_47_kernel_read_readvariableopX
Tsavev2_feed_forward_2_conv_2d_47_instance_normalization_53_gamma_read_readvariableopW
Ssavev2_feed_forward_2_conv_2d_47_instance_normalization_53_beta_read_readvariableop
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
SaveV2/shape_and_slicesÛ#
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Esavev2_feed_forward_2_conv_2d_32_conv2d_32_kernel_read_readvariableopTsavev2_feed_forward_2_conv_2d_32_instance_normalization_36_gamma_read_readvariableopSsavev2_feed_forward_2_conv_2d_32_instance_normalization_36_beta_read_readvariableopEsavev2_feed_forward_2_conv_2d_33_conv2d_33_kernel_read_readvariableopTsavev2_feed_forward_2_conv_2d_33_instance_normalization_37_gamma_read_readvariableopSsavev2_feed_forward_2_conv_2d_33_instance_normalization_37_beta_read_readvariableopEsavev2_feed_forward_2_conv_2d_34_conv2d_34_kernel_read_readvariableopTsavev2_feed_forward_2_conv_2d_34_instance_normalization_38_gamma_read_readvariableopSsavev2_feed_forward_2_conv_2d_34_instance_normalization_38_beta_read_readvariableopQsavev2_feed_forward_2_residual_10_conv_2d_35_conv2d_35_kernel_read_readvariableop`savev2_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_gamma_read_readvariableop_savev2_feed_forward_2_residual_10_conv_2d_35_instance_normalization_39_beta_read_readvariableopQsavev2_feed_forward_2_residual_10_conv_2d_36_conv2d_36_kernel_read_readvariableop`savev2_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_gamma_read_readvariableop_savev2_feed_forward_2_residual_10_conv_2d_36_instance_normalization_40_beta_read_readvariableopQsavev2_feed_forward_2_residual_11_conv_2d_37_conv2d_37_kernel_read_readvariableop`savev2_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_gamma_read_readvariableop_savev2_feed_forward_2_residual_11_conv_2d_37_instance_normalization_41_beta_read_readvariableopQsavev2_feed_forward_2_residual_11_conv_2d_38_conv2d_38_kernel_read_readvariableop`savev2_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_gamma_read_readvariableop_savev2_feed_forward_2_residual_11_conv_2d_38_instance_normalization_42_beta_read_readvariableopQsavev2_feed_forward_2_residual_12_conv_2d_39_conv2d_39_kernel_read_readvariableop`savev2_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_gamma_read_readvariableop_savev2_feed_forward_2_residual_12_conv_2d_39_instance_normalization_43_beta_read_readvariableopQsavev2_feed_forward_2_residual_12_conv_2d_40_conv2d_40_kernel_read_readvariableop`savev2_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_gamma_read_readvariableop_savev2_feed_forward_2_residual_12_conv_2d_40_instance_normalization_44_beta_read_readvariableopQsavev2_feed_forward_2_residual_13_conv_2d_41_conv2d_41_kernel_read_readvariableop`savev2_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_gamma_read_readvariableop_savev2_feed_forward_2_residual_13_conv_2d_41_instance_normalization_45_beta_read_readvariableopQsavev2_feed_forward_2_residual_13_conv_2d_42_conv2d_42_kernel_read_readvariableop`savev2_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_gamma_read_readvariableop_savev2_feed_forward_2_residual_13_conv_2d_42_instance_normalization_46_beta_read_readvariableopQsavev2_feed_forward_2_residual_14_conv_2d_43_conv2d_43_kernel_read_readvariableop`savev2_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_gamma_read_readvariableop_savev2_feed_forward_2_residual_14_conv_2d_43_instance_normalization_47_beta_read_readvariableopQsavev2_feed_forward_2_residual_14_conv_2d_44_conv2d_44_kernel_read_readvariableop`savev2_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_gamma_read_readvariableop_savev2_feed_forward_2_residual_14_conv_2d_44_instance_normalization_48_beta_read_readvariableopVsavev2_feed_forward_2_resize_conv_2d_4_conv_2d_45_conv2d_45_kernel_read_readvariableopesavev2_feed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_gamma_read_readvariableopdsavev2_feed_forward_2_resize_conv_2d_4_conv_2d_45_instance_normalization_49_beta_read_readvariableopVsavev2_feed_forward_2_resize_conv_2d_5_conv_2d_46_conv2d_46_kernel_read_readvariableopesavev2_feed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_gamma_read_readvariableopdsavev2_feed_forward_2_resize_conv_2d_5_conv_2d_46_instance_normalization_51_beta_read_readvariableopEsavev2_feed_forward_2_conv_2d_47_conv2d_47_kernel_read_readvariableopTsavev2_feed_forward_2_conv_2d_47_instance_normalization_53_gamma_read_readvariableopSsavev2_feed_forward_2_conv_2d_47_instance_normalization_53_beta_read_readvariableopsavev2_const_16"/device:CPU:0*
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
¨P
³
D__inference_conv_2d_32_layer_call_and_return_conditional_losses_4659

inputs
mirrorpad_paddings,
(conv2d_32_conv2d_readvariableop_resource=
9instance_normalization_36_reshape_readvariableop_resource?
;instance_normalization_36_reshape_1_readvariableop_resource
identity¢conv2d_32/Conv2D/ReadVariableOp¢0instance_normalization_36/Reshape/ReadVariableOp¢2instance_normalization_36/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿðð*
mode	REFLECT2
	MirrorPad³
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:		 *
dtype02!
conv2d_32/Conv2D/ReadVariableOpÐ
conv2d_32/Conv2DConv2DMirrorPad:output:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2
conv2d_32/Conv2D
instance_normalization_36/ShapeShapeconv2d_32/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_36/Shape¨
-instance_normalization_36/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_36/strided_slice/stack¬
/instance_normalization_36/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice/stack_1¬
/instance_normalization_36/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice/stack_2þ
'instance_normalization_36/strided_sliceStridedSlice(instance_normalization_36/Shape:output:06instance_normalization_36/strided_slice/stack:output:08instance_normalization_36/strided_slice/stack_1:output:08instance_normalization_36/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_36/strided_slice¬
/instance_normalization_36/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice_1/stack°
1instance_normalization_36/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_1/stack_1°
1instance_normalization_36/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_1/stack_2
)instance_normalization_36/strided_slice_1StridedSlice(instance_normalization_36/Shape:output:08instance_normalization_36/strided_slice_1/stack:output:0:instance_normalization_36/strided_slice_1/stack_1:output:0:instance_normalization_36/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_36/strided_slice_1¬
/instance_normalization_36/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice_2/stack°
1instance_normalization_36/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_2/stack_1°
1instance_normalization_36/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_2/stack_2
)instance_normalization_36/strided_slice_2StridedSlice(instance_normalization_36/Shape:output:08instance_normalization_36/strided_slice_2/stack:output:0:instance_normalization_36/strided_slice_2/stack_1:output:0:instance_normalization_36/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_36/strided_slice_2¬
/instance_normalization_36/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_36/strided_slice_3/stack°
1instance_normalization_36/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_3/stack_1°
1instance_normalization_36/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_36/strided_slice_3/stack_2
)instance_normalization_36/strided_slice_3StridedSlice(instance_normalization_36/Shape:output:08instance_normalization_36/strided_slice_3/stack:output:0:instance_normalization_36/strided_slice_3/stack_1:output:0:instance_normalization_36/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_36/strided_slice_3Å
8instance_normalization_36/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_36/moments/mean/reduction_indices
&instance_normalization_36/moments/meanMeanconv2d_32/Conv2D:output:0Ainstance_normalization_36/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2(
&instance_normalization_36/moments/meanÛ
.instance_normalization_36/moments/StopGradientStopGradient/instance_normalization_36/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.instance_normalization_36/moments/StopGradient
3instance_normalization_36/moments/SquaredDifferenceSquaredDifferenceconv2d_32/Conv2D:output:07instance_normalization_36/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 25
3instance_normalization_36/moments/SquaredDifferenceÍ
<instance_normalization_36/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_36/moments/variance/reduction_indices«
*instance_normalization_36/moments/varianceMean7instance_normalization_36/moments/SquaredDifference:z:0Einstance_normalization_36/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(2,
*instance_normalization_36/moments/varianceÚ
0instance_normalization_36/Reshape/ReadVariableOpReadVariableOp9instance_normalization_36_reshape_readvariableop_resource*
_output_shapes
: *
dtype022
0instance_normalization_36/Reshape/ReadVariableOp«
'instance_normalization_36/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2)
'instance_normalization_36/Reshape/shapeî
!instance_normalization_36/ReshapeReshape8instance_normalization_36/Reshape/ReadVariableOp:value:00instance_normalization_36/Reshape/shape:output:0*
T0*&
_output_shapes
: 2#
!instance_normalization_36/Reshapeà
2instance_normalization_36/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_36_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype024
2instance_normalization_36/Reshape_1/ReadVariableOp¯
)instance_normalization_36/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             2+
)instance_normalization_36/Reshape_1/shapeö
#instance_normalization_36/Reshape_1Reshape:instance_normalization_36/Reshape_1/ReadVariableOp:value:02instance_normalization_36/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 2%
#instance_normalization_36/Reshape_1
)instance_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_36/batchnorm/add/yþ
'instance_normalization_36/batchnorm/addAddV23instance_normalization_36/moments/variance:output:02instance_normalization_36/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_36/batchnorm/addÆ
)instance_normalization_36/batchnorm/RsqrtRsqrt+instance_normalization_36/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)instance_normalization_36/batchnorm/Rsqrtî
'instance_normalization_36/batchnorm/mulMul-instance_normalization_36/batchnorm/Rsqrt:y:0*instance_normalization_36/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_36/batchnorm/mulá
)instance_normalization_36/batchnorm/mul_1Mulconv2d_32/Conv2D:output:0+instance_normalization_36/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2+
)instance_normalization_36/batchnorm/mul_1õ
)instance_normalization_36/batchnorm/mul_2Mul/instance_normalization_36/moments/mean:output:0+instance_normalization_36/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)instance_normalization_36/batchnorm/mul_2ð
'instance_normalization_36/batchnorm/subSub,instance_normalization_36/Reshape_1:output:0-instance_normalization_36/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2)
'instance_normalization_36/batchnorm/sub÷
)instance_normalization_36/batchnorm/add_1AddV2-instance_normalization_36/batchnorm/mul_1:z:0+instance_normalization_36/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2+
)instance_normalization_36/batchnorm/add_1
ReluRelu-instance_normalization_36/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2
Reluú
IdentityIdentityRelu:activations:0 ^conv2d_32/Conv2D/ReadVariableOp1^instance_normalization_36/Reshape/ReadVariableOp3^instance_normalization_36/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿèè::::2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2d
0instance_normalization_36/Reshape/ReadVariableOp0instance_normalization_36/Reshape/ReadVariableOp2h
2instance_normalization_36/Reshape_1/ReadVariableOp2instance_normalization_36/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè
 
_user_specified_nameinputs:$ 

_output_shapes

:
·

E__inference_residual_10_layer_call_and_return_conditional_losses_6272

inputs!
conv_2d_35_mirrorpad_paddings7
3conv_2d_35_conv2d_35_conv2d_readvariableop_resourceH
Dconv_2d_35_instance_normalization_39_reshape_readvariableop_resourceJ
Fconv_2d_35_instance_normalization_39_reshape_1_readvariableop_resource!
conv_2d_36_mirrorpad_paddings7
3conv_2d_36_conv2d_36_conv2d_readvariableop_resourceH
Dconv_2d_36_instance_normalization_40_reshape_readvariableop_resourceJ
Fconv_2d_36_instance_normalization_40_reshape_1_readvariableop_resource
identity¢*conv_2d_35/conv2d_35/Conv2D/ReadVariableOp¢;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp¢=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp¢*conv_2d_36/conv2d_36/Conv2D/ReadVariableOp¢;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp¢=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp°
conv_2d_35/MirrorPad	MirrorPadinputsconv_2d_35_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_35/MirrorPadÖ
*conv_2d_35/conv2d_35/Conv2D/ReadVariableOpReadVariableOp3conv_2d_35_conv2d_35_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_35/conv2d_35/Conv2D/ReadVariableOpý
conv_2d_35/conv2d_35/Conv2DConv2Dconv_2d_35/MirrorPad:output:02conv_2d_35/conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_35/conv2d_35/Conv2D¬
*conv_2d_35/instance_normalization_39/ShapeShape$conv_2d_35/conv2d_35/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_35/instance_normalization_39/Shape¾
8conv_2d_35/instance_normalization_39/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_35/instance_normalization_39/strided_slice/stackÂ
:conv_2d_35/instance_normalization_39/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice/stack_1Â
:conv_2d_35/instance_normalization_39/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice/stack_2À
2conv_2d_35/instance_normalization_39/strided_sliceStridedSlice3conv_2d_35/instance_normalization_39/Shape:output:0Aconv_2d_35/instance_normalization_39/strided_slice/stack:output:0Cconv_2d_35/instance_normalization_39/strided_slice/stack_1:output:0Cconv_2d_35/instance_normalization_39/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_35/instance_normalization_39/strided_sliceÂ
:conv_2d_35/instance_normalization_39/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice_1/stackÆ
<conv_2d_35/instance_normalization_39/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_1/stack_1Æ
<conv_2d_35/instance_normalization_39/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_1/stack_2Ê
4conv_2d_35/instance_normalization_39/strided_slice_1StridedSlice3conv_2d_35/instance_normalization_39/Shape:output:0Cconv_2d_35/instance_normalization_39/strided_slice_1/stack:output:0Econv_2d_35/instance_normalization_39/strided_slice_1/stack_1:output:0Econv_2d_35/instance_normalization_39/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_35/instance_normalization_39/strided_slice_1Â
:conv_2d_35/instance_normalization_39/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice_2/stackÆ
<conv_2d_35/instance_normalization_39/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_2/stack_1Æ
<conv_2d_35/instance_normalization_39/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_2/stack_2Ê
4conv_2d_35/instance_normalization_39/strided_slice_2StridedSlice3conv_2d_35/instance_normalization_39/Shape:output:0Cconv_2d_35/instance_normalization_39/strided_slice_2/stack:output:0Econv_2d_35/instance_normalization_39/strided_slice_2/stack_1:output:0Econv_2d_35/instance_normalization_39/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_35/instance_normalization_39/strided_slice_2Â
:conv_2d_35/instance_normalization_39/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_35/instance_normalization_39/strided_slice_3/stackÆ
<conv_2d_35/instance_normalization_39/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_3/stack_1Æ
<conv_2d_35/instance_normalization_39/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_35/instance_normalization_39/strided_slice_3/stack_2Ê
4conv_2d_35/instance_normalization_39/strided_slice_3StridedSlice3conv_2d_35/instance_normalization_39/Shape:output:0Cconv_2d_35/instance_normalization_39/strided_slice_3/stack:output:0Econv_2d_35/instance_normalization_39/strided_slice_3/stack_1:output:0Econv_2d_35/instance_normalization_39/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_35/instance_normalization_39/strided_slice_3Û
Cconv_2d_35/instance_normalization_39/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_35/instance_normalization_39/moments/mean/reduction_indices®
1conv_2d_35/instance_normalization_39/moments/meanMean$conv_2d_35/conv2d_35/Conv2D:output:0Lconv_2d_35/instance_normalization_39/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_35/instance_normalization_39/moments/meaný
9conv_2d_35/instance_normalization_39/moments/StopGradientStopGradient:conv_2d_35/instance_normalization_39/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_35/instance_normalization_39/moments/StopGradient¼
>conv_2d_35/instance_normalization_39/moments/SquaredDifferenceSquaredDifference$conv_2d_35/conv2d_35/Conv2D:output:0Bconv_2d_35/instance_normalization_39/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_35/instance_normalization_39/moments/SquaredDifferenceã
Gconv_2d_35/instance_normalization_39/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_35/instance_normalization_39/moments/variance/reduction_indicesØ
5conv_2d_35/instance_normalization_39/moments/varianceMeanBconv_2d_35/instance_normalization_39/moments/SquaredDifference:z:0Pconv_2d_35/instance_normalization_39/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_35/instance_normalization_39/moments/varianceü
;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOpReadVariableOpDconv_2d_35_instance_normalization_39_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOpÁ
2conv_2d_35/instance_normalization_39/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_35/instance_normalization_39/Reshape/shape
,conv_2d_35/instance_normalization_39/ReshapeReshapeCconv_2d_35/instance_normalization_39/Reshape/ReadVariableOp:value:0;conv_2d_35/instance_normalization_39/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_35/instance_normalization_39/Reshape
=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_35_instance_normalization_39_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOpÅ
4conv_2d_35/instance_normalization_39/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_35/instance_normalization_39/Reshape_1/shape£
.conv_2d_35/instance_normalization_39/Reshape_1ReshapeEconv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp:value:0=conv_2d_35/instance_normalization_39/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_35/instance_normalization_39/Reshape_1±
4conv_2d_35/instance_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_35/instance_normalization_39/batchnorm/add/y«
2conv_2d_35/instance_normalization_39/batchnorm/addAddV2>conv_2d_35/instance_normalization_39/moments/variance:output:0=conv_2d_35/instance_normalization_39/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_35/instance_normalization_39/batchnorm/addè
4conv_2d_35/instance_normalization_39/batchnorm/RsqrtRsqrt6conv_2d_35/instance_normalization_39/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_35/instance_normalization_39/batchnorm/Rsqrt
2conv_2d_35/instance_normalization_39/batchnorm/mulMul8conv_2d_35/instance_normalization_39/batchnorm/Rsqrt:y:05conv_2d_35/instance_normalization_39/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_35/instance_normalization_39/batchnorm/mul
4conv_2d_35/instance_normalization_39/batchnorm/mul_1Mul$conv_2d_35/conv2d_35/Conv2D:output:06conv_2d_35/instance_normalization_39/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_35/instance_normalization_39/batchnorm/mul_1¢
4conv_2d_35/instance_normalization_39/batchnorm/mul_2Mul:conv_2d_35/instance_normalization_39/moments/mean:output:06conv_2d_35/instance_normalization_39/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_35/instance_normalization_39/batchnorm/mul_2
2conv_2d_35/instance_normalization_39/batchnorm/subSub7conv_2d_35/instance_normalization_39/Reshape_1:output:08conv_2d_35/instance_normalization_39/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_35/instance_normalization_39/batchnorm/sub¤
4conv_2d_35/instance_normalization_39/batchnorm/add_1AddV28conv_2d_35/instance_normalization_39/batchnorm/mul_1:z:06conv_2d_35/instance_normalization_39/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_35/instance_normalization_39/batchnorm/add_1¡
conv_2d_35/ReluRelu8conv_2d_35/instance_normalization_39/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_35/ReluÇ
conv_2d_36/MirrorPad	MirrorPadconv_2d_35/Relu:activations:0conv_2d_36_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_36/MirrorPadÖ
*conv_2d_36/conv2d_36/Conv2D/ReadVariableOpReadVariableOp3conv_2d_36_conv2d_36_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_36/conv2d_36/Conv2D/ReadVariableOpý
conv_2d_36/conv2d_36/Conv2DConv2Dconv_2d_36/MirrorPad:output:02conv_2d_36/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_36/conv2d_36/Conv2D¬
*conv_2d_36/instance_normalization_40/ShapeShape$conv_2d_36/conv2d_36/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_36/instance_normalization_40/Shape¾
8conv_2d_36/instance_normalization_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_36/instance_normalization_40/strided_slice/stackÂ
:conv_2d_36/instance_normalization_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice/stack_1Â
:conv_2d_36/instance_normalization_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice/stack_2À
2conv_2d_36/instance_normalization_40/strided_sliceStridedSlice3conv_2d_36/instance_normalization_40/Shape:output:0Aconv_2d_36/instance_normalization_40/strided_slice/stack:output:0Cconv_2d_36/instance_normalization_40/strided_slice/stack_1:output:0Cconv_2d_36/instance_normalization_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_36/instance_normalization_40/strided_sliceÂ
:conv_2d_36/instance_normalization_40/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice_1/stackÆ
<conv_2d_36/instance_normalization_40/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_1/stack_1Æ
<conv_2d_36/instance_normalization_40/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_1/stack_2Ê
4conv_2d_36/instance_normalization_40/strided_slice_1StridedSlice3conv_2d_36/instance_normalization_40/Shape:output:0Cconv_2d_36/instance_normalization_40/strided_slice_1/stack:output:0Econv_2d_36/instance_normalization_40/strided_slice_1/stack_1:output:0Econv_2d_36/instance_normalization_40/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_36/instance_normalization_40/strided_slice_1Â
:conv_2d_36/instance_normalization_40/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice_2/stackÆ
<conv_2d_36/instance_normalization_40/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_2/stack_1Æ
<conv_2d_36/instance_normalization_40/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_2/stack_2Ê
4conv_2d_36/instance_normalization_40/strided_slice_2StridedSlice3conv_2d_36/instance_normalization_40/Shape:output:0Cconv_2d_36/instance_normalization_40/strided_slice_2/stack:output:0Econv_2d_36/instance_normalization_40/strided_slice_2/stack_1:output:0Econv_2d_36/instance_normalization_40/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_36/instance_normalization_40/strided_slice_2Â
:conv_2d_36/instance_normalization_40/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_36/instance_normalization_40/strided_slice_3/stackÆ
<conv_2d_36/instance_normalization_40/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_3/stack_1Æ
<conv_2d_36/instance_normalization_40/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_36/instance_normalization_40/strided_slice_3/stack_2Ê
4conv_2d_36/instance_normalization_40/strided_slice_3StridedSlice3conv_2d_36/instance_normalization_40/Shape:output:0Cconv_2d_36/instance_normalization_40/strided_slice_3/stack:output:0Econv_2d_36/instance_normalization_40/strided_slice_3/stack_1:output:0Econv_2d_36/instance_normalization_40/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_36/instance_normalization_40/strided_slice_3Û
Cconv_2d_36/instance_normalization_40/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_36/instance_normalization_40/moments/mean/reduction_indices®
1conv_2d_36/instance_normalization_40/moments/meanMean$conv_2d_36/conv2d_36/Conv2D:output:0Lconv_2d_36/instance_normalization_40/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_36/instance_normalization_40/moments/meaný
9conv_2d_36/instance_normalization_40/moments/StopGradientStopGradient:conv_2d_36/instance_normalization_40/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_36/instance_normalization_40/moments/StopGradient¼
>conv_2d_36/instance_normalization_40/moments/SquaredDifferenceSquaredDifference$conv_2d_36/conv2d_36/Conv2D:output:0Bconv_2d_36/instance_normalization_40/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_36/instance_normalization_40/moments/SquaredDifferenceã
Gconv_2d_36/instance_normalization_40/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_36/instance_normalization_40/moments/variance/reduction_indicesØ
5conv_2d_36/instance_normalization_40/moments/varianceMeanBconv_2d_36/instance_normalization_40/moments/SquaredDifference:z:0Pconv_2d_36/instance_normalization_40/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_36/instance_normalization_40/moments/varianceü
;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOpReadVariableOpDconv_2d_36_instance_normalization_40_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOpÁ
2conv_2d_36/instance_normalization_40/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_36/instance_normalization_40/Reshape/shape
,conv_2d_36/instance_normalization_40/ReshapeReshapeCconv_2d_36/instance_normalization_40/Reshape/ReadVariableOp:value:0;conv_2d_36/instance_normalization_40/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_36/instance_normalization_40/Reshape
=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_36_instance_normalization_40_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOpÅ
4conv_2d_36/instance_normalization_40/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_36/instance_normalization_40/Reshape_1/shape£
.conv_2d_36/instance_normalization_40/Reshape_1ReshapeEconv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp:value:0=conv_2d_36/instance_normalization_40/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_36/instance_normalization_40/Reshape_1±
4conv_2d_36/instance_normalization_40/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_36/instance_normalization_40/batchnorm/add/y«
2conv_2d_36/instance_normalization_40/batchnorm/addAddV2>conv_2d_36/instance_normalization_40/moments/variance:output:0=conv_2d_36/instance_normalization_40/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_36/instance_normalization_40/batchnorm/addè
4conv_2d_36/instance_normalization_40/batchnorm/RsqrtRsqrt6conv_2d_36/instance_normalization_40/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_36/instance_normalization_40/batchnorm/Rsqrt
2conv_2d_36/instance_normalization_40/batchnorm/mulMul8conv_2d_36/instance_normalization_40/batchnorm/Rsqrt:y:05conv_2d_36/instance_normalization_40/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_36/instance_normalization_40/batchnorm/mul
4conv_2d_36/instance_normalization_40/batchnorm/mul_1Mul$conv_2d_36/conv2d_36/Conv2D:output:06conv_2d_36/instance_normalization_40/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_36/instance_normalization_40/batchnorm/mul_1¢
4conv_2d_36/instance_normalization_40/batchnorm/mul_2Mul:conv_2d_36/instance_normalization_40/moments/mean:output:06conv_2d_36/instance_normalization_40/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_36/instance_normalization_40/batchnorm/mul_2
2conv_2d_36/instance_normalization_40/batchnorm/subSub7conv_2d_36/instance_normalization_40/Reshape_1:output:08conv_2d_36/instance_normalization_40/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_36/instance_normalization_40/batchnorm/sub¤
4conv_2d_36/instance_normalization_40/batchnorm/add_1AddV28conv_2d_36/instance_normalization_40/batchnorm/mul_1:z:06conv_2d_36/instance_normalization_40/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_36/instance_normalization_40/batchnorm/add_1
addAddV2inputs8conv_2d_36/instance_normalization_40/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_35/conv2d_35/Conv2D/ReadVariableOp<^conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp>^conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp+^conv_2d_36/conv2d_36/Conv2D/ReadVariableOp<^conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp>^conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_35/conv2d_35/Conv2D/ReadVariableOp*conv_2d_35/conv2d_35/Conv2D/ReadVariableOp2z
;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp;conv_2d_35/instance_normalization_39/Reshape/ReadVariableOp2~
=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp=conv_2d_35/instance_normalization_39/Reshape_1/ReadVariableOp2X
*conv_2d_36/conv2d_36/Conv2D/ReadVariableOp*conv_2d_36/conv2d_36/Conv2D/ReadVariableOp2z
;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp;conv_2d_36/instance_normalization_40/Reshape/ReadVariableOp2~
=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp=conv_2d_36/instance_normalization_40/Reshape_1/ReadVariableOp:Z V
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
S__inference_instance_normalization_47_layer_call_and_return_conditional_losses_4380

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
·

E__inference_residual_11_layer_call_and_return_conditional_losses_5057

inputs!
conv_2d_37_mirrorpad_paddings7
3conv_2d_37_conv2d_37_conv2d_readvariableop_resourceH
Dconv_2d_37_instance_normalization_41_reshape_readvariableop_resourceJ
Fconv_2d_37_instance_normalization_41_reshape_1_readvariableop_resource!
conv_2d_38_mirrorpad_paddings7
3conv_2d_38_conv2d_38_conv2d_readvariableop_resourceH
Dconv_2d_38_instance_normalization_42_reshape_readvariableop_resourceJ
Fconv_2d_38_instance_normalization_42_reshape_1_readvariableop_resource
identity¢*conv_2d_37/conv2d_37/Conv2D/ReadVariableOp¢;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp¢=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp¢*conv_2d_38/conv2d_38/Conv2D/ReadVariableOp¢;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp¢=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp°
conv_2d_37/MirrorPad	MirrorPadinputsconv_2d_37_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_37/MirrorPadÖ
*conv_2d_37/conv2d_37/Conv2D/ReadVariableOpReadVariableOp3conv_2d_37_conv2d_37_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_37/conv2d_37/Conv2D/ReadVariableOpý
conv_2d_37/conv2d_37/Conv2DConv2Dconv_2d_37/MirrorPad:output:02conv_2d_37/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_37/conv2d_37/Conv2D¬
*conv_2d_37/instance_normalization_41/ShapeShape$conv_2d_37/conv2d_37/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_37/instance_normalization_41/Shape¾
8conv_2d_37/instance_normalization_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_37/instance_normalization_41/strided_slice/stackÂ
:conv_2d_37/instance_normalization_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice/stack_1Â
:conv_2d_37/instance_normalization_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice/stack_2À
2conv_2d_37/instance_normalization_41/strided_sliceStridedSlice3conv_2d_37/instance_normalization_41/Shape:output:0Aconv_2d_37/instance_normalization_41/strided_slice/stack:output:0Cconv_2d_37/instance_normalization_41/strided_slice/stack_1:output:0Cconv_2d_37/instance_normalization_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_37/instance_normalization_41/strided_sliceÂ
:conv_2d_37/instance_normalization_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice_1/stackÆ
<conv_2d_37/instance_normalization_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_1/stack_1Æ
<conv_2d_37/instance_normalization_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_1/stack_2Ê
4conv_2d_37/instance_normalization_41/strided_slice_1StridedSlice3conv_2d_37/instance_normalization_41/Shape:output:0Cconv_2d_37/instance_normalization_41/strided_slice_1/stack:output:0Econv_2d_37/instance_normalization_41/strided_slice_1/stack_1:output:0Econv_2d_37/instance_normalization_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_37/instance_normalization_41/strided_slice_1Â
:conv_2d_37/instance_normalization_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice_2/stackÆ
<conv_2d_37/instance_normalization_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_2/stack_1Æ
<conv_2d_37/instance_normalization_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_2/stack_2Ê
4conv_2d_37/instance_normalization_41/strided_slice_2StridedSlice3conv_2d_37/instance_normalization_41/Shape:output:0Cconv_2d_37/instance_normalization_41/strided_slice_2/stack:output:0Econv_2d_37/instance_normalization_41/strided_slice_2/stack_1:output:0Econv_2d_37/instance_normalization_41/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_37/instance_normalization_41/strided_slice_2Â
:conv_2d_37/instance_normalization_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice_3/stackÆ
<conv_2d_37/instance_normalization_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_3/stack_1Æ
<conv_2d_37/instance_normalization_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_3/stack_2Ê
4conv_2d_37/instance_normalization_41/strided_slice_3StridedSlice3conv_2d_37/instance_normalization_41/Shape:output:0Cconv_2d_37/instance_normalization_41/strided_slice_3/stack:output:0Econv_2d_37/instance_normalization_41/strided_slice_3/stack_1:output:0Econv_2d_37/instance_normalization_41/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_37/instance_normalization_41/strided_slice_3Û
Cconv_2d_37/instance_normalization_41/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_37/instance_normalization_41/moments/mean/reduction_indices®
1conv_2d_37/instance_normalization_41/moments/meanMean$conv_2d_37/conv2d_37/Conv2D:output:0Lconv_2d_37/instance_normalization_41/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_37/instance_normalization_41/moments/meaný
9conv_2d_37/instance_normalization_41/moments/StopGradientStopGradient:conv_2d_37/instance_normalization_41/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_37/instance_normalization_41/moments/StopGradient¼
>conv_2d_37/instance_normalization_41/moments/SquaredDifferenceSquaredDifference$conv_2d_37/conv2d_37/Conv2D:output:0Bconv_2d_37/instance_normalization_41/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_37/instance_normalization_41/moments/SquaredDifferenceã
Gconv_2d_37/instance_normalization_41/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_37/instance_normalization_41/moments/variance/reduction_indicesØ
5conv_2d_37/instance_normalization_41/moments/varianceMeanBconv_2d_37/instance_normalization_41/moments/SquaredDifference:z:0Pconv_2d_37/instance_normalization_41/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_37/instance_normalization_41/moments/varianceü
;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOpReadVariableOpDconv_2d_37_instance_normalization_41_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOpÁ
2conv_2d_37/instance_normalization_41/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_37/instance_normalization_41/Reshape/shape
,conv_2d_37/instance_normalization_41/ReshapeReshapeCconv_2d_37/instance_normalization_41/Reshape/ReadVariableOp:value:0;conv_2d_37/instance_normalization_41/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_37/instance_normalization_41/Reshape
=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_37_instance_normalization_41_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOpÅ
4conv_2d_37/instance_normalization_41/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_37/instance_normalization_41/Reshape_1/shape£
.conv_2d_37/instance_normalization_41/Reshape_1ReshapeEconv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp:value:0=conv_2d_37/instance_normalization_41/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_37/instance_normalization_41/Reshape_1±
4conv_2d_37/instance_normalization_41/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_37/instance_normalization_41/batchnorm/add/y«
2conv_2d_37/instance_normalization_41/batchnorm/addAddV2>conv_2d_37/instance_normalization_41/moments/variance:output:0=conv_2d_37/instance_normalization_41/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_37/instance_normalization_41/batchnorm/addè
4conv_2d_37/instance_normalization_41/batchnorm/RsqrtRsqrt6conv_2d_37/instance_normalization_41/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_37/instance_normalization_41/batchnorm/Rsqrt
2conv_2d_37/instance_normalization_41/batchnorm/mulMul8conv_2d_37/instance_normalization_41/batchnorm/Rsqrt:y:05conv_2d_37/instance_normalization_41/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_37/instance_normalization_41/batchnorm/mul
4conv_2d_37/instance_normalization_41/batchnorm/mul_1Mul$conv_2d_37/conv2d_37/Conv2D:output:06conv_2d_37/instance_normalization_41/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_37/instance_normalization_41/batchnorm/mul_1¢
4conv_2d_37/instance_normalization_41/batchnorm/mul_2Mul:conv_2d_37/instance_normalization_41/moments/mean:output:06conv_2d_37/instance_normalization_41/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_37/instance_normalization_41/batchnorm/mul_2
2conv_2d_37/instance_normalization_41/batchnorm/subSub7conv_2d_37/instance_normalization_41/Reshape_1:output:08conv_2d_37/instance_normalization_41/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_37/instance_normalization_41/batchnorm/sub¤
4conv_2d_37/instance_normalization_41/batchnorm/add_1AddV28conv_2d_37/instance_normalization_41/batchnorm/mul_1:z:06conv_2d_37/instance_normalization_41/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_37/instance_normalization_41/batchnorm/add_1¡
conv_2d_37/ReluRelu8conv_2d_37/instance_normalization_41/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_37/ReluÇ
conv_2d_38/MirrorPad	MirrorPadconv_2d_37/Relu:activations:0conv_2d_38_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_38/MirrorPadÖ
*conv_2d_38/conv2d_38/Conv2D/ReadVariableOpReadVariableOp3conv_2d_38_conv2d_38_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_38/conv2d_38/Conv2D/ReadVariableOpý
conv_2d_38/conv2d_38/Conv2DConv2Dconv_2d_38/MirrorPad:output:02conv_2d_38/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_38/conv2d_38/Conv2D¬
*conv_2d_38/instance_normalization_42/ShapeShape$conv_2d_38/conv2d_38/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_38/instance_normalization_42/Shape¾
8conv_2d_38/instance_normalization_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_38/instance_normalization_42/strided_slice/stackÂ
:conv_2d_38/instance_normalization_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice/stack_1Â
:conv_2d_38/instance_normalization_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice/stack_2À
2conv_2d_38/instance_normalization_42/strided_sliceStridedSlice3conv_2d_38/instance_normalization_42/Shape:output:0Aconv_2d_38/instance_normalization_42/strided_slice/stack:output:0Cconv_2d_38/instance_normalization_42/strided_slice/stack_1:output:0Cconv_2d_38/instance_normalization_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_38/instance_normalization_42/strided_sliceÂ
:conv_2d_38/instance_normalization_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice_1/stackÆ
<conv_2d_38/instance_normalization_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_1/stack_1Æ
<conv_2d_38/instance_normalization_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_1/stack_2Ê
4conv_2d_38/instance_normalization_42/strided_slice_1StridedSlice3conv_2d_38/instance_normalization_42/Shape:output:0Cconv_2d_38/instance_normalization_42/strided_slice_1/stack:output:0Econv_2d_38/instance_normalization_42/strided_slice_1/stack_1:output:0Econv_2d_38/instance_normalization_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_38/instance_normalization_42/strided_slice_1Â
:conv_2d_38/instance_normalization_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice_2/stackÆ
<conv_2d_38/instance_normalization_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_2/stack_1Æ
<conv_2d_38/instance_normalization_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_2/stack_2Ê
4conv_2d_38/instance_normalization_42/strided_slice_2StridedSlice3conv_2d_38/instance_normalization_42/Shape:output:0Cconv_2d_38/instance_normalization_42/strided_slice_2/stack:output:0Econv_2d_38/instance_normalization_42/strided_slice_2/stack_1:output:0Econv_2d_38/instance_normalization_42/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_38/instance_normalization_42/strided_slice_2Â
:conv_2d_38/instance_normalization_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice_3/stackÆ
<conv_2d_38/instance_normalization_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_3/stack_1Æ
<conv_2d_38/instance_normalization_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_3/stack_2Ê
4conv_2d_38/instance_normalization_42/strided_slice_3StridedSlice3conv_2d_38/instance_normalization_42/Shape:output:0Cconv_2d_38/instance_normalization_42/strided_slice_3/stack:output:0Econv_2d_38/instance_normalization_42/strided_slice_3/stack_1:output:0Econv_2d_38/instance_normalization_42/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_38/instance_normalization_42/strided_slice_3Û
Cconv_2d_38/instance_normalization_42/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_38/instance_normalization_42/moments/mean/reduction_indices®
1conv_2d_38/instance_normalization_42/moments/meanMean$conv_2d_38/conv2d_38/Conv2D:output:0Lconv_2d_38/instance_normalization_42/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_38/instance_normalization_42/moments/meaný
9conv_2d_38/instance_normalization_42/moments/StopGradientStopGradient:conv_2d_38/instance_normalization_42/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_38/instance_normalization_42/moments/StopGradient¼
>conv_2d_38/instance_normalization_42/moments/SquaredDifferenceSquaredDifference$conv_2d_38/conv2d_38/Conv2D:output:0Bconv_2d_38/instance_normalization_42/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_38/instance_normalization_42/moments/SquaredDifferenceã
Gconv_2d_38/instance_normalization_42/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_38/instance_normalization_42/moments/variance/reduction_indicesØ
5conv_2d_38/instance_normalization_42/moments/varianceMeanBconv_2d_38/instance_normalization_42/moments/SquaredDifference:z:0Pconv_2d_38/instance_normalization_42/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_38/instance_normalization_42/moments/varianceü
;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOpReadVariableOpDconv_2d_38_instance_normalization_42_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOpÁ
2conv_2d_38/instance_normalization_42/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_38/instance_normalization_42/Reshape/shape
,conv_2d_38/instance_normalization_42/ReshapeReshapeCconv_2d_38/instance_normalization_42/Reshape/ReadVariableOp:value:0;conv_2d_38/instance_normalization_42/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_38/instance_normalization_42/Reshape
=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_38_instance_normalization_42_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOpÅ
4conv_2d_38/instance_normalization_42/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_38/instance_normalization_42/Reshape_1/shape£
.conv_2d_38/instance_normalization_42/Reshape_1ReshapeEconv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp:value:0=conv_2d_38/instance_normalization_42/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_38/instance_normalization_42/Reshape_1±
4conv_2d_38/instance_normalization_42/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_38/instance_normalization_42/batchnorm/add/y«
2conv_2d_38/instance_normalization_42/batchnorm/addAddV2>conv_2d_38/instance_normalization_42/moments/variance:output:0=conv_2d_38/instance_normalization_42/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_38/instance_normalization_42/batchnorm/addè
4conv_2d_38/instance_normalization_42/batchnorm/RsqrtRsqrt6conv_2d_38/instance_normalization_42/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_38/instance_normalization_42/batchnorm/Rsqrt
2conv_2d_38/instance_normalization_42/batchnorm/mulMul8conv_2d_38/instance_normalization_42/batchnorm/Rsqrt:y:05conv_2d_38/instance_normalization_42/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_38/instance_normalization_42/batchnorm/mul
4conv_2d_38/instance_normalization_42/batchnorm/mul_1Mul$conv_2d_38/conv2d_38/Conv2D:output:06conv_2d_38/instance_normalization_42/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_38/instance_normalization_42/batchnorm/mul_1¢
4conv_2d_38/instance_normalization_42/batchnorm/mul_2Mul:conv_2d_38/instance_normalization_42/moments/mean:output:06conv_2d_38/instance_normalization_42/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_38/instance_normalization_42/batchnorm/mul_2
2conv_2d_38/instance_normalization_42/batchnorm/subSub7conv_2d_38/instance_normalization_42/Reshape_1:output:08conv_2d_38/instance_normalization_42/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_38/instance_normalization_42/batchnorm/sub¤
4conv_2d_38/instance_normalization_42/batchnorm/add_1AddV28conv_2d_38/instance_normalization_42/batchnorm/mul_1:z:06conv_2d_38/instance_normalization_42/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_38/instance_normalization_42/batchnorm/add_1
addAddV2inputs8conv_2d_38/instance_normalization_42/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_37/conv2d_37/Conv2D/ReadVariableOp<^conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp>^conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp+^conv_2d_38/conv2d_38/Conv2D/ReadVariableOp<^conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp>^conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_37/conv2d_37/Conv2D/ReadVariableOp*conv_2d_37/conv2d_37/Conv2D/ReadVariableOp2z
;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp2~
=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp2X
*conv_2d_38/conv2d_38/Conv2D/ReadVariableOp*conv_2d_38/conv2d_38/Conv2D/ReadVariableOp2z
;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp2~
=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
·

E__inference_residual_13_layer_call_and_return_conditional_losses_6617

inputs!
conv_2d_41_mirrorpad_paddings7
3conv_2d_41_conv2d_41_conv2d_readvariableop_resourceH
Dconv_2d_41_instance_normalization_45_reshape_readvariableop_resourceJ
Fconv_2d_41_instance_normalization_45_reshape_1_readvariableop_resource!
conv_2d_42_mirrorpad_paddings7
3conv_2d_42_conv2d_42_conv2d_readvariableop_resourceH
Dconv_2d_42_instance_normalization_46_reshape_readvariableop_resourceJ
Fconv_2d_42_instance_normalization_46_reshape_1_readvariableop_resource
identity¢*conv_2d_41/conv2d_41/Conv2D/ReadVariableOp¢;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp¢=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp¢*conv_2d_42/conv2d_42/Conv2D/ReadVariableOp¢;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp¢=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp°
conv_2d_41/MirrorPad	MirrorPadinputsconv_2d_41_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_41/MirrorPadÖ
*conv_2d_41/conv2d_41/Conv2D/ReadVariableOpReadVariableOp3conv_2d_41_conv2d_41_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_41/conv2d_41/Conv2D/ReadVariableOpý
conv_2d_41/conv2d_41/Conv2DConv2Dconv_2d_41/MirrorPad:output:02conv_2d_41/conv2d_41/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_41/conv2d_41/Conv2D¬
*conv_2d_41/instance_normalization_45/ShapeShape$conv_2d_41/conv2d_41/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_41/instance_normalization_45/Shape¾
8conv_2d_41/instance_normalization_45/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_41/instance_normalization_45/strided_slice/stackÂ
:conv_2d_41/instance_normalization_45/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice/stack_1Â
:conv_2d_41/instance_normalization_45/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice/stack_2À
2conv_2d_41/instance_normalization_45/strided_sliceStridedSlice3conv_2d_41/instance_normalization_45/Shape:output:0Aconv_2d_41/instance_normalization_45/strided_slice/stack:output:0Cconv_2d_41/instance_normalization_45/strided_slice/stack_1:output:0Cconv_2d_41/instance_normalization_45/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_41/instance_normalization_45/strided_sliceÂ
:conv_2d_41/instance_normalization_45/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice_1/stackÆ
<conv_2d_41/instance_normalization_45/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_1/stack_1Æ
<conv_2d_41/instance_normalization_45/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_1/stack_2Ê
4conv_2d_41/instance_normalization_45/strided_slice_1StridedSlice3conv_2d_41/instance_normalization_45/Shape:output:0Cconv_2d_41/instance_normalization_45/strided_slice_1/stack:output:0Econv_2d_41/instance_normalization_45/strided_slice_1/stack_1:output:0Econv_2d_41/instance_normalization_45/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_41/instance_normalization_45/strided_slice_1Â
:conv_2d_41/instance_normalization_45/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice_2/stackÆ
<conv_2d_41/instance_normalization_45/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_2/stack_1Æ
<conv_2d_41/instance_normalization_45/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_2/stack_2Ê
4conv_2d_41/instance_normalization_45/strided_slice_2StridedSlice3conv_2d_41/instance_normalization_45/Shape:output:0Cconv_2d_41/instance_normalization_45/strided_slice_2/stack:output:0Econv_2d_41/instance_normalization_45/strided_slice_2/stack_1:output:0Econv_2d_41/instance_normalization_45/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_41/instance_normalization_45/strided_slice_2Â
:conv_2d_41/instance_normalization_45/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_41/instance_normalization_45/strided_slice_3/stackÆ
<conv_2d_41/instance_normalization_45/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_3/stack_1Æ
<conv_2d_41/instance_normalization_45/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_41/instance_normalization_45/strided_slice_3/stack_2Ê
4conv_2d_41/instance_normalization_45/strided_slice_3StridedSlice3conv_2d_41/instance_normalization_45/Shape:output:0Cconv_2d_41/instance_normalization_45/strided_slice_3/stack:output:0Econv_2d_41/instance_normalization_45/strided_slice_3/stack_1:output:0Econv_2d_41/instance_normalization_45/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_41/instance_normalization_45/strided_slice_3Û
Cconv_2d_41/instance_normalization_45/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_41/instance_normalization_45/moments/mean/reduction_indices®
1conv_2d_41/instance_normalization_45/moments/meanMean$conv_2d_41/conv2d_41/Conv2D:output:0Lconv_2d_41/instance_normalization_45/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_41/instance_normalization_45/moments/meaný
9conv_2d_41/instance_normalization_45/moments/StopGradientStopGradient:conv_2d_41/instance_normalization_45/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_41/instance_normalization_45/moments/StopGradient¼
>conv_2d_41/instance_normalization_45/moments/SquaredDifferenceSquaredDifference$conv_2d_41/conv2d_41/Conv2D:output:0Bconv_2d_41/instance_normalization_45/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_41/instance_normalization_45/moments/SquaredDifferenceã
Gconv_2d_41/instance_normalization_45/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_41/instance_normalization_45/moments/variance/reduction_indicesØ
5conv_2d_41/instance_normalization_45/moments/varianceMeanBconv_2d_41/instance_normalization_45/moments/SquaredDifference:z:0Pconv_2d_41/instance_normalization_45/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_41/instance_normalization_45/moments/varianceü
;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOpReadVariableOpDconv_2d_41_instance_normalization_45_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOpÁ
2conv_2d_41/instance_normalization_45/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_41/instance_normalization_45/Reshape/shape
,conv_2d_41/instance_normalization_45/ReshapeReshapeCconv_2d_41/instance_normalization_45/Reshape/ReadVariableOp:value:0;conv_2d_41/instance_normalization_45/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_41/instance_normalization_45/Reshape
=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_41_instance_normalization_45_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOpÅ
4conv_2d_41/instance_normalization_45/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_41/instance_normalization_45/Reshape_1/shape£
.conv_2d_41/instance_normalization_45/Reshape_1ReshapeEconv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp:value:0=conv_2d_41/instance_normalization_45/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_41/instance_normalization_45/Reshape_1±
4conv_2d_41/instance_normalization_45/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_41/instance_normalization_45/batchnorm/add/y«
2conv_2d_41/instance_normalization_45/batchnorm/addAddV2>conv_2d_41/instance_normalization_45/moments/variance:output:0=conv_2d_41/instance_normalization_45/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_41/instance_normalization_45/batchnorm/addè
4conv_2d_41/instance_normalization_45/batchnorm/RsqrtRsqrt6conv_2d_41/instance_normalization_45/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_41/instance_normalization_45/batchnorm/Rsqrt
2conv_2d_41/instance_normalization_45/batchnorm/mulMul8conv_2d_41/instance_normalization_45/batchnorm/Rsqrt:y:05conv_2d_41/instance_normalization_45/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_41/instance_normalization_45/batchnorm/mul
4conv_2d_41/instance_normalization_45/batchnorm/mul_1Mul$conv_2d_41/conv2d_41/Conv2D:output:06conv_2d_41/instance_normalization_45/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_41/instance_normalization_45/batchnorm/mul_1¢
4conv_2d_41/instance_normalization_45/batchnorm/mul_2Mul:conv_2d_41/instance_normalization_45/moments/mean:output:06conv_2d_41/instance_normalization_45/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_41/instance_normalization_45/batchnorm/mul_2
2conv_2d_41/instance_normalization_45/batchnorm/subSub7conv_2d_41/instance_normalization_45/Reshape_1:output:08conv_2d_41/instance_normalization_45/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_41/instance_normalization_45/batchnorm/sub¤
4conv_2d_41/instance_normalization_45/batchnorm/add_1AddV28conv_2d_41/instance_normalization_45/batchnorm/mul_1:z:06conv_2d_41/instance_normalization_45/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_41/instance_normalization_45/batchnorm/add_1¡
conv_2d_41/ReluRelu8conv_2d_41/instance_normalization_45/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_41/ReluÇ
conv_2d_42/MirrorPad	MirrorPadconv_2d_41/Relu:activations:0conv_2d_42_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_42/MirrorPadÖ
*conv_2d_42/conv2d_42/Conv2D/ReadVariableOpReadVariableOp3conv_2d_42_conv2d_42_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_42/conv2d_42/Conv2D/ReadVariableOpý
conv_2d_42/conv2d_42/Conv2DConv2Dconv_2d_42/MirrorPad:output:02conv_2d_42/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_42/conv2d_42/Conv2D¬
*conv_2d_42/instance_normalization_46/ShapeShape$conv_2d_42/conv2d_42/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_42/instance_normalization_46/Shape¾
8conv_2d_42/instance_normalization_46/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_42/instance_normalization_46/strided_slice/stackÂ
:conv_2d_42/instance_normalization_46/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice/stack_1Â
:conv_2d_42/instance_normalization_46/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice/stack_2À
2conv_2d_42/instance_normalization_46/strided_sliceStridedSlice3conv_2d_42/instance_normalization_46/Shape:output:0Aconv_2d_42/instance_normalization_46/strided_slice/stack:output:0Cconv_2d_42/instance_normalization_46/strided_slice/stack_1:output:0Cconv_2d_42/instance_normalization_46/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_42/instance_normalization_46/strided_sliceÂ
:conv_2d_42/instance_normalization_46/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice_1/stackÆ
<conv_2d_42/instance_normalization_46/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_1/stack_1Æ
<conv_2d_42/instance_normalization_46/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_1/stack_2Ê
4conv_2d_42/instance_normalization_46/strided_slice_1StridedSlice3conv_2d_42/instance_normalization_46/Shape:output:0Cconv_2d_42/instance_normalization_46/strided_slice_1/stack:output:0Econv_2d_42/instance_normalization_46/strided_slice_1/stack_1:output:0Econv_2d_42/instance_normalization_46/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_42/instance_normalization_46/strided_slice_1Â
:conv_2d_42/instance_normalization_46/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice_2/stackÆ
<conv_2d_42/instance_normalization_46/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_2/stack_1Æ
<conv_2d_42/instance_normalization_46/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_2/stack_2Ê
4conv_2d_42/instance_normalization_46/strided_slice_2StridedSlice3conv_2d_42/instance_normalization_46/Shape:output:0Cconv_2d_42/instance_normalization_46/strided_slice_2/stack:output:0Econv_2d_42/instance_normalization_46/strided_slice_2/stack_1:output:0Econv_2d_42/instance_normalization_46/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_42/instance_normalization_46/strided_slice_2Â
:conv_2d_42/instance_normalization_46/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_42/instance_normalization_46/strided_slice_3/stackÆ
<conv_2d_42/instance_normalization_46/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_3/stack_1Æ
<conv_2d_42/instance_normalization_46/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_42/instance_normalization_46/strided_slice_3/stack_2Ê
4conv_2d_42/instance_normalization_46/strided_slice_3StridedSlice3conv_2d_42/instance_normalization_46/Shape:output:0Cconv_2d_42/instance_normalization_46/strided_slice_3/stack:output:0Econv_2d_42/instance_normalization_46/strided_slice_3/stack_1:output:0Econv_2d_42/instance_normalization_46/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_42/instance_normalization_46/strided_slice_3Û
Cconv_2d_42/instance_normalization_46/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_42/instance_normalization_46/moments/mean/reduction_indices®
1conv_2d_42/instance_normalization_46/moments/meanMean$conv_2d_42/conv2d_42/Conv2D:output:0Lconv_2d_42/instance_normalization_46/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_42/instance_normalization_46/moments/meaný
9conv_2d_42/instance_normalization_46/moments/StopGradientStopGradient:conv_2d_42/instance_normalization_46/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_42/instance_normalization_46/moments/StopGradient¼
>conv_2d_42/instance_normalization_46/moments/SquaredDifferenceSquaredDifference$conv_2d_42/conv2d_42/Conv2D:output:0Bconv_2d_42/instance_normalization_46/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_42/instance_normalization_46/moments/SquaredDifferenceã
Gconv_2d_42/instance_normalization_46/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_42/instance_normalization_46/moments/variance/reduction_indicesØ
5conv_2d_42/instance_normalization_46/moments/varianceMeanBconv_2d_42/instance_normalization_46/moments/SquaredDifference:z:0Pconv_2d_42/instance_normalization_46/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_42/instance_normalization_46/moments/varianceü
;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOpReadVariableOpDconv_2d_42_instance_normalization_46_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOpÁ
2conv_2d_42/instance_normalization_46/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_42/instance_normalization_46/Reshape/shape
,conv_2d_42/instance_normalization_46/ReshapeReshapeCconv_2d_42/instance_normalization_46/Reshape/ReadVariableOp:value:0;conv_2d_42/instance_normalization_46/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_42/instance_normalization_46/Reshape
=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_42_instance_normalization_46_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOpÅ
4conv_2d_42/instance_normalization_46/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_42/instance_normalization_46/Reshape_1/shape£
.conv_2d_42/instance_normalization_46/Reshape_1ReshapeEconv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp:value:0=conv_2d_42/instance_normalization_46/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_42/instance_normalization_46/Reshape_1±
4conv_2d_42/instance_normalization_46/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_42/instance_normalization_46/batchnorm/add/y«
2conv_2d_42/instance_normalization_46/batchnorm/addAddV2>conv_2d_42/instance_normalization_46/moments/variance:output:0=conv_2d_42/instance_normalization_46/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_42/instance_normalization_46/batchnorm/addè
4conv_2d_42/instance_normalization_46/batchnorm/RsqrtRsqrt6conv_2d_42/instance_normalization_46/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_42/instance_normalization_46/batchnorm/Rsqrt
2conv_2d_42/instance_normalization_46/batchnorm/mulMul8conv_2d_42/instance_normalization_46/batchnorm/Rsqrt:y:05conv_2d_42/instance_normalization_46/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_42/instance_normalization_46/batchnorm/mul
4conv_2d_42/instance_normalization_46/batchnorm/mul_1Mul$conv_2d_42/conv2d_42/Conv2D:output:06conv_2d_42/instance_normalization_46/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_42/instance_normalization_46/batchnorm/mul_1¢
4conv_2d_42/instance_normalization_46/batchnorm/mul_2Mul:conv_2d_42/instance_normalization_46/moments/mean:output:06conv_2d_42/instance_normalization_46/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_42/instance_normalization_46/batchnorm/mul_2
2conv_2d_42/instance_normalization_46/batchnorm/subSub7conv_2d_42/instance_normalization_46/Reshape_1:output:08conv_2d_42/instance_normalization_46/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_42/instance_normalization_46/batchnorm/sub¤
4conv_2d_42/instance_normalization_46/batchnorm/add_1AddV28conv_2d_42/instance_normalization_46/batchnorm/mul_1:z:06conv_2d_42/instance_normalization_46/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_42/instance_normalization_46/batchnorm/add_1
addAddV2inputs8conv_2d_42/instance_normalization_46/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_41/conv2d_41/Conv2D/ReadVariableOp<^conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp>^conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp+^conv_2d_42/conv2d_42/Conv2D/ReadVariableOp<^conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp>^conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_41/conv2d_41/Conv2D/ReadVariableOp*conv_2d_41/conv2d_41/Conv2D/ReadVariableOp2z
;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp;conv_2d_41/instance_normalization_45/Reshape/ReadVariableOp2~
=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp=conv_2d_41/instance_normalization_45/Reshape_1/ReadVariableOp2X
*conv_2d_42/conv2d_42/Conv2D/ReadVariableOp*conv_2d_42/conv2d_42/Conv2D/ReadVariableOp2z
;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp;conv_2d_42/instance_normalization_46/Reshape/ReadVariableOp2~
=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp=conv_2d_42/instance_normalization_46/Reshape_1/ReadVariableOp:Z V
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
J__inference_resize_conv_2d_5_layer_call_and_return_conditional_losses_5625

inputs!
conv_2d_46_mirrorpad_paddings7
3conv_2d_46_conv2d_46_conv2d_readvariableop_resourceH
Dconv_2d_46_instance_normalization_51_reshape_readvariableop_resourceJ
Fconv_2d_46_instance_normalization_51_reshape_1_readvariableop_resource
identity¢*conv_2d_46/conv2d_46/Conv2D/ReadVariableOp¢;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp¢=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOpk
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
conv_2d_46/MirrorPad	MirrorPad-resize/ResizeNearestNeighbor:resized_images:0conv_2d_46_mirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒÒ@*
mode	REFLECT2
conv_2d_46/MirrorPadÔ
*conv_2d_46/conv2d_46/Conv2D/ReadVariableOpReadVariableOp3conv_2d_46_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype02,
*conv_2d_46/conv2d_46/Conv2D/ReadVariableOpü
conv_2d_46/conv2d_46/Conv2DConv2Dconv_2d_46/MirrorPad:output:02conv_2d_46/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè *
paddingVALID*
strides
2
conv_2d_46/conv2d_46/Conv2D¬
*conv_2d_46/instance_normalization_51/ShapeShape$conv_2d_46/conv2d_46/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_46/instance_normalization_51/Shape¾
8conv_2d_46/instance_normalization_51/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_46/instance_normalization_51/strided_slice/stackÂ
:conv_2d_46/instance_normalization_51/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice/stack_1Â
:conv_2d_46/instance_normalization_51/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice/stack_2À
2conv_2d_46/instance_normalization_51/strided_sliceStridedSlice3conv_2d_46/instance_normalization_51/Shape:output:0Aconv_2d_46/instance_normalization_51/strided_slice/stack:output:0Cconv_2d_46/instance_normalization_51/strided_slice/stack_1:output:0Cconv_2d_46/instance_normalization_51/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_46/instance_normalization_51/strided_sliceÂ
:conv_2d_46/instance_normalization_51/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice_1/stackÆ
<conv_2d_46/instance_normalization_51/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_1/stack_1Æ
<conv_2d_46/instance_normalization_51/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_1/stack_2Ê
4conv_2d_46/instance_normalization_51/strided_slice_1StridedSlice3conv_2d_46/instance_normalization_51/Shape:output:0Cconv_2d_46/instance_normalization_51/strided_slice_1/stack:output:0Econv_2d_46/instance_normalization_51/strided_slice_1/stack_1:output:0Econv_2d_46/instance_normalization_51/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_46/instance_normalization_51/strided_slice_1Â
:conv_2d_46/instance_normalization_51/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice_2/stackÆ
<conv_2d_46/instance_normalization_51/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_2/stack_1Æ
<conv_2d_46/instance_normalization_51/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_2/stack_2Ê
4conv_2d_46/instance_normalization_51/strided_slice_2StridedSlice3conv_2d_46/instance_normalization_51/Shape:output:0Cconv_2d_46/instance_normalization_51/strided_slice_2/stack:output:0Econv_2d_46/instance_normalization_51/strided_slice_2/stack_1:output:0Econv_2d_46/instance_normalization_51/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_46/instance_normalization_51/strided_slice_2Â
:conv_2d_46/instance_normalization_51/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_46/instance_normalization_51/strided_slice_3/stackÆ
<conv_2d_46/instance_normalization_51/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_3/stack_1Æ
<conv_2d_46/instance_normalization_51/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_46/instance_normalization_51/strided_slice_3/stack_2Ê
4conv_2d_46/instance_normalization_51/strided_slice_3StridedSlice3conv_2d_46/instance_normalization_51/Shape:output:0Cconv_2d_46/instance_normalization_51/strided_slice_3/stack:output:0Econv_2d_46/instance_normalization_51/strided_slice_3/stack_1:output:0Econv_2d_46/instance_normalization_51/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_46/instance_normalization_51/strided_slice_3Û
Cconv_2d_46/instance_normalization_51/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_46/instance_normalization_51/moments/mean/reduction_indices­
1conv_2d_46/instance_normalization_51/moments/meanMean$conv_2d_46/conv2d_46/Conv2D:output:0Lconv_2d_46/instance_normalization_51/moments/mean/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(23
1conv_2d_46/instance_normalization_51/moments/meanü
9conv_2d_46/instance_normalization_51/moments/StopGradientStopGradient:conv_2d_46/instance_normalization_51/moments/mean:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2;
9conv_2d_46/instance_normalization_51/moments/StopGradient»
>conv_2d_46/instance_normalization_51/moments/SquaredDifferenceSquaredDifference$conv_2d_46/conv2d_46/Conv2D:output:0Bconv_2d_46/instance_normalization_51/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2@
>conv_2d_46/instance_normalization_51/moments/SquaredDifferenceã
Gconv_2d_46/instance_normalization_51/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_46/instance_normalization_51/moments/variance/reduction_indices×
5conv_2d_46/instance_normalization_51/moments/varianceMeanBconv_2d_46/instance_normalization_51/moments/SquaredDifference:z:0Pconv_2d_46/instance_normalization_51/moments/variance/reduction_indices:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
	keep_dims(27
5conv_2d_46/instance_normalization_51/moments/varianceû
;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOpReadVariableOpDconv_2d_46_instance_normalization_51_reshape_readvariableop_resource*
_output_shapes
: *
dtype02=
;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOpÁ
2conv_2d_46/instance_normalization_51/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             24
2conv_2d_46/instance_normalization_51/Reshape/shape
,conv_2d_46/instance_normalization_51/ReshapeReshapeCconv_2d_46/instance_normalization_51/Reshape/ReadVariableOp:value:0;conv_2d_46/instance_normalization_51/Reshape/shape:output:0*
T0*&
_output_shapes
: 2.
,conv_2d_46/instance_normalization_51/Reshape
=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_46_instance_normalization_51_reshape_1_readvariableop_resource*
_output_shapes
: *
dtype02?
=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOpÅ
4conv_2d_46/instance_normalization_51/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             26
4conv_2d_46/instance_normalization_51/Reshape_1/shape¢
.conv_2d_46/instance_normalization_51/Reshape_1ReshapeEconv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp:value:0=conv_2d_46/instance_normalization_51/Reshape_1/shape:output:0*
T0*&
_output_shapes
: 20
.conv_2d_46/instance_normalization_51/Reshape_1±
4conv_2d_46/instance_normalization_51/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_46/instance_normalization_51/batchnorm/add/yª
2conv_2d_46/instance_normalization_51/batchnorm/addAddV2>conv_2d_46/instance_normalization_51/moments/variance:output:0=conv_2d_46/instance_normalization_51/batchnorm/add/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_46/instance_normalization_51/batchnorm/addç
4conv_2d_46/instance_normalization_51/batchnorm/RsqrtRsqrt6conv_2d_46/instance_normalization_51/batchnorm/add:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4conv_2d_46/instance_normalization_51/batchnorm/Rsqrt
2conv_2d_46/instance_normalization_51/batchnorm/mulMul8conv_2d_46/instance_normalization_51/batchnorm/Rsqrt:y:05conv_2d_46/instance_normalization_51/Reshape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_46/instance_normalization_51/batchnorm/mul
4conv_2d_46/instance_normalization_51/batchnorm/mul_1Mul$conv_2d_46/conv2d_46/Conv2D:output:06conv_2d_46/instance_normalization_51/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 26
4conv_2d_46/instance_normalization_51/batchnorm/mul_1¡
4conv_2d_46/instance_normalization_51/batchnorm/mul_2Mul:conv_2d_46/instance_normalization_51/moments/mean:output:06conv_2d_46/instance_normalization_51/batchnorm/mul:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4conv_2d_46/instance_normalization_51/batchnorm/mul_2
2conv_2d_46/instance_normalization_51/batchnorm/subSub7conv_2d_46/instance_normalization_51/Reshape_1:output:08conv_2d_46/instance_normalization_51/batchnorm/mul_2:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2conv_2d_46/instance_normalization_51/batchnorm/sub£
4conv_2d_46/instance_normalization_51/batchnorm/add_1AddV28conv_2d_46/instance_normalization_51/batchnorm/mul_1:z:06conv_2d_46/instance_normalization_51/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 26
4conv_2d_46/instance_normalization_51/batchnorm/add_1 
conv_2d_46/ReluRelu8conv_2d_46/instance_normalization_51/batchnorm/add_1:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2
conv_2d_46/Relu¦
IdentityIdentityconv_2d_46/Relu:activations:0+^conv_2d_46/conv2d_46/Conv2D/ReadVariableOp<^conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp>^conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿèè 2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::2X
*conv_2d_46/conv2d_46/Conv2D/ReadVariableOp*conv_2d_46/conv2d_46/Conv2D/ReadVariableOp2z
;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp;conv_2d_46/instance_normalization_51/Reshape/ReadVariableOp2~
=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp=conv_2d_46/instance_normalization_51/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:
 0
ò
S__inference_instance_normalization_49_layer_call_and_return_conditional_losses_4488

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
 0
ò
S__inference_instance_normalization_53_layer_call_and_return_conditional_losses_4596

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
¤	
Ù
*__inference_residual_14_layer_call_fn_6753

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity¢StatefulPartitionedCallÏ
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
GPU2*0J 8 *N
fIRG
E__inference_residual_14_layer_call_and_return_conditional_losses_54592
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
8__inference_instance_normalization_38_layer_call_fn_3904

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
S__inference_instance_normalization_38_layer_call_and_return_conditional_losses_38942
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
¼P
³
D__inference_conv_2d_34_layer_call_and_return_conditional_losses_4805

inputs
mirrorpad_paddings,
(conv2d_34_conv2d_readvariableop_resource=
9instance_normalization_38_reshape_readvariableop_resource?
;instance_normalization_38_reshape_1_readvariableop_resource
identity¢conv2d_34/Conv2D/ReadVariableOp¢0instance_normalization_38/Reshape/ReadVariableOp¢2instance_normalization_38/Reshape_1/ReadVariableOp
	MirrorPad	MirrorPadinputsmirrorpad_paddings*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿöö@*
mode	REFLECT2
	MirrorPad´
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_34/Conv2D/ReadVariableOpÑ
conv2d_34/Conv2DConv2DMirrorPad:output:0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv2d_34/Conv2D
instance_normalization_38/ShapeShapeconv2d_34/Conv2D:output:0*
T0*
_output_shapes
:2!
instance_normalization_38/Shape¨
-instance_normalization_38/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-instance_normalization_38/strided_slice/stack¬
/instance_normalization_38/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice/stack_1¬
/instance_normalization_38/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice/stack_2þ
'instance_normalization_38/strided_sliceStridedSlice(instance_normalization_38/Shape:output:06instance_normalization_38/strided_slice/stack:output:08instance_normalization_38/strided_slice/stack_1:output:08instance_normalization_38/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'instance_normalization_38/strided_slice¬
/instance_normalization_38/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice_1/stack°
1instance_normalization_38/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_1/stack_1°
1instance_normalization_38/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_1/stack_2
)instance_normalization_38/strided_slice_1StridedSlice(instance_normalization_38/Shape:output:08instance_normalization_38/strided_slice_1/stack:output:0:instance_normalization_38/strided_slice_1/stack_1:output:0:instance_normalization_38/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_38/strided_slice_1¬
/instance_normalization_38/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice_2/stack°
1instance_normalization_38/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_2/stack_1°
1instance_normalization_38/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_2/stack_2
)instance_normalization_38/strided_slice_2StridedSlice(instance_normalization_38/Shape:output:08instance_normalization_38/strided_slice_2/stack:output:0:instance_normalization_38/strided_slice_2/stack_1:output:0:instance_normalization_38/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_38/strided_slice_2¬
/instance_normalization_38/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:21
/instance_normalization_38/strided_slice_3/stack°
1instance_normalization_38/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_3/stack_1°
1instance_normalization_38/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1instance_normalization_38/strided_slice_3/stack_2
)instance_normalization_38/strided_slice_3StridedSlice(instance_normalization_38/Shape:output:08instance_normalization_38/strided_slice_3/stack:output:0:instance_normalization_38/strided_slice_3/stack_1:output:0:instance_normalization_38/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)instance_normalization_38/strided_slice_3Å
8instance_normalization_38/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2:
8instance_normalization_38/moments/mean/reduction_indices
&instance_normalization_38/moments/meanMeanconv2d_34/Conv2D:output:0Ainstance_normalization_38/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2(
&instance_normalization_38/moments/meanÜ
.instance_normalization_38/moments/StopGradientStopGradient/instance_normalization_38/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.instance_normalization_38/moments/StopGradient
3instance_normalization_38/moments/SquaredDifferenceSquaredDifferenceconv2d_34/Conv2D:output:07instance_normalization_38/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú25
3instance_normalization_38/moments/SquaredDifferenceÍ
<instance_normalization_38/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2>
<instance_normalization_38/moments/variance/reduction_indices¬
*instance_normalization_38/moments/varianceMean7instance_normalization_38/moments/SquaredDifference:z:0Einstance_normalization_38/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(2,
*instance_normalization_38/moments/varianceÛ
0instance_normalization_38/Reshape/ReadVariableOpReadVariableOp9instance_normalization_38_reshape_readvariableop_resource*
_output_shapes	
:*
dtype022
0instance_normalization_38/Reshape/ReadVariableOp«
'instance_normalization_38/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2)
'instance_normalization_38/Reshape/shapeï
!instance_normalization_38/ReshapeReshape8instance_normalization_38/Reshape/ReadVariableOp:value:00instance_normalization_38/Reshape/shape:output:0*
T0*'
_output_shapes
:2#
!instance_normalization_38/Reshapeá
2instance_normalization_38/Reshape_1/ReadVariableOpReadVariableOp;instance_normalization_38_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype024
2instance_normalization_38/Reshape_1/ReadVariableOp¯
)instance_normalization_38/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            2+
)instance_normalization_38/Reshape_1/shape÷
#instance_normalization_38/Reshape_1Reshape:instance_normalization_38/Reshape_1/ReadVariableOp:value:02instance_normalization_38/Reshape_1/shape:output:0*
T0*'
_output_shapes
:2%
#instance_normalization_38/Reshape_1
)instance_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2+
)instance_normalization_38/batchnorm/add/yÿ
'instance_normalization_38/batchnorm/addAddV23instance_normalization_38/moments/variance:output:02instance_normalization_38/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_38/batchnorm/addÇ
)instance_normalization_38/batchnorm/RsqrtRsqrt+instance_normalization_38/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_38/batchnorm/Rsqrtï
'instance_normalization_38/batchnorm/mulMul-instance_normalization_38/batchnorm/Rsqrt:y:0*instance_normalization_38/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_38/batchnorm/mulâ
)instance_normalization_38/batchnorm/mul_1Mulconv2d_34/Conv2D:output:0+instance_normalization_38/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)instance_normalization_38/batchnorm/mul_1ö
)instance_normalization_38/batchnorm/mul_2Mul/instance_normalization_38/moments/mean:output:0+instance_normalization_38/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)instance_normalization_38/batchnorm/mul_2ñ
'instance_normalization_38/batchnorm/subSub,instance_normalization_38/Reshape_1:output:0-instance_normalization_38/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'instance_normalization_38/batchnorm/subø
)instance_normalization_38/batchnorm/add_1AddV2-instance_normalization_38/batchnorm/mul_1:z:0+instance_normalization_38/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2+
)instance_normalization_38/batchnorm/add_1
ReluRelu-instance_normalization_38/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
Reluû
IdentityIdentityRelu:activations:0 ^conv2d_34/Conv2D/ReadVariableOp1^instance_normalization_38/Reshape/ReadVariableOp3^instance_normalization_38/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*F
_input_shapes5
3:ÿÿÿÿÿÿÿÿÿôô@::::2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2d
0instance_normalization_38/Reshape/ReadVariableOp0instance_normalization_38/Reshape/ReadVariableOp2h
2instance_normalization_38/Reshape_1/ReadVariableOp2instance_normalization_38/Reshape_1/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿôô@
 
_user_specified_nameinputs:$ 

_output_shapes

:
·

E__inference_residual_11_layer_call_and_return_conditional_losses_6387

inputs!
conv_2d_37_mirrorpad_paddings7
3conv_2d_37_conv2d_37_conv2d_readvariableop_resourceH
Dconv_2d_37_instance_normalization_41_reshape_readvariableop_resourceJ
Fconv_2d_37_instance_normalization_41_reshape_1_readvariableop_resource!
conv_2d_38_mirrorpad_paddings7
3conv_2d_38_conv2d_38_conv2d_readvariableop_resourceH
Dconv_2d_38_instance_normalization_42_reshape_readvariableop_resourceJ
Fconv_2d_38_instance_normalization_42_reshape_1_readvariableop_resource
identity¢*conv_2d_37/conv2d_37/Conv2D/ReadVariableOp¢;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp¢=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp¢*conv_2d_38/conv2d_38/Conv2D/ReadVariableOp¢;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp¢=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp°
conv_2d_37/MirrorPad	MirrorPadinputsconv_2d_37_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_37/MirrorPadÖ
*conv_2d_37/conv2d_37/Conv2D/ReadVariableOpReadVariableOp3conv_2d_37_conv2d_37_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_37/conv2d_37/Conv2D/ReadVariableOpý
conv_2d_37/conv2d_37/Conv2DConv2Dconv_2d_37/MirrorPad:output:02conv_2d_37/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_37/conv2d_37/Conv2D¬
*conv_2d_37/instance_normalization_41/ShapeShape$conv_2d_37/conv2d_37/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_37/instance_normalization_41/Shape¾
8conv_2d_37/instance_normalization_41/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_37/instance_normalization_41/strided_slice/stackÂ
:conv_2d_37/instance_normalization_41/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice/stack_1Â
:conv_2d_37/instance_normalization_41/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice/stack_2À
2conv_2d_37/instance_normalization_41/strided_sliceStridedSlice3conv_2d_37/instance_normalization_41/Shape:output:0Aconv_2d_37/instance_normalization_41/strided_slice/stack:output:0Cconv_2d_37/instance_normalization_41/strided_slice/stack_1:output:0Cconv_2d_37/instance_normalization_41/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_37/instance_normalization_41/strided_sliceÂ
:conv_2d_37/instance_normalization_41/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice_1/stackÆ
<conv_2d_37/instance_normalization_41/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_1/stack_1Æ
<conv_2d_37/instance_normalization_41/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_1/stack_2Ê
4conv_2d_37/instance_normalization_41/strided_slice_1StridedSlice3conv_2d_37/instance_normalization_41/Shape:output:0Cconv_2d_37/instance_normalization_41/strided_slice_1/stack:output:0Econv_2d_37/instance_normalization_41/strided_slice_1/stack_1:output:0Econv_2d_37/instance_normalization_41/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_37/instance_normalization_41/strided_slice_1Â
:conv_2d_37/instance_normalization_41/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice_2/stackÆ
<conv_2d_37/instance_normalization_41/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_2/stack_1Æ
<conv_2d_37/instance_normalization_41/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_2/stack_2Ê
4conv_2d_37/instance_normalization_41/strided_slice_2StridedSlice3conv_2d_37/instance_normalization_41/Shape:output:0Cconv_2d_37/instance_normalization_41/strided_slice_2/stack:output:0Econv_2d_37/instance_normalization_41/strided_slice_2/stack_1:output:0Econv_2d_37/instance_normalization_41/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_37/instance_normalization_41/strided_slice_2Â
:conv_2d_37/instance_normalization_41/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_37/instance_normalization_41/strided_slice_3/stackÆ
<conv_2d_37/instance_normalization_41/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_3/stack_1Æ
<conv_2d_37/instance_normalization_41/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_37/instance_normalization_41/strided_slice_3/stack_2Ê
4conv_2d_37/instance_normalization_41/strided_slice_3StridedSlice3conv_2d_37/instance_normalization_41/Shape:output:0Cconv_2d_37/instance_normalization_41/strided_slice_3/stack:output:0Econv_2d_37/instance_normalization_41/strided_slice_3/stack_1:output:0Econv_2d_37/instance_normalization_41/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_37/instance_normalization_41/strided_slice_3Û
Cconv_2d_37/instance_normalization_41/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_37/instance_normalization_41/moments/mean/reduction_indices®
1conv_2d_37/instance_normalization_41/moments/meanMean$conv_2d_37/conv2d_37/Conv2D:output:0Lconv_2d_37/instance_normalization_41/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_37/instance_normalization_41/moments/meaný
9conv_2d_37/instance_normalization_41/moments/StopGradientStopGradient:conv_2d_37/instance_normalization_41/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_37/instance_normalization_41/moments/StopGradient¼
>conv_2d_37/instance_normalization_41/moments/SquaredDifferenceSquaredDifference$conv_2d_37/conv2d_37/Conv2D:output:0Bconv_2d_37/instance_normalization_41/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_37/instance_normalization_41/moments/SquaredDifferenceã
Gconv_2d_37/instance_normalization_41/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_37/instance_normalization_41/moments/variance/reduction_indicesØ
5conv_2d_37/instance_normalization_41/moments/varianceMeanBconv_2d_37/instance_normalization_41/moments/SquaredDifference:z:0Pconv_2d_37/instance_normalization_41/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_37/instance_normalization_41/moments/varianceü
;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOpReadVariableOpDconv_2d_37_instance_normalization_41_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOpÁ
2conv_2d_37/instance_normalization_41/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_37/instance_normalization_41/Reshape/shape
,conv_2d_37/instance_normalization_41/ReshapeReshapeCconv_2d_37/instance_normalization_41/Reshape/ReadVariableOp:value:0;conv_2d_37/instance_normalization_41/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_37/instance_normalization_41/Reshape
=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_37_instance_normalization_41_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOpÅ
4conv_2d_37/instance_normalization_41/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_37/instance_normalization_41/Reshape_1/shape£
.conv_2d_37/instance_normalization_41/Reshape_1ReshapeEconv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp:value:0=conv_2d_37/instance_normalization_41/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_37/instance_normalization_41/Reshape_1±
4conv_2d_37/instance_normalization_41/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_37/instance_normalization_41/batchnorm/add/y«
2conv_2d_37/instance_normalization_41/batchnorm/addAddV2>conv_2d_37/instance_normalization_41/moments/variance:output:0=conv_2d_37/instance_normalization_41/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_37/instance_normalization_41/batchnorm/addè
4conv_2d_37/instance_normalization_41/batchnorm/RsqrtRsqrt6conv_2d_37/instance_normalization_41/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_37/instance_normalization_41/batchnorm/Rsqrt
2conv_2d_37/instance_normalization_41/batchnorm/mulMul8conv_2d_37/instance_normalization_41/batchnorm/Rsqrt:y:05conv_2d_37/instance_normalization_41/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_37/instance_normalization_41/batchnorm/mul
4conv_2d_37/instance_normalization_41/batchnorm/mul_1Mul$conv_2d_37/conv2d_37/Conv2D:output:06conv_2d_37/instance_normalization_41/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_37/instance_normalization_41/batchnorm/mul_1¢
4conv_2d_37/instance_normalization_41/batchnorm/mul_2Mul:conv_2d_37/instance_normalization_41/moments/mean:output:06conv_2d_37/instance_normalization_41/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_37/instance_normalization_41/batchnorm/mul_2
2conv_2d_37/instance_normalization_41/batchnorm/subSub7conv_2d_37/instance_normalization_41/Reshape_1:output:08conv_2d_37/instance_normalization_41/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_37/instance_normalization_41/batchnorm/sub¤
4conv_2d_37/instance_normalization_41/batchnorm/add_1AddV28conv_2d_37/instance_normalization_41/batchnorm/mul_1:z:06conv_2d_37/instance_normalization_41/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_37/instance_normalization_41/batchnorm/add_1¡
conv_2d_37/ReluRelu8conv_2d_37/instance_normalization_41/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
conv_2d_37/ReluÇ
conv_2d_38/MirrorPad	MirrorPadconv_2d_37/Relu:activations:0conv_2d_38_mirrorpad_paddings*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿüü*
mode	REFLECT2
conv_2d_38/MirrorPadÖ
*conv_2d_38/conv2d_38/Conv2D/ReadVariableOpReadVariableOp3conv_2d_38_conv2d_38_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype02,
*conv_2d_38/conv2d_38/Conv2D/ReadVariableOpý
conv_2d_38/conv2d_38/Conv2DConv2Dconv_2d_38/MirrorPad:output:02conv_2d_38/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú*
paddingVALID*
strides
2
conv_2d_38/conv2d_38/Conv2D¬
*conv_2d_38/instance_normalization_42/ShapeShape$conv_2d_38/conv2d_38/Conv2D:output:0*
T0*
_output_shapes
:2,
*conv_2d_38/instance_normalization_42/Shape¾
8conv_2d_38/instance_normalization_42/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8conv_2d_38/instance_normalization_42/strided_slice/stackÂ
:conv_2d_38/instance_normalization_42/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice/stack_1Â
:conv_2d_38/instance_normalization_42/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice/stack_2À
2conv_2d_38/instance_normalization_42/strided_sliceStridedSlice3conv_2d_38/instance_normalization_42/Shape:output:0Aconv_2d_38/instance_normalization_42/strided_slice/stack:output:0Cconv_2d_38/instance_normalization_42/strided_slice/stack_1:output:0Cconv_2d_38/instance_normalization_42/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2conv_2d_38/instance_normalization_42/strided_sliceÂ
:conv_2d_38/instance_normalization_42/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice_1/stackÆ
<conv_2d_38/instance_normalization_42/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_1/stack_1Æ
<conv_2d_38/instance_normalization_42/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_1/stack_2Ê
4conv_2d_38/instance_normalization_42/strided_slice_1StridedSlice3conv_2d_38/instance_normalization_42/Shape:output:0Cconv_2d_38/instance_normalization_42/strided_slice_1/stack:output:0Econv_2d_38/instance_normalization_42/strided_slice_1/stack_1:output:0Econv_2d_38/instance_normalization_42/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_38/instance_normalization_42/strided_slice_1Â
:conv_2d_38/instance_normalization_42/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice_2/stackÆ
<conv_2d_38/instance_normalization_42/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_2/stack_1Æ
<conv_2d_38/instance_normalization_42/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_2/stack_2Ê
4conv_2d_38/instance_normalization_42/strided_slice_2StridedSlice3conv_2d_38/instance_normalization_42/Shape:output:0Cconv_2d_38/instance_normalization_42/strided_slice_2/stack:output:0Econv_2d_38/instance_normalization_42/strided_slice_2/stack_1:output:0Econv_2d_38/instance_normalization_42/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_38/instance_normalization_42/strided_slice_2Â
:conv_2d_38/instance_normalization_42/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:2<
:conv_2d_38/instance_normalization_42/strided_slice_3/stackÆ
<conv_2d_38/instance_normalization_42/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_3/stack_1Æ
<conv_2d_38/instance_normalization_42/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2>
<conv_2d_38/instance_normalization_42/strided_slice_3/stack_2Ê
4conv_2d_38/instance_normalization_42/strided_slice_3StridedSlice3conv_2d_38/instance_normalization_42/Shape:output:0Cconv_2d_38/instance_normalization_42/strided_slice_3/stack:output:0Econv_2d_38/instance_normalization_42/strided_slice_3/stack_1:output:0Econv_2d_38/instance_normalization_42/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask26
4conv_2d_38/instance_normalization_42/strided_slice_3Û
Cconv_2d_38/instance_normalization_42/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2E
Cconv_2d_38/instance_normalization_42/moments/mean/reduction_indices®
1conv_2d_38/instance_normalization_42/moments/meanMean$conv_2d_38/conv2d_38/Conv2D:output:0Lconv_2d_38/instance_normalization_42/moments/mean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(23
1conv_2d_38/instance_normalization_42/moments/meaný
9conv_2d_38/instance_normalization_42/moments/StopGradientStopGradient:conv_2d_38/instance_normalization_42/moments/mean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2;
9conv_2d_38/instance_normalization_42/moments/StopGradient¼
>conv_2d_38/instance_normalization_42/moments/SquaredDifferenceSquaredDifference$conv_2d_38/conv2d_38/Conv2D:output:0Bconv_2d_38/instance_normalization_42/moments/StopGradient:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2@
>conv_2d_38/instance_normalization_42/moments/SquaredDifferenceã
Gconv_2d_38/instance_normalization_42/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      2I
Gconv_2d_38/instance_normalization_42/moments/variance/reduction_indicesØ
5conv_2d_38/instance_normalization_42/moments/varianceMeanBconv_2d_38/instance_normalization_42/moments/SquaredDifference:z:0Pconv_2d_38/instance_normalization_42/moments/variance/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(27
5conv_2d_38/instance_normalization_42/moments/varianceü
;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOpReadVariableOpDconv_2d_38_instance_normalization_42_reshape_readvariableop_resource*
_output_shapes	
:*
dtype02=
;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOpÁ
2conv_2d_38/instance_normalization_42/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            24
2conv_2d_38/instance_normalization_42/Reshape/shape
,conv_2d_38/instance_normalization_42/ReshapeReshapeCconv_2d_38/instance_normalization_42/Reshape/ReadVariableOp:value:0;conv_2d_38/instance_normalization_42/Reshape/shape:output:0*
T0*'
_output_shapes
:2.
,conv_2d_38/instance_normalization_42/Reshape
=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOpReadVariableOpFconv_2d_38_instance_normalization_42_reshape_1_readvariableop_resource*
_output_shapes	
:*
dtype02?
=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOpÅ
4conv_2d_38/instance_normalization_42/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            26
4conv_2d_38/instance_normalization_42/Reshape_1/shape£
.conv_2d_38/instance_normalization_42/Reshape_1ReshapeEconv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp:value:0=conv_2d_38/instance_normalization_42/Reshape_1/shape:output:0*
T0*'
_output_shapes
:20
.conv_2d_38/instance_normalization_42/Reshape_1±
4conv_2d_38/instance_normalization_42/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4conv_2d_38/instance_normalization_42/batchnorm/add/y«
2conv_2d_38/instance_normalization_42/batchnorm/addAddV2>conv_2d_38/instance_normalization_42/moments/variance:output:0=conv_2d_38/instance_normalization_42/batchnorm/add/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_38/instance_normalization_42/batchnorm/addè
4conv_2d_38/instance_normalization_42/batchnorm/RsqrtRsqrt6conv_2d_38/instance_normalization_42/batchnorm/add:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_38/instance_normalization_42/batchnorm/Rsqrt
2conv_2d_38/instance_normalization_42/batchnorm/mulMul8conv_2d_38/instance_normalization_42/batchnorm/Rsqrt:y:05conv_2d_38/instance_normalization_42/Reshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_38/instance_normalization_42/batchnorm/mul
4conv_2d_38/instance_normalization_42/batchnorm/mul_1Mul$conv_2d_38/conv2d_38/Conv2D:output:06conv_2d_38/instance_normalization_42/batchnorm/mul:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_38/instance_normalization_42/batchnorm/mul_1¢
4conv_2d_38/instance_normalization_42/batchnorm/mul_2Mul:conv_2d_38/instance_normalization_42/moments/mean:output:06conv_2d_38/instance_normalization_42/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4conv_2d_38/instance_normalization_42/batchnorm/mul_2
2conv_2d_38/instance_normalization_42/batchnorm/subSub7conv_2d_38/instance_normalization_42/Reshape_1:output:08conv_2d_38/instance_normalization_42/batchnorm/mul_2:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2conv_2d_38/instance_normalization_42/batchnorm/sub¤
4conv_2d_38/instance_normalization_42/batchnorm/add_1AddV28conv_2d_38/instance_normalization_42/batchnorm/mul_1:z:06conv_2d_38/instance_normalization_42/batchnorm/sub:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú26
4conv_2d_38/instance_normalization_42/batchnorm/add_1
addAddV2inputs8conv_2d_38/instance_normalization_42/batchnorm/add_1:z:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2
add¼
IdentityIdentityadd:z:0+^conv_2d_37/conv2d_37/Conv2D/ReadVariableOp<^conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp>^conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp+^conv_2d_38/conv2d_38/Conv2D/ReadVariableOp<^conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp>^conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú2

Identity"
identityIdentity:output:0*]
_input_shapesL
J:ÿÿÿÿÿÿÿÿÿúú::::::::2X
*conv_2d_37/conv2d_37/Conv2D/ReadVariableOp*conv_2d_37/conv2d_37/Conv2D/ReadVariableOp2z
;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp;conv_2d_37/instance_normalization_41/Reshape/ReadVariableOp2~
=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp=conv_2d_37/instance_normalization_41/Reshape_1/ReadVariableOp2X
*conv_2d_38/conv2d_38/Conv2D/ReadVariableOp*conv_2d_38/conv2d_38/Conv2D/ReadVariableOp2z
;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp;conv_2d_38/instance_normalization_42/Reshape/ReadVariableOp2~
=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp=conv_2d_38/instance_normalization_42/Reshape_1/ReadVariableOp:Z V
2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿúú
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

:
ó

)__inference_conv_2d_32_layer_call_fn_6054

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
D__inference_conv_2d_32_layer_call_and_return_conditional_losses_46592
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
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿèètensorflow/serving/predict:ºâ
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
	variables
regularization_losses
	keras_api

signatures
+å&call_and_return_all_conditional_losses
æ_default_save_signature
ç__call__"
_tf_keras_modelî{"class_name": "feed_forward", "name": "feed_forward_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "feed_forward"}}
Ä

conv2d
instance_norm
trainable_variables
	variables
regularization_losses
	keras_api
+è&call_and_return_all_conditional_losses
é__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ä

conv2d
instance_norm
trainable_variables
	variables
regularization_losses
	keras_api
+ê&call_and_return_all_conditional_losses
ë__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ä

conv2d
instance_norm
trainable_variables
 	variables
!regularization_losses
"	keras_api
+ì&call_and_return_all_conditional_losses
í__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
½
	#conv1
	$conv2
%trainable_variables
&	variables
'regularization_losses
(	keras_api
+î&call_and_return_all_conditional_losses
ï__call__"
_tf_keras_layerü{"class_name": "residual", "name": "residual_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
½
	)conv1
	*conv2
+trainable_variables
,	variables
-regularization_losses
.	keras_api
+ð&call_and_return_all_conditional_losses
ñ__call__"
_tf_keras_layerü{"class_name": "residual", "name": "residual_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
½
	/conv1
	0conv2
1trainable_variables
2	variables
3regularization_losses
4	keras_api
+ò&call_and_return_all_conditional_losses
ó__call__"
_tf_keras_layerü{"class_name": "residual", "name": "residual_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
½
	5conv1
	6conv2
7trainable_variables
8	variables
9regularization_losses
:	keras_api
+ô&call_and_return_all_conditional_losses
õ__call__"
_tf_keras_layerü{"class_name": "residual", "name": "residual_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
½
	;conv1
	<conv2
=trainable_variables
>	variables
?regularization_losses
@	keras_api
+ö&call_and_return_all_conditional_losses
÷__call__"
_tf_keras_layerü{"class_name": "residual", "name": "residual_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ï
Aconv
Binstance_norm
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
+ø&call_and_return_all_conditional_losses
ù__call__"¡
_tf_keras_layer{"class_name": "resize_conv_2d", "name": "resize_conv_2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ï
Gconv
Hinstance_norm
Itrainable_variables
J	variables
Kregularization_losses
L	keras_api
+ú&call_and_return_all_conditional_losses
û__call__"¡
_tf_keras_layer{"class_name": "resize_conv_2d", "name": "resize_conv_2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ä

Mconv2d
Ninstance_norm
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
+ü&call_and_return_all_conditional_losses
ý__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
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
Ó
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
trainable_variables
	variables
layers
regularization_losses
ç__call__
æ_default_save_signature
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses"
_generic_user_object
-
þserving_default"
signature_map
ó	

Skernel
trainable_variables
	variables
regularization_losses
	keras_api
+ÿ&call_and_return_all_conditional_losses
__call__"Ò
_tf_keras_layer¸{"class_name": "Conv2D", "name": "conv2d_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_32", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1008, 1008, 3]}}

	Tgamma
Ubeta
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"ï
_tf_keras_layerÕ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_36", "trainable": true, "dtype": "float32", "groups": 32, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1000, 1000, 32]}}
5
S0
T1
U2"
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
trainable_variables
	variables
layers
regularization_losses
é__call__
+è&call_and_return_all_conditional_losses
'è"call_and_return_conditional_losses"
_generic_user_object
õ	

Vkernel
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"Ô
_tf_keras_layerº{"class_name": "Conv2D", "name": "conv2d_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_33", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1002, 1002, 32]}}

	Wgamma
Xbeta
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"í
_tf_keras_layerÓ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_37", "trainable": true, "dtype": "float32", "groups": 64, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 500, 500, 64]}}
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 layer_regularization_losses
non_trainable_variables
metrics
 layer_metrics
trainable_variables
	variables
¡layers
regularization_losses
ë__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses"
_generic_user_object
ô	

Ykernel
¢trainable_variables
£	variables
¤regularization_losses
¥	keras_api
+&call_and_return_all_conditional_losses
__call__"Ó
_tf_keras_layer¹{"class_name": "Conv2D", "name": "conv2d_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_34", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 502, 502, 64]}}

	Zgamma
[beta
¦trainable_variables
§	variables
¨regularization_losses
©	keras_api
+&call_and_return_all_conditional_losses
__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_38", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
Y0
Z1
[2"
trackable_list_wrapper
5
Y0
Z1
[2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 ªlayer_regularization_losses
«non_trainable_variables
¬metrics
­layer_metrics
trainable_variables
 	variables
®layers
!regularization_losses
í__call__
+ì&call_and_return_all_conditional_losses
'ì"call_and_return_conditional_losses"
_generic_user_object
Ê
¯conv2d
°instance_norm
±trainable_variables
²	variables
³regularization_losses
´	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
µconv2d
¶instance_norm
·trainable_variables
¸	variables
¹regularization_losses
º	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
\0
]1
^2
_3
`4
a5"
trackable_list_wrapper
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
µ
 »layer_regularization_losses
¼non_trainable_variables
½metrics
¾layer_metrics
%trainable_variables
&	variables
¿layers
'regularization_losses
ï__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses"
_generic_user_object
Ê
Àconv2d
Áinstance_norm
Âtrainable_variables
Ã	variables
Äregularization_losses
Å	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
Æconv2d
Çinstance_norm
Ètrainable_variables
É	variables
Êregularization_losses
Ë	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
b0
c1
d2
e3
f4
g5"
trackable_list_wrapper
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
µ
 Ìlayer_regularization_losses
Ínon_trainable_variables
Îmetrics
Ïlayer_metrics
+trainable_variables
,	variables
Ðlayers
-regularization_losses
ñ__call__
+ð&call_and_return_all_conditional_losses
'ð"call_and_return_conditional_losses"
_generic_user_object
Ê
Ñconv2d
Òinstance_norm
Ótrainable_variables
Ô	variables
Õregularization_losses
Ö	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
×conv2d
Øinstance_norm
Ùtrainable_variables
Ú	variables
Ûregularization_losses
Ü	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
h0
i1
j2
k3
l4
m5"
trackable_list_wrapper
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
µ
 Ýlayer_regularization_losses
Þnon_trainable_variables
ßmetrics
àlayer_metrics
1trainable_variables
2	variables
álayers
3regularization_losses
ó__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses"
_generic_user_object
Ê
âconv2d
ãinstance_norm
ätrainable_variables
å	variables
æregularization_losses
ç	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
èconv2d
éinstance_norm
êtrainable_variables
ë	variables
ìregularization_losses
í	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_42", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
n0
o1
p2
q3
r4
s5"
trackable_list_wrapper
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
µ
 îlayer_regularization_losses
ïnon_trainable_variables
ðmetrics
ñlayer_metrics
7trainable_variables
8	variables
òlayers
9regularization_losses
õ__call__
+ô&call_and_return_all_conditional_losses
'ô"call_and_return_conditional_losses"
_generic_user_object
Ê
óconv2d
ôinstance_norm
õtrainable_variables
ö	variables
÷regularization_losses
ø	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_43", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
Ê
ùconv2d
úinstance_norm
ûtrainable_variables
ü	variables
ýregularization_losses
þ	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
J
t0
u1
v2
w3
x4
y5"
trackable_list_wrapper
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
µ
 ÿlayer_regularization_losses
non_trainable_variables
metrics
layer_metrics
=trainable_variables
>	variables
layers
?regularization_losses
÷__call__
+ö&call_and_return_all_conditional_losses
'ö"call_and_return_conditional_losses"
_generic_user_object
Ê
conv2d
instance_norm
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
 __call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}

	keras_api"
_tf_keras_layerë{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_50", "trainable": true, "dtype": "float32", "groups": -1, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}
5
z0
{1
|2"
trackable_list_wrapper
5
z0
{1
|2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
Ctrainable_variables
D	variables
layers
Eregularization_losses
ù__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses"
_generic_user_object
Ê
conv2d
instance_norm
trainable_variables
	variables
regularization_losses
	keras_api
+¡&call_and_return_all_conditional_losses
¢__call__"
_tf_keras_layerú{"class_name": "conv_2d", "name": "conv_2d_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}

	keras_api"
_tf_keras_layerë{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_52", "trainable": true, "dtype": "float32", "groups": -1, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}
5
}0
~1
2"
trackable_list_wrapper
5
}0
~1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
Itrainable_variables
J	variables
layers
Kregularization_losses
û__call__
+ú&call_and_return_all_conditional_losses
'ú"call_and_return_conditional_losses"
_generic_user_object
õ	
kernel
trainable_variables
	variables
regularization_losses
	keras_api
+£&call_and_return_all_conditional_losses
¤__call__"Ó
_tf_keras_layer¹{"class_name": "Conv2D", "name": "conv2d_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_47", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [9, 9]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1008, 1008, 32]}}


gamma
	beta
 trainable_variables
¡	variables
¢regularization_losses
£	keras_api
+¥&call_and_return_all_conditional_losses
¦__call__"ì
_tf_keras_layerÒ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_53", "trainable": true, "dtype": "float32", "groups": 3, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1000, 1000, 3]}}
8
0
1
2"
trackable_list_wrapper
8
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
 ¤layer_regularization_losses
¥non_trainable_variables
¦metrics
§layer_metrics
Otrainable_variables
P	variables
¨layers
Qregularization_losses
ý__call__
+ü&call_and_return_all_conditional_losses
'ü"call_and_return_conditional_losses"
_generic_user_object
D:B		 2*feed_forward_2/conv_2d_32/conv2d_32/kernel
G:E 29feed_forward_2/conv_2d_32/instance_normalization_36/gamma
F:D 28feed_forward_2/conv_2d_32/instance_normalization_36/beta
D:B @2*feed_forward_2/conv_2d_33/conv2d_33/kernel
G:E@29feed_forward_2/conv_2d_33/instance_normalization_37/gamma
F:D@28feed_forward_2/conv_2d_33/instance_normalization_37/beta
E:C@2*feed_forward_2/conv_2d_34/conv2d_34/kernel
H:F29feed_forward_2/conv_2d_34/instance_normalization_38/gamma
G:E28feed_forward_2/conv_2d_34/instance_normalization_38/beta
R:P26feed_forward_2/residual_10/conv_2d_35/conv2d_35/kernel
T:R2Efeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/gamma
S:Q2Dfeed_forward_2/residual_10/conv_2d_35/instance_normalization_39/beta
R:P26feed_forward_2/residual_10/conv_2d_36/conv2d_36/kernel
T:R2Efeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/gamma
S:Q2Dfeed_forward_2/residual_10/conv_2d_36/instance_normalization_40/beta
R:P26feed_forward_2/residual_11/conv_2d_37/conv2d_37/kernel
T:R2Efeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/gamma
S:Q2Dfeed_forward_2/residual_11/conv_2d_37/instance_normalization_41/beta
R:P26feed_forward_2/residual_11/conv_2d_38/conv2d_38/kernel
T:R2Efeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/gamma
S:Q2Dfeed_forward_2/residual_11/conv_2d_38/instance_normalization_42/beta
R:P26feed_forward_2/residual_12/conv_2d_39/conv2d_39/kernel
T:R2Efeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/gamma
S:Q2Dfeed_forward_2/residual_12/conv_2d_39/instance_normalization_43/beta
R:P26feed_forward_2/residual_12/conv_2d_40/conv2d_40/kernel
T:R2Efeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/gamma
S:Q2Dfeed_forward_2/residual_12/conv_2d_40/instance_normalization_44/beta
R:P26feed_forward_2/residual_13/conv_2d_41/conv2d_41/kernel
T:R2Efeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/gamma
S:Q2Dfeed_forward_2/residual_13/conv_2d_41/instance_normalization_45/beta
R:P26feed_forward_2/residual_13/conv_2d_42/conv2d_42/kernel
T:R2Efeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/gamma
S:Q2Dfeed_forward_2/residual_13/conv_2d_42/instance_normalization_46/beta
R:P26feed_forward_2/residual_14/conv_2d_43/conv2d_43/kernel
T:R2Efeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/gamma
S:Q2Dfeed_forward_2/residual_14/conv_2d_43/instance_normalization_47/beta
R:P26feed_forward_2/residual_14/conv_2d_44/conv2d_44/kernel
T:R2Efeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/gamma
S:Q2Dfeed_forward_2/residual_14/conv_2d_44/instance_normalization_48/beta
V:T@2;feed_forward_2/resize_conv_2d_4/conv_2d_45/conv2d_45/kernel
X:V@2Jfeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/gamma
W:U@2Ifeed_forward_2/resize_conv_2d_4/conv_2d_45/instance_normalization_49/beta
U:S@ 2;feed_forward_2/resize_conv_2d_5/conv_2d_46/conv2d_46/kernel
X:V 2Jfeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/gamma
W:U 2Ifeed_forward_2/resize_conv_2d_5/conv_2d_46/instance_normalization_51/beta
D:B		 2*feed_forward_2/conv_2d_47/conv2d_47/kernel
G:E29feed_forward_2/conv_2d_47/instance_normalization_53/gamma
F:D28feed_forward_2/conv_2d_47/instance_normalization_53/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
'
S0"
trackable_list_wrapper
'
S0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ©layer_regularization_losses
ªnon_trainable_variables
«metrics
¬layer_metrics
trainable_variables
	variables
­layers
regularization_losses
__call__
+ÿ&call_and_return_all_conditional_losses
'ÿ"call_and_return_conditional_losses"
_generic_user_object
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ®layer_regularization_losses
¯non_trainable_variables
°metrics
±layer_metrics
trainable_variables
	variables
²layers
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
'
V0"
trackable_list_wrapper
'
V0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ³layer_regularization_losses
´non_trainable_variables
µmetrics
¶layer_metrics
trainable_variables
	variables
·layers
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ¸layer_regularization_losses
¹non_trainable_variables
ºmetrics
»layer_metrics
trainable_variables
	variables
¼layers
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ½layer_regularization_losses
¾non_trainable_variables
¿metrics
Àlayer_metrics
¢trainable_variables
£	variables
Álayers
¤regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Âlayer_regularization_losses
Ãnon_trainable_variables
Ämetrics
Ålayer_metrics
¦trainable_variables
§	variables
Ælayers
¨regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
ö	

\kernel
Çtrainable_variables
È	variables
Éregularization_losses
Ê	keras_api
+§&call_and_return_all_conditional_losses
¨__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_35", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	]gamma
^beta
Ëtrainable_variables
Ì	variables
Íregularization_losses
Î	keras_api
+©&call_and_return_all_conditional_losses
ª__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_39", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
\0
]1
^2"
trackable_list_wrapper
5
\0
]1
^2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Ïlayer_regularization_losses
Ðnon_trainable_variables
Ñmetrics
Òlayer_metrics
±trainable_variables
²	variables
Ólayers
³regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

_kernel
Ôtrainable_variables
Õ	variables
Öregularization_losses
×	keras_api
+«&call_and_return_all_conditional_losses
¬__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_36", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_36", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	`gamma
abeta
Øtrainable_variables
Ù	variables
Úregularization_losses
Û	keras_api
+­&call_and_return_all_conditional_losses
®__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_40", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
_0
`1
a2"
trackable_list_wrapper
5
_0
`1
a2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Ülayer_regularization_losses
Ýnon_trainable_variables
Þmetrics
ßlayer_metrics
·trainable_variables
¸	variables
àlayers
¹regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
#0
$1"
trackable_list_wrapper
ö	

bkernel
átrainable_variables
â	variables
ãregularization_losses
ä	keras_api
+¯&call_and_return_all_conditional_losses
°__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_37", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_37", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	cgamma
dbeta
åtrainable_variables
æ	variables
çregularization_losses
è	keras_api
+±&call_and_return_all_conditional_losses
²__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_41", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
b0
c1
d2"
trackable_list_wrapper
5
b0
c1
d2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 élayer_regularization_losses
ênon_trainable_variables
ëmetrics
ìlayer_metrics
Âtrainable_variables
Ã	variables
ílayers
Äregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

ekernel
îtrainable_variables
ï	variables
ðregularization_losses
ñ	keras_api
+³&call_and_return_all_conditional_losses
´__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_38", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_38", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	fgamma
gbeta
òtrainable_variables
ó	variables
ôregularization_losses
õ	keras_api
+µ&call_and_return_all_conditional_losses
¶__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_42", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_42", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
e0
f1
g2"
trackable_list_wrapper
5
e0
f1
g2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ölayer_regularization_losses
÷non_trainable_variables
ømetrics
ùlayer_metrics
Ètrainable_variables
É	variables
úlayers
Êregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
)0
*1"
trackable_list_wrapper
ö	

hkernel
ûtrainable_variables
ü	variables
ýregularization_losses
þ	keras_api
+·&call_and_return_all_conditional_losses
¸__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_39", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_39", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	igamma
jbeta
ÿtrainable_variables
	variables
regularization_losses
	keras_api
+¹&call_and_return_all_conditional_losses
º__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_43", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_43", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
h0
i1
j2"
trackable_list_wrapper
5
h0
i1
j2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
Ótrainable_variables
Ô	variables
layers
Õregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

kkernel
trainable_variables
	variables
regularization_losses
	keras_api
+»&call_and_return_all_conditional_losses
¼__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_40", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_40", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	lgamma
mbeta
trainable_variables
	variables
regularization_losses
	keras_api
+½&call_and_return_all_conditional_losses
¾__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_44", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
k0
l1
m2"
trackable_list_wrapper
5
k0
l1
m2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
Ùtrainable_variables
Ú	variables
layers
Ûregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
/0
01"
trackable_list_wrapper
ö	

nkernel
trainable_variables
	variables
regularization_losses
	keras_api
+¿&call_and_return_all_conditional_losses
À__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_41", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_41", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	ogamma
pbeta
trainable_variables
	variables
regularization_losses
	keras_api
+Á&call_and_return_all_conditional_losses
Â__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_45", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
n0
o1
p2"
trackable_list_wrapper
5
n0
o1
p2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
non_trainable_variables
metrics
 layer_metrics
ätrainable_variables
å	variables
¡layers
æregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

qkernel
¢trainable_variables
£	variables
¤regularization_losses
¥	keras_api
+Ã&call_and_return_all_conditional_losses
Ä__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_42", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_42", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	rgamma
sbeta
¦trainable_variables
§	variables
¨regularization_losses
©	keras_api
+Å&call_and_return_all_conditional_losses
Æ__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_46", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
q0
r1
s2"
trackable_list_wrapper
5
q0
r1
s2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ªlayer_regularization_losses
«non_trainable_variables
¬metrics
­layer_metrics
êtrainable_variables
ë	variables
®layers
ìregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
50
61"
trackable_list_wrapper
ö	

tkernel
¯trainable_variables
°	variables
±regularization_losses
²	keras_api
+Ç&call_and_return_all_conditional_losses
È__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_43", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_43", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	ugamma
vbeta
³trainable_variables
´	variables
µregularization_losses
¶	keras_api
+É&call_and_return_all_conditional_losses
Ê__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_47", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_47", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
t0
u1
v2"
trackable_list_wrapper
5
t0
u1
v2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ·layer_regularization_losses
¸non_trainable_variables
¹metrics
ºlayer_metrics
õtrainable_variables
ö	variables
»layers
÷regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ö	

wkernel
¼trainable_variables
½	variables
¾regularization_losses
¿	keras_api
+Ë&call_and_return_all_conditional_losses
Ì__call__"Õ
_tf_keras_layer»{"class_name": "Conv2D", "name": "conv2d_44", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_44", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 252, 252, 128]}}

	xgamma
ybeta
Àtrainable_variables
Á	variables
Âregularization_losses
Ã	keras_api
+Í&call_and_return_all_conditional_losses
Î__call__"ð
_tf_keras_layerÖ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_48", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_48", "trainable": true, "dtype": "float32", "groups": 128, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 250, 250, 128]}}
5
w0
x1
y2"
trackable_list_wrapper
5
w0
x1
y2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Älayer_regularization_losses
Ånon_trainable_variables
Æmetrics
Çlayer_metrics
ûtrainable_variables
ü	variables
Èlayers
ýregularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
;0
<1"
trackable_list_wrapper
÷	

zkernel
Étrainable_variables
Ê	variables
Ëregularization_losses
Ì	keras_api
+Ï&call_and_return_all_conditional_losses
Ð__call__"Ö
_tf_keras_layer¼{"class_name": "Conv2D", "name": "conv2d_45", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_45", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1002, 1002, 128]}}

	{gamma
|beta
Ítrainable_variables
Î	variables
Ïregularization_losses
Ð	keras_api
+Ñ&call_and_return_all_conditional_losses
Ò__call__"í
_tf_keras_layerÓ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_49", "trainable": true, "dtype": "float32", "groups": 64, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 500, 500, 64]}}
5
z0
{1
|2"
trackable_list_wrapper
5
z0
{1
|2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Ñlayer_regularization_losses
Ònon_trainable_variables
Ómetrics
Ôlayer_metrics
trainable_variables
	variables
Õlayers
regularization_losses
 __call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
A0
B1"
trackable_list_wrapper
õ	

}kernel
Ötrainable_variables
×	variables
Øregularization_losses
Ù	keras_api
+Ó&call_and_return_all_conditional_losses
Ô__call__"Ô
_tf_keras_layerº{"class_name": "Conv2D", "name": "conv2d_46", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_46", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 2002, 2002, 64]}}

	~gamma
beta
Útrainable_variables
Û	variables
Üregularization_losses
Ý	keras_api
+Õ&call_and_return_all_conditional_losses
Ö__call__"ï
_tf_keras_layerÕ{"class_name": "Addons>InstanceNormalization", "name": "instance_normalization_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "instance_normalization_51", "trainable": true, "dtype": "float32", "groups": 32, "axis": -1, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1000, 1000, 32]}}
5
}0
~1
2"
trackable_list_wrapper
5
}0
~1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Þlayer_regularization_losses
ßnon_trainable_variables
àmetrics
álayer_metrics
trainable_variables
	variables
âlayers
regularization_losses
¢__call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ãlayer_regularization_losses
änon_trainable_variables
åmetrics
ælayer_metrics
trainable_variables
	variables
çlayers
regularization_losses
¤__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 èlayer_regularization_losses
énon_trainable_variables
êmetrics
ëlayer_metrics
 trainable_variables
¡	variables
ìlayers
¢regularization_losses
¦__call__
+¥&call_and_return_all_conditional_losses
'¥"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
M0
N1"
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
'
\0"
trackable_list_wrapper
'
\0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ílayer_regularization_losses
înon_trainable_variables
ïmetrics
ðlayer_metrics
Çtrainable_variables
È	variables
ñlayers
Éregularization_losses
¨__call__
+§&call_and_return_all_conditional_losses
'§"call_and_return_conditional_losses"
_generic_user_object
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 òlayer_regularization_losses
ónon_trainable_variables
ômetrics
õlayer_metrics
Ëtrainable_variables
Ì	variables
ölayers
Íregularization_losses
ª__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
¯0
°1"
trackable_list_wrapper
'
_0"
trackable_list_wrapper
'
_0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ÷layer_regularization_losses
ønon_trainable_variables
ùmetrics
úlayer_metrics
Ôtrainable_variables
Õ	variables
ûlayers
Öregularization_losses
¬__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ülayer_regularization_losses
ýnon_trainable_variables
þmetrics
ÿlayer_metrics
Øtrainable_variables
Ù	variables
layers
Úregularization_losses
®__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
µ0
¶1"
trackable_list_wrapper
'
b0"
trackable_list_wrapper
'
b0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
átrainable_variables
â	variables
layers
ãregularization_losses
°__call__
+¯&call_and_return_all_conditional_losses
'¯"call_and_return_conditional_losses"
_generic_user_object
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
åtrainable_variables
æ	variables
layers
çregularization_losses
²__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
À0
Á1"
trackable_list_wrapper
'
e0"
trackable_list_wrapper
'
e0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
îtrainable_variables
ï	variables
layers
ðregularization_losses
´__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
.
f0
g1"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
òtrainable_variables
ó	variables
layers
ôregularization_losses
¶__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
Æ0
Ç1"
trackable_list_wrapper
'
h0"
trackable_list_wrapper
'
h0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
ûtrainable_variables
ü	variables
layers
ýregularization_losses
¸__call__
+·&call_and_return_all_conditional_losses
'·"call_and_return_conditional_losses"
_generic_user_object
.
i0
j1"
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
ÿtrainable_variables
	variables
layers
regularization_losses
º__call__
+¹&call_and_return_all_conditional_losses
'¹"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
Ñ0
Ò1"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 layer_regularization_losses
 non_trainable_variables
¡metrics
¢layer_metrics
trainable_variables
	variables
£layers
regularization_losses
¼__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ¤layer_regularization_losses
¥non_trainable_variables
¦metrics
§layer_metrics
trainable_variables
	variables
¨layers
regularization_losses
¾__call__
+½&call_and_return_all_conditional_losses
'½"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
×0
Ø1"
trackable_list_wrapper
'
n0"
trackable_list_wrapper
'
n0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ©layer_regularization_losses
ªnon_trainable_variables
«metrics
¬layer_metrics
trainable_variables
	variables
­layers
regularization_losses
À__call__
+¿&call_and_return_all_conditional_losses
'¿"call_and_return_conditional_losses"
_generic_user_object
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ®layer_regularization_losses
¯non_trainable_variables
°metrics
±layer_metrics
trainable_variables
	variables
²layers
regularization_losses
Â__call__
+Á&call_and_return_all_conditional_losses
'Á"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
â0
ã1"
trackable_list_wrapper
'
q0"
trackable_list_wrapper
'
q0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ³layer_regularization_losses
´non_trainable_variables
µmetrics
¶layer_metrics
¢trainable_variables
£	variables
·layers
¤regularization_losses
Ä__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ¸layer_regularization_losses
¹non_trainable_variables
ºmetrics
»layer_metrics
¦trainable_variables
§	variables
¼layers
¨regularization_losses
Æ__call__
+Å&call_and_return_all_conditional_losses
'Å"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
è0
é1"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 ½layer_regularization_losses
¾non_trainable_variables
¿metrics
Àlayer_metrics
¯trainable_variables
°	variables
Álayers
±regularization_losses
È__call__
+Ç&call_and_return_all_conditional_losses
'Ç"call_and_return_conditional_losses"
_generic_user_object
.
u0
v1"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Âlayer_regularization_losses
Ãnon_trainable_variables
Ämetrics
Ålayer_metrics
³trainable_variables
´	variables
Ælayers
µregularization_losses
Ê__call__
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
ó0
ô1"
trackable_list_wrapper
'
w0"
trackable_list_wrapper
'
w0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Çlayer_regularization_losses
Ènon_trainable_variables
Émetrics
Êlayer_metrics
¼trainable_variables
½	variables
Ëlayers
¾regularization_losses
Ì__call__
+Ë&call_and_return_all_conditional_losses
'Ë"call_and_return_conditional_losses"
_generic_user_object
.
x0
y1"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Ìlayer_regularization_losses
Ínon_trainable_variables
Îmetrics
Ïlayer_metrics
Àtrainable_variables
Á	variables
Ðlayers
Âregularization_losses
Î__call__
+Í&call_and_return_all_conditional_losses
'Í"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
ù0
ú1"
trackable_list_wrapper
'
z0"
trackable_list_wrapper
'
z0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Ñlayer_regularization_losses
Ònon_trainable_variables
Ómetrics
Ôlayer_metrics
Étrainable_variables
Ê	variables
Õlayers
Ëregularization_losses
Ð__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses"
_generic_user_object
.
{0
|1"
trackable_list_wrapper
.
{0
|1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Ölayer_regularization_losses
×non_trainable_variables
Ømetrics
Ùlayer_metrics
Ítrainable_variables
Î	variables
Úlayers
Ïregularization_losses
Ò__call__
+Ñ&call_and_return_all_conditional_losses
'Ñ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
'
}0"
trackable_list_wrapper
'
}0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 Ûlayer_regularization_losses
Ünon_trainable_variables
Ýmetrics
Þlayer_metrics
Ötrainable_variables
×	variables
ßlayers
Øregularization_losses
Ô__call__
+Ó&call_and_return_all_conditional_losses
'Ó"call_and_return_conditional_losses"
_generic_user_object
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 àlayer_regularization_losses
ánon_trainable_variables
âmetrics
ãlayer_metrics
Útrainable_variables
Û	variables
älayers
Üregularization_losses
Ö__call__
+Õ&call_and_return_all_conditional_losses
'Õ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 2
H__inference_feed_forward_2_layer_call_and_return_conditional_losses_5723Ð
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
__inference__wrapped_model_3742À
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
2
-__inference_feed_forward_2_layer_call_fn_5857Ð
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
û2ø
D__inference_conv_2d_32_layer_call_and_return_conditional_losses_6041¯
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
)__inference_conv_2d_32_layer_call_fn_6054¯
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
D__inference_conv_2d_33_layer_call_and_return_conditional_losses_6103¯
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
)__inference_conv_2d_33_layer_call_fn_6116¯
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
D__inference_conv_2d_34_layer_call_and_return_conditional_losses_6165¯
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
)__inference_conv_2d_34_layer_call_fn_6178¯
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
ï2ì
E__inference_residual_10_layer_call_and_return_conditional_losses_6272¢
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
Ô2Ñ
*__inference_residual_10_layer_call_fn_6293¢
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
ï2ì
E__inference_residual_11_layer_call_and_return_conditional_losses_6387¢
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
Ô2Ñ
*__inference_residual_11_layer_call_fn_6408¢
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
ï2ì
E__inference_residual_12_layer_call_and_return_conditional_losses_6502¢
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
Ô2Ñ
*__inference_residual_12_layer_call_fn_6523¢
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
ï2ì
E__inference_residual_13_layer_call_and_return_conditional_losses_6617¢
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
Ô2Ñ
*__inference_residual_13_layer_call_fn_6638¢
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
ï2ì
E__inference_residual_14_layer_call_and_return_conditional_losses_6732¢
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
Ô2Ñ
*__inference_residual_14_layer_call_fn_6753¢
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
J__inference_resize_conv_2d_4_layer_call_and_return_conditional_losses_6804¢
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
/__inference_resize_conv_2d_4_layer_call_fn_6817¢
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
J__inference_resize_conv_2d_5_layer_call_and_return_conditional_losses_6868¢
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
/__inference_resize_conv_2d_5_layer_call_fn_6881¢
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
û2ø
D__inference_conv_2d_47_layer_call_and_return_conditional_losses_6929¯
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
)__inference_conv_2d_47_layer_call_fn_6942¯
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
"__inference_signature_wrapper_5992input_1"
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
²2¯
S__inference_instance_normalization_36_layer_call_and_return_conditional_losses_3786×
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
2
8__inference_instance_normalization_36_layer_call_fn_3796×
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
²2¯
S__inference_instance_normalization_37_layer_call_and_return_conditional_losses_3840×
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
2
8__inference_instance_normalization_37_layer_call_fn_3850×
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
³2°
S__inference_instance_normalization_38_layer_call_and_return_conditional_losses_3894Ø
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
2
8__inference_instance_normalization_38_layer_call_fn_3904Ø
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
²2¯
S__inference_instance_normalization_53_layer_call_and_return_conditional_losses_4596×
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
2
8__inference_instance_normalization_53_layer_call_fn_4606×
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
³2°
S__inference_instance_normalization_39_layer_call_and_return_conditional_losses_3948Ø
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
2
8__inference_instance_normalization_39_layer_call_fn_3958Ø
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
³2°
S__inference_instance_normalization_40_layer_call_and_return_conditional_losses_4002Ø
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
2
8__inference_instance_normalization_40_layer_call_fn_4012Ø
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
³2°
S__inference_instance_normalization_41_layer_call_and_return_conditional_losses_4056Ø
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
2
8__inference_instance_normalization_41_layer_call_fn_4066Ø
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
³2°
S__inference_instance_normalization_42_layer_call_and_return_conditional_losses_4110Ø
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
2
8__inference_instance_normalization_42_layer_call_fn_4120Ø
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
³2°
S__inference_instance_normalization_43_layer_call_and_return_conditional_losses_4164Ø
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
2
8__inference_instance_normalization_43_layer_call_fn_4174Ø
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
³2°
S__inference_instance_normalization_44_layer_call_and_return_conditional_losses_4218Ø
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
2
8__inference_instance_normalization_44_layer_call_fn_4228Ø
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
³2°
S__inference_instance_normalization_45_layer_call_and_return_conditional_losses_4272Ø
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
2
8__inference_instance_normalization_45_layer_call_fn_4282Ø
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
³2°
S__inference_instance_normalization_46_layer_call_and_return_conditional_losses_4326Ø
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
2
8__inference_instance_normalization_46_layer_call_fn_4336Ø
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
³2°
S__inference_instance_normalization_47_layer_call_and_return_conditional_losses_4380Ø
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
2
8__inference_instance_normalization_47_layer_call_fn_4390Ø
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
³2°
S__inference_instance_normalization_48_layer_call_and_return_conditional_losses_4434Ø
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
2
8__inference_instance_normalization_48_layer_call_fn_4444Ø
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
²2¯
S__inference_instance_normalization_49_layer_call_and_return_conditional_losses_4488×
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
2
8__inference_instance_normalization_49_layer_call_fn_4498×
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
²2¯
S__inference_instance_normalization_51_layer_call_and_return_conditional_losses_4542×
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
2
8__inference_instance_normalization_51_layer_call_fn_4552×
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
__inference__wrapped_model_3742ÐS×STUØVWXÙYZ[Ú\]^Û_`aÜbcdÝefgÞhijßklmànopáqrsâtuvãwxyäz{|å}~æ:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿèè
ª "=ª:
8
output_1,)
output_1ÿÿÿÿÿÿÿÿÿèè¿
D__inference_conv_2d_32_layer_call_and_return_conditional_losses_6041w×STU=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿèè 
 
)__inference_conv_2d_32_layer_call_fn_6054j×STU=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè
p
ª ""ÿÿÿÿÿÿÿÿÿèè ¿
D__inference_conv_2d_33_layer_call_and_return_conditional_losses_6103wØVWX=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè 
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿôô@
 
)__inference_conv_2d_33_layer_call_fn_6116jØVWX=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè 
p
ª ""ÿÿÿÿÿÿÿÿÿôô@À
D__inference_conv_2d_34_layer_call_and_return_conditional_losses_6165xÙYZ[=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿôô@
p
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
)__inference_conv_2d_34_layer_call_fn_6178kÙYZ[=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿôô@
p
ª "# ÿÿÿÿÿÿÿÿÿúúÂ
D__inference_conv_2d_47_layer_call_and_return_conditional_losses_6929zæ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè 
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿèè
 
)__inference_conv_2d_47_layer_call_fn_6942mæ=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿèè 
p 
ª ""ÿÿÿÿÿÿÿÿÿèè
H__inference_feed_forward_2_layer_call_and_return_conditional_losses_5723ÂS×STUØVWXÙYZ[Ú\]^Û_`aÜbcdÝefgÞhijßklmànopáqrsâtuvãwxyäz{|å}~æ:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿèè
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿèè
 ç
-__inference_feed_forward_2_layer_call_fn_5857µS×STUØVWXÙYZ[Ú\]^Û_`aÜbcdÝefgÞhijßklmànopáqrsâtuvãwxyäz{|å}~æ:¢7
0¢-
+(
input_1ÿÿÿÿÿÿÿÿÿèè
ª ""ÿÿÿÿÿÿÿÿÿèèè
S__inference_instance_normalization_36_layer_call_and_return_conditional_losses_3786TUI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 À
8__inference_instance_normalization_36_layer_call_fn_3796TUI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ è
S__inference_instance_normalization_37_layer_call_and_return_conditional_losses_3840WXI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 À
8__inference_instance_normalization_37_layer_call_fn_3850WXI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@ê
S__inference_instance_normalization_38_layer_call_and_return_conditional_losses_3894Z[J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_38_layer_call_fn_3904Z[J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_39_layer_call_and_return_conditional_losses_3948]^J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_39_layer_call_fn_3958]^J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_40_layer_call_and_return_conditional_losses_4002`aJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_40_layer_call_fn_4012`aJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_41_layer_call_and_return_conditional_losses_4056cdJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_41_layer_call_fn_4066cdJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_42_layer_call_and_return_conditional_losses_4110fgJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_42_layer_call_fn_4120fgJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_43_layer_call_and_return_conditional_losses_4164ijJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_43_layer_call_fn_4174ijJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_44_layer_call_and_return_conditional_losses_4218lmJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_44_layer_call_fn_4228lmJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_45_layer_call_and_return_conditional_losses_4272opJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_45_layer_call_fn_4282opJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_46_layer_call_and_return_conditional_losses_4326rsJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_46_layer_call_fn_4336rsJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_47_layer_call_and_return_conditional_losses_4380uvJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_47_layer_call_fn_4390uvJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
S__inference_instance_normalization_48_layer_call_and_return_conditional_losses_4434xyJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_48_layer_call_fn_4444xyJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿè
S__inference_instance_normalization_49_layer_call_and_return_conditional_losses_4488{|I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 À
8__inference_instance_normalization_49_layer_call_fn_4498{|I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@è
S__inference_instance_normalization_51_layer_call_and_return_conditional_losses_4542~I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 À
8__inference_instance_normalization_51_layer_call_fn_4552~I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ê
S__inference_instance_normalization_53_layer_call_and_return_conditional_losses_4596I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
8__inference_instance_normalization_53_layer_call_fn_4606I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
E__inference_residual_10_layer_call_and_return_conditional_losses_6272z
Ú\]^Û_`a:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
*__inference_residual_10_layer_call_fn_6293m
Ú\]^Û_`a:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÃ
E__inference_residual_11_layer_call_and_return_conditional_losses_6387z
ÜbcdÝefg:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
*__inference_residual_11_layer_call_fn_6408m
ÜbcdÝefg:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÃ
E__inference_residual_12_layer_call_and_return_conditional_losses_6502z
Þhijßklm:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
*__inference_residual_12_layer_call_fn_6523m
Þhijßklm:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÃ
E__inference_residual_13_layer_call_and_return_conditional_losses_6617z
ànopáqrs:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
*__inference_residual_13_layer_call_fn_6638m
ànopáqrs:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÃ
E__inference_residual_14_layer_call_and_return_conditional_losses_6732z
âtuvãwxy:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿúú
 
*__inference_residual_14_layer_call_fn_6753m
âtuvãwxy:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "# ÿÿÿÿÿÿÿÿÿúúÂ
J__inference_resize_conv_2d_4_layer_call_and_return_conditional_losses_6804täz{|:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿôô@
 
/__inference_resize_conv_2d_4_layer_call_fn_6817gäz{|:¢7
0¢-
+(
inputsÿÿÿÿÿÿÿÿÿúú
ª ""ÿÿÿÿÿÿÿÿÿôô@Á
J__inference_resize_conv_2d_5_layer_call_and_return_conditional_losses_6868så}~9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿôô@
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿèè 
 
/__inference_resize_conv_2d_5_layer_call_fn_6881få}~9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿôô@
ª ""ÿÿÿÿÿÿÿÿÿèè 
"__inference_signature_wrapper_5992ÛS×STUØVWXÙYZ[Ú\]^Û_`aÜbcdÝefgÞhijßklmànopáqrsâtuvãwxyäz{|å}~æE¢B
¢ 
;ª8
6
input_1+(
input_1ÿÿÿÿÿÿÿÿÿèè"=ª:
8
output_1,)
output_1ÿÿÿÿÿÿÿÿÿèè