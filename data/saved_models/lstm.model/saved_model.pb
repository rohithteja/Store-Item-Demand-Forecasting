ָ3
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
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
executor_typestring ?
?
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718ք2
{
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_26/kernel
t
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes
:	?*
dtype0
s
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_26/bias
l
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes	
:?*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
lstm_26/lstm_cell_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_26/lstm_cell_26/kernel
?
/lstm_26/lstm_cell_26/kernel/Read/ReadVariableOpReadVariableOplstm_26/lstm_cell_26/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_26/lstm_cell_26/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%lstm_26/lstm_cell_26/recurrent_kernel
?
9lstm_26/lstm_cell_26/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_26/lstm_cell_26/recurrent_kernel*
_output_shapes

:*
dtype0
?
lstm_26/lstm_cell_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_26/lstm_cell_26/bias
?
-lstm_26/lstm_cell_26/bias/Read/ReadVariableOpReadVariableOplstm_26/lstm_cell_26/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_26/kernel/m
?
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes
:	?*
dtype0
?
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_26/bias/m
z
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_26/lstm_cell_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_26/lstm_cell_26/kernel/m
?
6Adam/lstm_26/lstm_cell_26/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_26/lstm_cell_26/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_26/lstm_cell_26/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_26/lstm_cell_26/recurrent_kernel/m
?
@Adam/lstm_26/lstm_cell_26/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_26/lstm_cell_26/recurrent_kernel/m*
_output_shapes

:*
dtype0
?
 Adam/lstm_26/lstm_cell_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_26/lstm_cell_26/bias/m
?
4Adam/lstm_26/lstm_cell_26/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_26/lstm_cell_26/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*'
shared_nameAdam/dense_26/kernel/v
?
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes
:	?*
dtype0
?
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_26/bias/v
z
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes	
:?*
dtype0
?
"Adam/lstm_26/lstm_cell_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_26/lstm_cell_26/kernel/v
?
6Adam/lstm_26/lstm_cell_26/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_26/lstm_cell_26/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_26/lstm_cell_26/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*=
shared_name.,Adam/lstm_26/lstm_cell_26/recurrent_kernel/v
?
@Adam/lstm_26/lstm_cell_26/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_26/lstm_cell_26/recurrent_kernel/v*
_output_shapes

:*
dtype0
?
 Adam/lstm_26/lstm_cell_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_26/lstm_cell_26/bias/v
?
4Adam/lstm_26/lstm_cell_26/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_26/lstm_cell_26/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?!
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*? 
value? B?  B? 
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
l
	cell


state_spec
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	decay
learning_ratem<m=m>m?m@vAvBvCvDvE
#
0
1
2
3
4
#
0
1
2
3
4
 
?
metrics
trainable_variables
	variables
layer_regularization_losses
regularization_losses
layer_metrics

 layers
!non_trainable_variables
 
?
"
state_size

kernel
recurrent_kernel
bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
 

0
1
2

0
1
2
 
?
'metrics

(states
trainable_variables
	variables
)layer_regularization_losses
regularization_losses
*layer_metrics

+layers
,non_trainable_variables
[Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
-metrics
.non_trainable_variables
trainable_variables
	variables
regularization_losses
/layer_metrics

0layers
1layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_26/lstm_cell_26/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_26/lstm_cell_26/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_26/lstm_cell_26/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE

20
 
 

0
1
 
 

0
1
2

0
1
2
 
?
3metrics
4non_trainable_variables
#trainable_variables
$	variables
%regularization_losses
5layer_metrics

6layers
7layer_regularization_losses
 
 
 
 

	0
 
 
 
 
 
 
4
	8total
	9count
:	variables
;	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

80
91

:	variables
~|
VARIABLE_VALUEAdam/dense_26/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_26/lstm_cell_26/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_26/lstm_cell_26/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_26/lstm_cell_26/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_26/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_26/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_26/lstm_cell_26/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_26/lstm_cell_26/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_26/lstm_cell_26/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_26_inputPlaceholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_26_inputlstm_26/lstm_cell_26/kernel%lstm_26/lstm_cell_26/recurrent_kernellstm_26/lstm_cell_26/biasdense_26/kerneldense_26/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_672232
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_26/lstm_cell_26/kernel/Read/ReadVariableOp9lstm_26/lstm_cell_26/recurrent_kernel/Read/ReadVariableOp-lstm_26/lstm_cell_26/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp6Adam/lstm_26/lstm_cell_26/kernel/m/Read/ReadVariableOp@Adam/lstm_26/lstm_cell_26/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_26/lstm_cell_26/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp6Adam/lstm_26/lstm_cell_26/kernel/v/Read/ReadVariableOp@Adam/lstm_26/lstm_cell_26/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_26/lstm_cell_26/bias/v/Read/ReadVariableOpConst*#
Tin
2	*
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
GPU2*0J 8? *(
f#R!
__inference__traced_save_675036
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_26/kerneldense_26/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_26/lstm_cell_26/kernel%lstm_26/lstm_cell_26/recurrent_kernellstm_26/lstm_cell_26/biastotalcountAdam/dense_26/kernel/mAdam/dense_26/bias/m"Adam/lstm_26/lstm_cell_26/kernel/m,Adam/lstm_26/lstm_cell_26/recurrent_kernel/m Adam/lstm_26/lstm_cell_26/bias/mAdam/dense_26/kernel/vAdam/dense_26/bias/v"Adam/lstm_26/lstm_cell_26/kernel/v,Adam/lstm_26/lstm_cell_26/recurrent_kernel/v Adam/lstm_26/lstm_cell_26/bias/v*"
Tin
2*
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
GPU2*0J 8? *+
f&R$
"__inference__traced_restore_675112ڟ1
?S
?
'__forward_gpu_lstm_with_fallback_674490

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_43825398-6e8f-4df9-81bb-7d796566d7c4*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_674315_674491*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?,
?
while_body_674135
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
?S
?
'__forward_gpu_lstm_with_fallback_671608

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_10607fd0-26fc-4b8c-b024-afd32fa98eb6*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_671433_671609*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?H
?
)__inference_gpu_lstm_with_fallback_669644

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_8d00adc9-50d7-45a9-9b27-b192ca04faa5*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?,
?
while_body_673700
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
?A
?
 __inference_standard_lstm_673785

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_673700*
condR
while_cond_673699*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_4f9b220b-64b5-4411-85a4-12c8658b44cc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
??
?
;__inference___backward_gpu_lstm_with_fallback_672960_673136
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:?????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:?????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:??????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:??????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: :?????????::?????????:?????????::??????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_58b212ac-7e4d-4838-ac9c-e26cb3499808*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_673135*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :1-
+
_output_shapes
:?????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::2
.
,
_output_shapes
:??????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?T
?
'__forward_gpu_lstm_with_fallback_669820

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_8d00adc9-50d7-45a9-9b27-b192ca04faa5*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_669645_669821*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?H
?
)__inference_gpu_lstm_with_fallback_670101

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_44409b7a-8107-4c51-b016-0155de497ba3*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?H
?
)__inference_gpu_lstm_with_fallback_671432

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_10607fd0-26fc-4b8c-b024-afd32fa98eb6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?S
?
'__forward_gpu_lstm_with_fallback_669375

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_88bfb5f8-9539-476a-ab4c-07560fb4b128*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_669200_669376*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?H
?
)__inference_gpu_lstm_with_fallback_673879

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_4f9b220b-64b5-4411-85a4-12c8658b44cc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?@
?
 __inference_standard_lstm_672424

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_672339*
condR
while_cond_672338*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_aed5e5d6-7d04-4bfc-bf72-e90fa87741a6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?
?
(__inference_lstm_26_layer_call_fn_673155
inputs_0
unknown:	?
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_6698232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?1
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_672703

inputs7
$lstm_26_read_readvariableop_resource:	?8
&lstm_26_read_1_readvariableop_resource:4
&lstm_26_read_2_readvariableop_resource::
'dense_26_matmul_readvariableop_resource:	?7
(dense_26_biasadd_readvariableop_resource:	?
identity??dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?lstm_26/Read/ReadVariableOp?lstm_26/Read_1/ReadVariableOp?lstm_26/Read_2/ReadVariableOpT
lstm_26/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_26/Shape?
lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_26/strided_slice/stack?
lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_26/strided_slice/stack_1?
lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_26/strided_slice/stack_2?
lstm_26/strided_sliceStridedSlicelstm_26/Shape:output:0$lstm_26/strided_slice/stack:output:0&lstm_26/strided_slice/stack_1:output:0&lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_26/strided_slicel
lstm_26/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_26/zeros/mul/y?
lstm_26/zeros/mulMullstm_26/strided_slice:output:0lstm_26/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_26/zeros/mulo
lstm_26/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_26/zeros/Less/y?
lstm_26/zeros/LessLesslstm_26/zeros/mul:z:0lstm_26/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_26/zeros/Lessr
lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_26/zeros/packed/1?
lstm_26/zeros/packedPacklstm_26/strided_slice:output:0lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_26/zeros/packedo
lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_26/zeros/Const?
lstm_26/zerosFilllstm_26/zeros/packed:output:0lstm_26/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_26/zerosp
lstm_26/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_26/zeros_1/mul/y?
lstm_26/zeros_1/mulMullstm_26/strided_slice:output:0lstm_26/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_26/zeros_1/muls
lstm_26/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_26/zeros_1/Less/y?
lstm_26/zeros_1/LessLesslstm_26/zeros_1/mul:z:0lstm_26/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_26/zeros_1/Lessv
lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_26/zeros_1/packed/1?
lstm_26/zeros_1/packedPacklstm_26/strided_slice:output:0!lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_26/zeros_1/packeds
lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_26/zeros_1/Const?
lstm_26/zeros_1Filllstm_26/zeros_1/packed:output:0lstm_26/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_26/zeros_1?
lstm_26/Read/ReadVariableOpReadVariableOp$lstm_26_read_readvariableop_resource*
_output_shapes
:	?*
dtype02
lstm_26/Read/ReadVariableOp
lstm_26/IdentityIdentity#lstm_26/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_26/Identity?
lstm_26/Read_1/ReadVariableOpReadVariableOp&lstm_26_read_1_readvariableop_resource*
_output_shapes

:*
dtype02
lstm_26/Read_1/ReadVariableOp?
lstm_26/Identity_1Identity%lstm_26/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2
lstm_26/Identity_1?
lstm_26/Read_2/ReadVariableOpReadVariableOp&lstm_26_read_2_readvariableop_resource*
_output_shapes
:*
dtype02
lstm_26/Read_2/ReadVariableOp?
lstm_26/Identity_2Identity%lstm_26/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
lstm_26/Identity_2?
lstm_26/PartitionedCallPartitionedCallinputslstm_26/zeros:output:0lstm_26/zeros_1:output:0lstm_26/Identity:output:0lstm_26/Identity_1:output:0lstm_26/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:?????????:?????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6724242
lstm_26/PartitionedCall?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMul lstm_26/PartitionedCall:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/BiasAdd?
IdentityIdentitydense_26/BiasAdd:output:0 ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp^lstm_26/Read/ReadVariableOp^lstm_26/Read_1/ReadVariableOp^lstm_26/Read_2/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2:
lstm_26/Read/ReadVariableOplstm_26/Read/ReadVariableOp2>
lstm_26/Read_1/ReadVariableOplstm_26/Read_1/ReadVariableOp2>
lstm_26/Read_2/ReadVariableOplstm_26/Read_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?S
?
'__forward_gpu_lstm_with_fallback_673135

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_58b212ac-7e4d-4838-ac9c-e26cb3499808*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_672960_673136*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?
?
.__inference_sequential_26_layer_call_fn_671649
lstm_26_input
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_6716362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namelstm_26_input
?,
?
while_body_671749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
??
?
;__inference___backward_gpu_lstm_with_fallback_672519_672695
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:?????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:?????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:??????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:??????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: :?????????::?????????:?????????::??????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_aed5e5d6-7d04-4bfc-bf72-e90fa87741a6*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_672694*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :1-
+
_output_shapes
:?????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::2
.
,
_output_shapes
:??????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?@
?
 __inference_standard_lstm_671338

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_671253*
condR
while_cond_671252*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_10607fd0-26fc-4b8c-b024-afd32fa98eb6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?A
?
 __inference_standard_lstm_669550

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_669465*
condR
while_cond_669464*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_8d00adc9-50d7-45a9-9b27-b192ca04faa5*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?1
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_673144

inputs7
$lstm_26_read_readvariableop_resource:	?8
&lstm_26_read_1_readvariableop_resource:4
&lstm_26_read_2_readvariableop_resource::
'dense_26_matmul_readvariableop_resource:	?7
(dense_26_biasadd_readvariableop_resource:	?
identity??dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?lstm_26/Read/ReadVariableOp?lstm_26/Read_1/ReadVariableOp?lstm_26/Read_2/ReadVariableOpT
lstm_26/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_26/Shape?
lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_26/strided_slice/stack?
lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_26/strided_slice/stack_1?
lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_26/strided_slice/stack_2?
lstm_26/strided_sliceStridedSlicelstm_26/Shape:output:0$lstm_26/strided_slice/stack:output:0&lstm_26/strided_slice/stack_1:output:0&lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_26/strided_slicel
lstm_26/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_26/zeros/mul/y?
lstm_26/zeros/mulMullstm_26/strided_slice:output:0lstm_26/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_26/zeros/mulo
lstm_26/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_26/zeros/Less/y?
lstm_26/zeros/LessLesslstm_26/zeros/mul:z:0lstm_26/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_26/zeros/Lessr
lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_26/zeros/packed/1?
lstm_26/zeros/packedPacklstm_26/strided_slice:output:0lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_26/zeros/packedo
lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_26/zeros/Const?
lstm_26/zerosFilllstm_26/zeros/packed:output:0lstm_26/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_26/zerosp
lstm_26/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_26/zeros_1/mul/y?
lstm_26/zeros_1/mulMullstm_26/strided_slice:output:0lstm_26/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_26/zeros_1/muls
lstm_26/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_26/zeros_1/Less/y?
lstm_26/zeros_1/LessLesslstm_26/zeros_1/mul:z:0lstm_26/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_26/zeros_1/Lessv
lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_26/zeros_1/packed/1?
lstm_26/zeros_1/packedPacklstm_26/strided_slice:output:0!lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_26/zeros_1/packeds
lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_26/zeros_1/Const?
lstm_26/zeros_1Filllstm_26/zeros_1/packed:output:0lstm_26/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
lstm_26/zeros_1?
lstm_26/Read/ReadVariableOpReadVariableOp$lstm_26_read_readvariableop_resource*
_output_shapes
:	?*
dtype02
lstm_26/Read/ReadVariableOp
lstm_26/IdentityIdentity#lstm_26/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
lstm_26/Identity?
lstm_26/Read_1/ReadVariableOpReadVariableOp&lstm_26_read_1_readvariableop_resource*
_output_shapes

:*
dtype02
lstm_26/Read_1/ReadVariableOp?
lstm_26/Identity_1Identity%lstm_26/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2
lstm_26/Identity_1?
lstm_26/Read_2/ReadVariableOpReadVariableOp&lstm_26_read_2_readvariableop_resource*
_output_shapes
:*
dtype02
lstm_26/Read_2/ReadVariableOp?
lstm_26/Identity_2Identity%lstm_26/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2
lstm_26/Identity_2?
lstm_26/PartitionedCallPartitionedCallinputslstm_26/zeros:output:0lstm_26/zeros_1:output:0lstm_26/Identity:output:0lstm_26/Identity_1:output:0lstm_26/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:?????????:?????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6728652
lstm_26/PartitionedCall?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_26/MatMul/ReadVariableOp?
dense_26/MatMulMatMul lstm_26/PartitionedCall:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/MatMul?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_26/BiasAdd/ReadVariableOp?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_26/BiasAdd?
IdentityIdentitydense_26/BiasAdd:output:0 ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp^lstm_26/Read/ReadVariableOp^lstm_26/Read_1/ReadVariableOp^lstm_26/Read_2/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2:
lstm_26/Read/ReadVariableOplstm_26/Read/ReadVariableOp2>
lstm_26/Read_1/ReadVariableOplstm_26/Read_1/ReadVariableOp2>
lstm_26/Read_2/ReadVariableOplstm_26/Read_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
;__inference___backward_gpu_lstm_with_fallback_674315_674491
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:?????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:?????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:??????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:??????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: :?????????::?????????:?????????::??????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_43825398-6e8f-4df9-81bb-7d796566d7c4*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_674490*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :1-
+
_output_shapes
:?????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::2
.
,
_output_shapes
:??????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
while_cond_671252
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_671252___redundant_placeholder04
0while_while_cond_671252___redundant_placeholder14
0while_while_cond_671252___redundant_placeholder24
0while_while_cond_671252___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?@
?
 __inference_standard_lstm_674220

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_674135*
condR
while_cond_674134*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_43825398-6e8f-4df9-81bb-7d796566d7c4*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_671636

inputs!
lstm_26_671612:	? 
lstm_26_671614:
lstm_26_671616:"
dense_26_671630:	?
dense_26_671632:	?
identity?? dense_26/StatefulPartitionedCall?lstm_26/StatefulPartitionedCall?
lstm_26/StatefulPartitionedCallStatefulPartitionedCallinputslstm_26_671612lstm_26_671614lstm_26_671616*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_6716112!
lstm_26/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_26_671630dense_26_671632*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_6716292"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0!^dense_26/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?@
?
 __inference_standard_lstm_669105

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_669020*
condR
while_cond_669019*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_88bfb5f8-9539-476a-ab4c-07560fb4b128*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_672149

inputs!
lstm_26_672136:	? 
lstm_26_672138:
lstm_26_672140:"
dense_26_672143:	?
dense_26_672145:	?
identity?? dense_26/StatefulPartitionedCall?lstm_26/StatefulPartitionedCall?
lstm_26/StatefulPartitionedCallStatefulPartitionedCallinputslstm_26_672136lstm_26_672138lstm_26_672140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_6721072!
lstm_26/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_26_672143dense_26_672145*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_6716292"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0!^dense_26/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
;__inference___backward_gpu_lstm_with_fallback_670102_670278
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:???????????????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????????????:?????????:?????????: :??????????????????::?????????:?????????::???????????????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_44409b7a-8107-4c51-b016-0155de497ba3*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_670277*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????::6
4
_output_shapes"
 :??????????????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::;
7
5
_output_shapes#
!:???????????????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_lstm_26_layer_call_fn_673177

inputs
unknown:	?
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_6716112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?H
?
)__inference_gpu_lstm_with_fallback_672959

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_58b212ac-7e4d-4838-ac9c-e26cb3499808*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_672209
lstm_26_input!
lstm_26_672196:	? 
lstm_26_672198:
lstm_26_672200:"
dense_26_672203:	?
dense_26_672205:	?
identity?? dense_26/StatefulPartitionedCall?lstm_26/StatefulPartitionedCall?
lstm_26/StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputlstm_26_672196lstm_26_672198lstm_26_672200*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_6721072!
lstm_26/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_26_672203dense_26_672205*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_6716292"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0!^dense_26/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namelstm_26_input
?H
?
)__inference_gpu_lstm_with_fallback_674749

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_95dfd4e5-cf78-4e1c-bd6a-ec627f9e5137*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?	
?
while_cond_672779
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_672779___redundant_placeholder04
0while_while_cond_672779___redundant_placeholder14
0while_while_cond_672779___redundant_placeholder24
0while_while_cond_672779___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?"
?
C__inference_lstm_26_layer_call_and_return_conditional_losses_671611

inputs/
read_readvariableop_resource:	?0
read_1_readvariableop_resource:,
read_2_readvariableop_resource:

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype02
Read_1/ReadVariableOpl

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:*
dtype02
Read_2/ReadVariableOph

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:?????????:?????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6713382
PartitionedCall?

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
while_body_669020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
?	
?
while_cond_673699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_673699___redundant_placeholder04
0while_while_cond_673699___redundant_placeholder14
0while_while_cond_673699___redundant_placeholder24
0while_while_cond_673699___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_671629

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
;__inference___backward_gpu_lstm_with_fallback_674750_674926
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:?????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:?????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:??????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:??????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: :?????????::?????????:?????????::??????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_95dfd4e5-cf78-4e1c-bd6a-ec627f9e5137*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_674925*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :1-
+
_output_shapes
:?????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::2
.
,
_output_shapes
:??????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
D__inference_dense_26_layer_call_and_return_conditional_losses_674947

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_26_layer_call_fn_672177
lstm_26_input
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_6721492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namelstm_26_input
?
?
I__inference_sequential_26_layer_call_and_return_conditional_losses_672193
lstm_26_input!
lstm_26_672180:	? 
lstm_26_672182:
lstm_26_672184:"
dense_26_672187:	?
dense_26_672189:	?
identity?? dense_26/StatefulPartitionedCall?lstm_26/StatefulPartitionedCall?
lstm_26/StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputlstm_26_672180lstm_26_672182lstm_26_672184*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_6716112!
lstm_26/StatefulPartitionedCall?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall(lstm_26/StatefulPartitionedCall:output:0dense_26_672187dense_26_672189*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_6716292"
 dense_26/StatefulPartitionedCall?
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0!^dense_26/StatefulPartitionedCall ^lstm_26/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
lstm_26/StatefulPartitionedCalllstm_26/StatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namelstm_26_input
?,
?
while_body_669922
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
?
?
)__inference_dense_26_layer_call_fn_674937

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_6716292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?7
?

__inference__traced_save_675036
file_prefix.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_26_lstm_cell_26_kernel_read_readvariableopD
@savev2_lstm_26_lstm_cell_26_recurrent_kernel_read_readvariableop8
4savev2_lstm_26_lstm_cell_26_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableopA
=savev2_adam_lstm_26_lstm_cell_26_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_26_lstm_cell_26_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_26_lstm_cell_26_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableopA
=savev2_adam_lstm_26_lstm_cell_26_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_26_lstm_cell_26_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_26_lstm_cell_26_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_26_lstm_cell_26_kernel_read_readvariableop@savev2_lstm_26_lstm_cell_26_recurrent_kernel_read_readvariableop4savev2_lstm_26_lstm_cell_26_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop=savev2_adam_lstm_26_lstm_cell_26_kernel_m_read_readvariableopGsavev2_adam_lstm_26_lstm_cell_26_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_26_lstm_cell_26_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop=savev2_adam_lstm_26_lstm_cell_26_kernel_v_read_readvariableopGsavev2_adam_lstm_26_lstm_cell_26_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_26_lstm_cell_26_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:?: : : : : :	?::: : :	?:?:	?:::	?:?:	?::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?:$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?"
?
C__inference_lstm_26_layer_call_and_return_conditional_losses_674928

inputs/
read_readvariableop_resource:	?0
read_1_readvariableop_resource:,
read_2_readvariableop_resource:

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype02
Read_1/ReadVariableOpl

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:*
dtype02
Read_2/ReadVariableOph

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:?????????:?????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6746552
PartitionedCall?

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?H
?
)__inference_gpu_lstm_with_fallback_669199

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_88bfb5f8-9539-476a-ab4c-07560fb4b128*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?T
?
'__forward_gpu_lstm_with_fallback_670277

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_44409b7a-8107-4c51-b016-0155de497ba3*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_670102_670278*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?#
?
C__inference_lstm_26_layer_call_and_return_conditional_losses_673623
inputs_0/
read_readvariableop_resource:	?0
read_1_readvariableop_resource:,
read_2_readvariableop_resource:

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype02
Read_1/ReadVariableOpl

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:*
dtype02
Read_2/ReadVariableOph

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2

Identity_2?
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????:??????????????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6733502
PartitionedCall?

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?	
?
while_cond_673264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_673264___redundant_placeholder04
0while_while_cond_673264___redundant_placeholder14
0while_while_cond_673264___redundant_placeholder24
0while_while_cond_673264___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
while_cond_674569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_674569___redundant_placeholder04
0while_while_cond_674569___redundant_placeholder14
0while_while_cond_674569___redundant_placeholder24
0while_while_cond_674569___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?
?
(__inference_lstm_26_layer_call_fn_673166
inputs_0
unknown:	?
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_6702802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?T
?
'__forward_gpu_lstm_with_fallback_674055

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_4f9b220b-64b5-4411-85a4-12c8658b44cc*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_673880_674056*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?	
?
while_cond_669019
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_669019___redundant_placeholder04
0while_while_cond_669019___redundant_placeholder14
0while_while_cond_669019___redundant_placeholder24
0while_while_cond_669019___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
while_cond_672338
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_672338___redundant_placeholder04
0while_while_cond_672338___redundant_placeholder14
0while_while_cond_672338___redundant_placeholder24
0while_while_cond_672338___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
while_cond_671748
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_671748___redundant_placeholder04
0while_while_cond_671748___redundant_placeholder14
0while_while_cond_671748___redundant_placeholder24
0while_while_cond_671748___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
??
?
;__inference___backward_gpu_lstm_with_fallback_671929_672105
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:?????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:?????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:??????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:??????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: :?????????::?????????:?????????::??????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_8495f530-9a0e-473f-96e2-1079721f14e5*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_672104*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :1-
+
_output_shapes
:?????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::2
.
,
_output_shapes
:??????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
while_cond_669464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_669464___redundant_placeholder04
0while_while_cond_669464___redundant_placeholder14
0while_while_cond_669464___redundant_placeholder24
0while_while_cond_669464___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
??
?
;__inference___backward_gpu_lstm_with_fallback_669645_669821
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:???????????????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????????????:?????????:?????????: :??????????????????::?????????:?????????::???????????????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_8d00adc9-50d7-45a9-9b27-b192ca04faa5*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_669820*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????::6
4
_output_shapes"
 :??????????????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::;
7
5
_output_shapes#
!:???????????????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?b
?
"__inference__traced_restore_675112
file_prefix3
 assignvariableop_dense_26_kernel:	?/
 assignvariableop_1_dense_26_bias:	?&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: A
.assignvariableop_7_lstm_26_lstm_cell_26_kernel:	?J
8assignvariableop_8_lstm_26_lstm_cell_26_recurrent_kernel::
,assignvariableop_9_lstm_26_lstm_cell_26_bias:#
assignvariableop_10_total: #
assignvariableop_11_count: =
*assignvariableop_12_adam_dense_26_kernel_m:	?7
(assignvariableop_13_adam_dense_26_bias_m:	?I
6assignvariableop_14_adam_lstm_26_lstm_cell_26_kernel_m:	?R
@assignvariableop_15_adam_lstm_26_lstm_cell_26_recurrent_kernel_m:B
4assignvariableop_16_adam_lstm_26_lstm_cell_26_bias_m:=
*assignvariableop_17_adam_dense_26_kernel_v:	?7
(assignvariableop_18_adam_dense_26_bias_v:	?I
6assignvariableop_19_adam_lstm_26_lstm_cell_26_kernel_v:	?R
@assignvariableop_20_adam_lstm_26_lstm_cell_26_recurrent_kernel_v:B
4assignvariableop_21_adam_lstm_26_lstm_cell_26_bias_v:
identity_23??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_26_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_26_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp.assignvariableop_7_lstm_26_lstm_cell_26_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp8assignvariableop_8_lstm_26_lstm_cell_26_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_lstm_26_lstm_cell_26_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp*assignvariableop_12_adam_dense_26_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp(assignvariableop_13_adam_dense_26_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp6assignvariableop_14_adam_lstm_26_lstm_cell_26_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp@assignvariableop_15_adam_lstm_26_lstm_cell_26_recurrent_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_lstm_26_lstm_cell_26_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_26_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_26_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_lstm_26_lstm_cell_26_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp@assignvariableop_20_adam_lstm_26_lstm_cell_26_recurrent_kernel_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_26_lstm_cell_26_bias_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_219
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_22?
Identity_23IdentityIdentity_22:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_23"#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
?
?
.__inference_sequential_26_layer_call_fn_672262

inputs
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_6721492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
;__inference___backward_gpu_lstm_with_fallback_673445_673621
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:???????????????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????????????:?????????:?????????: :??????????????????::?????????:?????????::???????????????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_6454450f-2101-4e1f-98e8-34d22a5afd58*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_673620*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????::6
4
_output_shapes"
 :??????????????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::;
7
5
_output_shapes#
!:???????????????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?,
?
while_body_669465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
?S
?
'__forward_gpu_lstm_with_fallback_674925

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_95dfd4e5-cf78-4e1c-bd6a-ec627f9e5137*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_674750_674926*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?#
?
C__inference_lstm_26_layer_call_and_return_conditional_losses_669823

inputs/
read_readvariableop_resource:	?0
read_1_readvariableop_resource:,
read_2_readvariableop_resource:

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype02
Read_1/ReadVariableOpl

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:*
dtype02
Read_2/ReadVariableOph

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????:??????????????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6695502
PartitionedCall?

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?"
?
C__inference_lstm_26_layer_call_and_return_conditional_losses_674493

inputs/
read_readvariableop_resource:	?0
read_1_readvariableop_resource:,
read_2_readvariableop_resource:

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype02
Read_1/ReadVariableOpl

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:*
dtype02
Read_2/ReadVariableOph

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:?????????:?????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6742202
PartitionedCall?

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?,
?
while_body_674570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
??
?
!__inference__wrapped_model_669384
lstm_26_inputE
2sequential_26_lstm_26_read_readvariableop_resource:	?F
4sequential_26_lstm_26_read_1_readvariableop_resource:B
4sequential_26_lstm_26_read_2_readvariableop_resource:H
5sequential_26_dense_26_matmul_readvariableop_resource:	?E
6sequential_26_dense_26_biasadd_readvariableop_resource:	?
identity??-sequential_26/dense_26/BiasAdd/ReadVariableOp?,sequential_26/dense_26/MatMul/ReadVariableOp?)sequential_26/lstm_26/Read/ReadVariableOp?+sequential_26/lstm_26/Read_1/ReadVariableOp?+sequential_26/lstm_26/Read_2/ReadVariableOpw
sequential_26/lstm_26/ShapeShapelstm_26_input*
T0*
_output_shapes
:2
sequential_26/lstm_26/Shape?
)sequential_26/lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_26/lstm_26/strided_slice/stack?
+sequential_26/lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_26/lstm_26/strided_slice/stack_1?
+sequential_26/lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_26/lstm_26/strided_slice/stack_2?
#sequential_26/lstm_26/strided_sliceStridedSlice$sequential_26/lstm_26/Shape:output:02sequential_26/lstm_26/strided_slice/stack:output:04sequential_26/lstm_26/strided_slice/stack_1:output:04sequential_26/lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_26/lstm_26/strided_slice?
!sequential_26/lstm_26/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_26/lstm_26/zeros/mul/y?
sequential_26/lstm_26/zeros/mulMul,sequential_26/lstm_26/strided_slice:output:0*sequential_26/lstm_26/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_26/lstm_26/zeros/mul?
"sequential_26/lstm_26/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_26/lstm_26/zeros/Less/y?
 sequential_26/lstm_26/zeros/LessLess#sequential_26/lstm_26/zeros/mul:z:0+sequential_26/lstm_26/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_26/lstm_26/zeros/Less?
$sequential_26/lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_26/lstm_26/zeros/packed/1?
"sequential_26/lstm_26/zeros/packedPack,sequential_26/lstm_26/strided_slice:output:0-sequential_26/lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_26/lstm_26/zeros/packed?
!sequential_26/lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_26/lstm_26/zeros/Const?
sequential_26/lstm_26/zerosFill+sequential_26/lstm_26/zeros/packed:output:0*sequential_26/lstm_26/zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
sequential_26/lstm_26/zeros?
#sequential_26/lstm_26/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_26/lstm_26/zeros_1/mul/y?
!sequential_26/lstm_26/zeros_1/mulMul,sequential_26/lstm_26/strided_slice:output:0,sequential_26/lstm_26/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_26/lstm_26/zeros_1/mul?
$sequential_26/lstm_26/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_26/lstm_26/zeros_1/Less/y?
"sequential_26/lstm_26/zeros_1/LessLess%sequential_26/lstm_26/zeros_1/mul:z:0-sequential_26/lstm_26/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_26/lstm_26/zeros_1/Less?
&sequential_26/lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2(
&sequential_26/lstm_26/zeros_1/packed/1?
$sequential_26/lstm_26/zeros_1/packedPack,sequential_26/lstm_26/strided_slice:output:0/sequential_26/lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_26/lstm_26/zeros_1/packed?
#sequential_26/lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_26/lstm_26/zeros_1/Const?
sequential_26/lstm_26/zeros_1Fill-sequential_26/lstm_26/zeros_1/packed:output:0,sequential_26/lstm_26/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2
sequential_26/lstm_26/zeros_1?
)sequential_26/lstm_26/Read/ReadVariableOpReadVariableOp2sequential_26_lstm_26_read_readvariableop_resource*
_output_shapes
:	?*
dtype02+
)sequential_26/lstm_26/Read/ReadVariableOp?
sequential_26/lstm_26/IdentityIdentity1sequential_26/lstm_26/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2 
sequential_26/lstm_26/Identity?
+sequential_26/lstm_26/Read_1/ReadVariableOpReadVariableOp4sequential_26_lstm_26_read_1_readvariableop_resource*
_output_shapes

:*
dtype02-
+sequential_26/lstm_26/Read_1/ReadVariableOp?
 sequential_26/lstm_26/Identity_1Identity3sequential_26/lstm_26/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2"
 sequential_26/lstm_26/Identity_1?
+sequential_26/lstm_26/Read_2/ReadVariableOpReadVariableOp4sequential_26_lstm_26_read_2_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_26/lstm_26/Read_2/ReadVariableOp?
 sequential_26/lstm_26/Identity_2Identity3sequential_26/lstm_26/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 sequential_26/lstm_26/Identity_2?
%sequential_26/lstm_26/PartitionedCallPartitionedCalllstm_26_input$sequential_26/lstm_26/zeros:output:0&sequential_26/lstm_26/zeros_1:output:0'sequential_26/lstm_26/Identity:output:0)sequential_26/lstm_26/Identity_1:output:0)sequential_26/lstm_26/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:?????????:?????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6691052'
%sequential_26/lstm_26/PartitionedCall?
,sequential_26/dense_26/MatMul/ReadVariableOpReadVariableOp5sequential_26_dense_26_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_26/dense_26/MatMul/ReadVariableOp?
sequential_26/dense_26/MatMulMatMul.sequential_26/lstm_26/PartitionedCall:output:04sequential_26/dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_26/dense_26/MatMul?
-sequential_26/dense_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_26_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_26/dense_26/BiasAdd/ReadVariableOp?
sequential_26/dense_26/BiasAddBiasAdd'sequential_26/dense_26/MatMul:product:05sequential_26/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_26/dense_26/BiasAdd?
IdentityIdentity'sequential_26/dense_26/BiasAdd:output:0.^sequential_26/dense_26/BiasAdd/ReadVariableOp-^sequential_26/dense_26/MatMul/ReadVariableOp*^sequential_26/lstm_26/Read/ReadVariableOp,^sequential_26/lstm_26/Read_1/ReadVariableOp,^sequential_26/lstm_26/Read_2/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 2^
-sequential_26/dense_26/BiasAdd/ReadVariableOp-sequential_26/dense_26/BiasAdd/ReadVariableOp2\
,sequential_26/dense_26/MatMul/ReadVariableOp,sequential_26/dense_26/MatMul/ReadVariableOp2V
)sequential_26/lstm_26/Read/ReadVariableOp)sequential_26/lstm_26/Read/ReadVariableOp2Z
+sequential_26/lstm_26/Read_1/ReadVariableOp+sequential_26/lstm_26/Read_1/ReadVariableOp2Z
+sequential_26/lstm_26/Read_2/ReadVariableOp+sequential_26/lstm_26/Read_2/ReadVariableOp:[ W
,
_output_shapes
:??????????
'
_user_specified_namelstm_26_input
?H
?
)__inference_gpu_lstm_with_fallback_671928

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_8495f530-9a0e-473f-96e2-1079721f14e5*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?,
?
while_body_672780
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
??
?
;__inference___backward_gpu_lstm_with_fallback_673880_674056
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :??????????????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :??????????????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :??????????????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :??????????????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*j
_output_shapesX
V:???????????????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:??????????????????:?????????:?????????: :??????????????????::?????????:?????????::???????????????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_4f9b220b-64b5-4411-85a4-12c8658b44cc*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_674055*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????::6
4
_output_shapes"
 :??????????????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: ::6
4
_output_shapes"
 :??????????????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::;
7
5
_output_shapes#
!:???????????????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?T
?
'__forward_gpu_lstm_with_fallback_673620

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:??????????????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_6454450f-2101-4e1f-98e8-34d22a5afd58*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_673445_673621*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?
?
.__inference_sequential_26_layer_call_fn_672247

inputs
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_26_layer_call_and_return_conditional_losses_6716362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?H
?
)__inference_gpu_lstm_with_fallback_674314

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_43825398-6e8f-4df9-81bb-7d796566d7c4*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?@
?
 __inference_standard_lstm_674655

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_674570*
condR
while_cond_674569*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_95dfd4e5-cf78-4e1c-bd6a-ec627f9e5137*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?	
?
while_cond_669921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_669921___redundant_placeholder04
0while_while_cond_669921___redundant_placeholder14
0while_while_cond_669921___redundant_placeholder24
0while_while_cond_669921___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?S
?
'__forward_gpu_lstm_with_fallback_672104

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_8495f530-9a0e-473f-96e2-1079721f14e5*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_671929_672105*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?,
?
while_body_671253
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
?A
?
 __inference_standard_lstm_670007

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_669922*
condR
while_cond_669921*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_44409b7a-8107-4c51-b016-0155de497ba3*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
??
?
;__inference___backward_gpu_lstm_with_fallback_669200_669376
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:?????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:?????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:??????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:??????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: :?????????::?????????:?????????::??????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_88bfb5f8-9539-476a-ab4c-07560fb4b128*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_669375*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :1-
+
_output_shapes
:?????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::2
.
,
_output_shapes
:??????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?@
?
 __inference_standard_lstm_672865

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_672780*
condR
while_cond_672779*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_58b212ac-7e4d-4838-ac9c-e26cb3499808*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?#
?
C__inference_lstm_26_layer_call_and_return_conditional_losses_670280

inputs/
read_readvariableop_resource:	?0
read_1_readvariableop_resource:,
read_2_readvariableop_resource:

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype02
Read_1/ReadVariableOpl

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:*
dtype02
Read_2/ReadVariableOph

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????:??????????????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6700072
PartitionedCall?

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?	
?
while_cond_674134
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_674134___redundant_placeholder04
0while_while_cond_674134___redundant_placeholder14
0while_while_cond_674134___redundant_placeholder24
0while_while_cond_674134___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :?????????:?????????: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?
?
$__inference_signature_wrapper_672232
lstm_26_input
unknown:	?
	unknown_0:
	unknown_1:
	unknown_2:	?
	unknown_3:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*'
_read_only_resource_inputs	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_6693842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
":??????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namelstm_26_input
?H
?
)__inference_gpu_lstm_with_fallback_672518

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_aed5e5d6-7d04-4bfc-bf72-e90fa87741a6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?A
?
 __inference_standard_lstm_673350

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_673265*
condR
while_cond_673264*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :??????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_6454450f-2101-4e1f-98e8-34d22a5afd58*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?H
?
)__inference_gpu_lstm_with_fallback_673444

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:?A2

concat_1?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:??????????????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :??????????????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*u
_input_shapesd
b:???????????????????:?????????:?????????:	?::*=
api_implements+)lstm_6454450f-2101-4e1f-98e8-34d22a5afd58*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?"
?
C__inference_lstm_26_layer_call_and_return_conditional_losses_672107

inputs/
read_readvariableop_resource:	?0
read_1_readvariableop_resource:,
read_2_readvariableop_resource:

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype02
Read_1/ReadVariableOpl

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:*
dtype02
Read_2/ReadVariableOph

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *f
_output_shapesT
R:?????????:?????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6718342
PartitionedCall?

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?@
?
 __inference_standard_lstm_671834

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1n
MatMulMatMulstrided_slice_1:output:0kernel*
T0*'
_output_shapes
:?????????2
MatMulj
MatMul_1MatMulinit_hrecurrent_kernel*
T0*'
_output_shapes
:?????????2

MatMul_1k
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
add^
BiasAddBiasAddadd:z:0bias*
T0*'
_output_shapes
:?????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:?????????2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:?????????2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:?????????2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:?????????2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:?????????2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:?????????2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:?????????2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :?????????:?????????: : :	?::* 
_read_only_resource_inputs
 *
bodyR
while_body_671749*
condR
while_cond_671748*`
output_shapesO
M: : : : :?????????:?????????: : :	?::*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:?????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:?????????2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:?????????2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_8495f530-9a0e-473f-96e2-1079721f14e5*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?#
?
C__inference_lstm_26_layer_call_and_return_conditional_losses_674058
inputs_0/
read_readvariableop_resource:	?0
read_1_readvariableop_resource:,
read_2_readvariableop_resource:

identity_3??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
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
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:?????????2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????2	
zeros_1?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype02
Read_1/ReadVariableOpl

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:*
dtype02
Read_2/ReadVariableOph

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:2

Identity_2?
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:?????????:??????????????????:?????????:?????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference_standard_lstm_6737852
PartitionedCall?

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?,
?
while_body_672339
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
?,
?
while_body_673265
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*'
_output_shapes
:?????????2
while/MatMul_1?
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*'
_output_shapes
:?????????2
	while/add?
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*'
_output_shapes
:?????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:?????????:?????????:?????????:?????????*
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:?????????2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:?????????2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:?????????2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:?????????2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:?????????2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:?????????2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:?????????2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:?????????2
while/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:?????????2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :?????????:?????????: : :	?::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:$	 

_output_shapes

:: 


_output_shapes
:
?S
?
'__forward_gpu_lstm_with_fallback_672694

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axis?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	?:	?:	?:	?*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_split2	
split_1e

zeros_likeConst*
_output_shapes
:*
dtype0*
valueB*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis{
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes
: 2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	?2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:?2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	?2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	?2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	?2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:2
transpose_5g
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:2
transpose_6g
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:2
transpose_7g
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:2
transpose_8g
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*]
_output_shapesK
I:?????????:?????????:?????????:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/perm?
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:?????????2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:?????????2

Identityk

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:?????????2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:?????????2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:??????????:?????????:?????????:	?::*=
api_implements+)lstm_aed5e5d6-7d04-4bfc-bf72-e90fa87741a6*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_672519_672695*
go_backwards( *

time_major( :T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_h:OK
'
_output_shapes
:?????????
 
_user_specified_nameinit_c:GC

_output_shapes
:	?
 
_user_specified_namekernel:PL

_output_shapes

:
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:

_user_specified_namebias
?
?
(__inference_lstm_26_layer_call_fn_673188

inputs
unknown:	?
	unknown_0:
	unknown_1:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_lstm_26_layer_call_and_return_conditional_losses_6721072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
;__inference___backward_gpu_lstm_with_fallback_671433_671609
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5?u
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_0{
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:?????????2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:?????????2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:?????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutation?
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:?????????2&
$gradients/transpose_9_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2 
gradients/Squeeze_grad/Reshape?
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape?
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:?????????2"
 gradients/Squeeze_1_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:?????????2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*a
_output_shapesO
M:??????????:?????????:?????????:?A2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:??????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2#
!gradients/ExpandDims_grad/Reshape?
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shape?
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:?????????2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank?
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/mod?
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_1_grad/Shape?
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_1?
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_2?
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/concat_1_grad/Shape_3?
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_4?
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_5?
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_6?
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_7?
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_8?
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:2!
gradients/concat_1_grad/Shape_9?
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_10?
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_11?
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_12?
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_13?
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_14?
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:2"
 gradients/concat_1_grad/Shape_15?
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffset?
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_1_grad/Slice?
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_1?
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_2?
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:?2!
gradients/concat_1_grad/Slice_3?
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_4?
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_5?
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_6?
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_7?
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_8?
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:2!
gradients/concat_1_grad/Slice_9?
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_10?
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_11?
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_12?
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_13?
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_14?
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:2"
 gradients/concat_1_grad/Slice_15?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"     2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	?2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_12_grad/Reshape?
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_13_grad/Shape?
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_13_grad/Reshape?
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_14_grad/Shape?
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_14_grad/Reshape?
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2!
gradients/Reshape_15_grad/Shape?
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:2#
!gradients/Reshape_15_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	?2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_6_grad/transpose?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_7_grad/transpose?
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutation?
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:2&
$gradients/transpose_8_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes
: 2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	?2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:2
gradients/concat_grad/Shape_1?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:2
gradients/concat_grad/Slice_1
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:??????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_1?

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:?????????2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	?2

Identity_3u

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:2

Identity_4q

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????: :?????????::?????????:?????????::??????????:?????????:?????????:?A::?????????:?????????: ::::::::: : : : *=
api_implements+)lstm_10607fd0-26fc-4b8c-b024-afd32fa98eb6*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_671608*
go_backwards( *

time_major( :- )
'
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: :1-
+
_output_shapes
:?????????: 

_output_shapes
::1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:	

_output_shapes
::2
.
,
_output_shapes
:??????????:1-
+
_output_shapes
:?????????:1-
+
_output_shapes
:?????????:!

_output_shapes	
:?A: 

_output_shapes
::-)
'
_output_shapes
:?????????:-)
'
_output_shapes
:?????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
L
lstm_26_input;
serving_default_lstm_26_input:0??????????=
dense_261
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?%
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
F__call__
G_default_save_signature
*H&call_and_return_all_conditional_losses"?#
_tf_keras_sequential?#{"name": "sequential_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 519]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_26_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_26", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 519]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 4, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 500, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 9, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 519]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 10}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 519]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1, 519]}, "float32", "lstm_26_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_26", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 519]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_26_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_26", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 519]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 4, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 500, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}]}}, "training_config": {"loss": "mean_absolute_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.002616924000903964, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
	cell


state_spec
trainable_variables
	variables
regularization_losses
	keras_api
I__call__
*J&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?{"name": "lstm_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 519]}, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_26", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1, 519]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 4, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 519]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 10}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 1, 519]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
K__call__
*L&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 500, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
?
iter

beta_1

beta_2
	decay
learning_ratem<m=m>m?m@vAvBvCvDvE"
	optimizer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
?
metrics
trainable_variables
	variables
layer_regularization_losses
regularization_losses
layer_metrics

 layers
!non_trainable_variables
F__call__
G_default_save_signature
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
,
Mserving_default"
signature_map
?	
"
state_size

kernel
recurrent_kernel
bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
N__call__
*O&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "lstm_cell_26", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_26", "trainable": true, "dtype": "float32", "units": 4, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
'metrics

(states
trainable_variables
	variables
)layer_regularization_losses
regularization_losses
*layer_metrics

+layers
,non_trainable_variables
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_26/kernel
:?2dense_26/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
-metrics
.non_trainable_variables
trainable_variables
	variables
regularization_losses
/layer_metrics

0layers
1layer_regularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	?2lstm_26/lstm_cell_26/kernel
7:52%lstm_26/lstm_cell_26/recurrent_kernel
':%2lstm_26/lstm_cell_26/bias
'
20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3metrics
4non_trainable_variables
#trainable_variables
$	variables
%regularization_losses
5layer_metrics

6layers
7layer_regularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
	0"
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
?
	8total
	9count
:	variables
;	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 12}
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
:  (2total
:  (2count
.
80
91"
trackable_list_wrapper
-
:	variables"
_generic_user_object
':%	?2Adam/dense_26/kernel/m
!:?2Adam/dense_26/bias/m
3:1	?2"Adam/lstm_26/lstm_cell_26/kernel/m
<::2,Adam/lstm_26/lstm_cell_26/recurrent_kernel/m
,:*2 Adam/lstm_26/lstm_cell_26/bias/m
':%	?2Adam/dense_26/kernel/v
!:?2Adam/dense_26/bias/v
3:1	?2"Adam/lstm_26/lstm_cell_26/kernel/v
<::2,Adam/lstm_26/lstm_cell_26/recurrent_kernel/v
,:*2 Adam/lstm_26/lstm_cell_26/bias/v
?2?
.__inference_sequential_26_layer_call_fn_671649
.__inference_sequential_26_layer_call_fn_672247
.__inference_sequential_26_layer_call_fn_672262
.__inference_sequential_26_layer_call_fn_672177?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_669384?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *1?.
,?)
lstm_26_input??????????
?2?
I__inference_sequential_26_layer_call_and_return_conditional_losses_672703
I__inference_sequential_26_layer_call_and_return_conditional_losses_673144
I__inference_sequential_26_layer_call_and_return_conditional_losses_672193
I__inference_sequential_26_layer_call_and_return_conditional_losses_672209?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lstm_26_layer_call_fn_673155
(__inference_lstm_26_layer_call_fn_673166
(__inference_lstm_26_layer_call_fn_673177
(__inference_lstm_26_layer_call_fn_673188?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_26_layer_call_and_return_conditional_losses_673623
C__inference_lstm_26_layer_call_and_return_conditional_losses_674058
C__inference_lstm_26_layer_call_and_return_conditional_losses_674493
C__inference_lstm_26_layer_call_and_return_conditional_losses_674928?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dense_26_layer_call_fn_674937?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_26_layer_call_and_return_conditional_losses_674947?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_672232lstm_26_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
!__inference__wrapped_model_669384z;?8
1?.
,?)
lstm_26_input??????????
? "4?1
/
dense_26#? 
dense_26???????????
D__inference_dense_26_layer_call_and_return_conditional_losses_674947]/?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? }
)__inference_dense_26_layer_call_fn_674937P/?,
%?"
 ?
inputs?????????
? "????????????
C__inference_lstm_26_layer_call_and_return_conditional_losses_673623~P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "%?"
?
0?????????
? ?
C__inference_lstm_26_layer_call_and_return_conditional_losses_674058~P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "%?"
?
0?????????
? ?
C__inference_lstm_26_layer_call_and_return_conditional_losses_674493n@?=
6?3
%?"
inputs??????????

 
p 

 
? "%?"
?
0?????????
? ?
C__inference_lstm_26_layer_call_and_return_conditional_losses_674928n@?=
6?3
%?"
inputs??????????

 
p

 
? "%?"
?
0?????????
? ?
(__inference_lstm_26_layer_call_fn_673155qP?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "???????????
(__inference_lstm_26_layer_call_fn_673166qP?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "???????????
(__inference_lstm_26_layer_call_fn_673177a@?=
6?3
%?"
inputs??????????

 
p 

 
? "???????????
(__inference_lstm_26_layer_call_fn_673188a@?=
6?3
%?"
inputs??????????

 
p

 
? "???????????
I__inference_sequential_26_layer_call_and_return_conditional_losses_672193tC?@
9?6
,?)
lstm_26_input??????????
p 

 
? "&?#
?
0??????????
? ?
I__inference_sequential_26_layer_call_and_return_conditional_losses_672209tC?@
9?6
,?)
lstm_26_input??????????
p

 
? "&?#
?
0??????????
? ?
I__inference_sequential_26_layer_call_and_return_conditional_losses_672703m<?9
2?/
%?"
inputs??????????
p 

 
? "&?#
?
0??????????
? ?
I__inference_sequential_26_layer_call_and_return_conditional_losses_673144m<?9
2?/
%?"
inputs??????????
p

 
? "&?#
?
0??????????
? ?
.__inference_sequential_26_layer_call_fn_671649gC?@
9?6
,?)
lstm_26_input??????????
p 

 
? "????????????
.__inference_sequential_26_layer_call_fn_672177gC?@
9?6
,?)
lstm_26_input??????????
p

 
? "????????????
.__inference_sequential_26_layer_call_fn_672247`<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
.__inference_sequential_26_layer_call_fn_672262`<?9
2?/
%?"
inputs??????????
p

 
? "????????????
$__inference_signature_wrapper_672232?L?I
? 
B??
=
lstm_26_input,?)
lstm_26_input??????????"4?1
/
dense_26#? 
dense_26??????????