??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
embedding_10/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*(
shared_nameembedding_10/embeddings
?
+embedding_10/embeddings/Read/ReadVariableOpReadVariableOpembedding_10/embeddings*
_output_shapes
:	?2*
dtype0
?
embedding_11/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?K2*(
shared_nameembedding_11/embeddings
?
+embedding_11/embeddings/Read/ReadVariableOpReadVariableOpembedding_11/embeddings*
_output_shapes
:	?K2*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/embedding_10/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*/
shared_name Adam/embedding_10/embeddings/m
?
2Adam/embedding_10/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_10/embeddings/m*
_output_shapes
:	?2*
dtype0
?
Adam/embedding_11/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?K2*/
shared_name Adam/embedding_11/embeddings/m
?
2Adam/embedding_11/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_11/embeddings/m*
_output_shapes
:	?K2*
dtype0
?
Adam/embedding_10/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*/
shared_name Adam/embedding_10/embeddings/v
?
2Adam/embedding_10/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_10/embeddings/v*
_output_shapes
:	?2*
dtype0
?
Adam/embedding_11/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?K2*/
shared_name Adam/embedding_11/embeddings/v
?
2Adam/embedding_11/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_11/embeddings/v*
_output_shapes
:	?K2*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
 
 
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
R
 trainable_variables
!regularization_losses
"	variables
#	keras_api
d
$iter

%beta_1

&beta_2
	'decay
(learning_ratemRmSvTvU

0
1
 

0
1
?
)layer_regularization_losses
	trainable_variables

regularization_losses
*metrics
+non_trainable_variables
,layer_metrics

-layers
	variables
 
ge
VARIABLE_VALUEembedding_10/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
.layer_regularization_losses
trainable_variables
regularization_losses
/metrics
0non_trainable_variables
1layer_metrics

2layers
	variables
ge
VARIABLE_VALUEembedding_11/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
?
3layer_regularization_losses
trainable_variables
regularization_losses
4metrics
5non_trainable_variables
6layer_metrics

7layers
	variables
 
 
 
?
8layer_regularization_losses
trainable_variables
regularization_losses
9metrics
:non_trainable_variables
;layer_metrics

<layers
	variables
 
 
 
?
=layer_regularization_losses
trainable_variables
regularization_losses
>metrics
?non_trainable_variables
@layer_metrics

Alayers
	variables
 
 
 
?
Blayer_regularization_losses
 trainable_variables
!regularization_losses
Cmetrics
Dnon_trainable_variables
Elayer_metrics

Flayers
"	variables
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
 

G0
H1
 
 
1
0
1
2
3
4
5
6
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Itotal
	Jcount
K	variables
L	keras_api
D
	Mtotal
	Ncount
O
_fn_kwargs
P	variables
Q	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

I0
J1

K	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

M0
N1

P	variables
??
VARIABLE_VALUEAdam/embedding_10/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_11/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_10/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding_11/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_input_11Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
{
serving_default_input_12Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_11serving_default_input_12embedding_11/embeddingsembedding_10/embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_407554
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+embedding_10/embeddings/Read/ReadVariableOp+embedding_11/embeddings/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp2Adam/embedding_10/embeddings/m/Read/ReadVariableOp2Adam/embedding_11/embeddings/m/Read/ReadVariableOp2Adam/embedding_10/embeddings/v/Read/ReadVariableOp2Adam/embedding_11/embeddings/v/Read/ReadVariableOpConst*
Tin
2	*
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
__inference__traced_save_407879
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_10/embeddingsembedding_11/embeddings	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/embedding_10/embeddings/mAdam/embedding_11/embeddings/mAdam/embedding_10/embeddings/vAdam/embedding_11/embeddings/v*
Tin
2*
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
"__inference__traced_restore_407934??
?

b
F__inference_reshape_11_layer_call_and_return_conditional_losses_407381

inputs
identityD
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
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
Reshape/shape/1?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
(__inference_model_5_layer_call_fn_407522
input_11
input_12
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_11input_12unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_4075152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_11:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_12
?

b
F__inference_reshape_10_layer_call_and_return_conditional_losses_407748

inputs
identityD
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
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
Reshape/shape/1?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_407810F
Bembedding_11_embeddings_regularizer_square_readvariableop_resource
identity??9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
9embedding_11/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpBembedding_11_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	?K2*
dtype02;
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_11/embeddings/Regularizer/SquareSquareAembedding_11/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?K22,
*embedding_11/embeddings/Regularizer/Square?
)embedding_11/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_11/embeddings/Regularizer/Const?
'embedding_11/embeddings/Regularizer/SumSum.embedding_11/embeddings/Regularizer/Square:y:02embedding_11/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/Sum?
)embedding_11/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_11/embeddings/Regularizer/mul/x?
'embedding_11/embeddings/Regularizer/mulMul2embedding_11/embeddings/Regularizer/mul/x:output:00embedding_11/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/mul?
IdentityIdentity+embedding_11/embeddings/Regularizer/mul:z:0:^embedding_11/embeddings/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2v
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp9embedding_11/embeddings/Regularizer/Square/ReadVariableOp
?8
?
!__inference__wrapped_model_407288
input_11
input_120
,model_5_embedding_11_embedding_lookup_4072530
,model_5_embedding_10_embedding_lookup_407259
identity??%model_5/embedding_10/embedding_lookup?%model_5/embedding_11/embedding_lookup?
model_5/embedding_11/CastCastinput_12*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_5/embedding_11/Cast?
%model_5/embedding_11/embedding_lookupResourceGather,model_5_embedding_11_embedding_lookup_407253model_5/embedding_11/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*?
_class5
31loc:@model_5/embedding_11/embedding_lookup/407253*+
_output_shapes
:?????????2*
dtype02'
%model_5/embedding_11/embedding_lookup?
.model_5/embedding_11/embedding_lookup/IdentityIdentity.model_5/embedding_11/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@model_5/embedding_11/embedding_lookup/407253*+
_output_shapes
:?????????220
.model_5/embedding_11/embedding_lookup/Identity?
0model_5/embedding_11/embedding_lookup/Identity_1Identity7model_5/embedding_11/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????222
0model_5/embedding_11/embedding_lookup/Identity_1?
model_5/embedding_10/CastCastinput_11*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_5/embedding_10/Cast?
%model_5/embedding_10/embedding_lookupResourceGather,model_5_embedding_10_embedding_lookup_407259model_5/embedding_10/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*?
_class5
31loc:@model_5/embedding_10/embedding_lookup/407259*+
_output_shapes
:?????????2*
dtype02'
%model_5/embedding_10/embedding_lookup?
.model_5/embedding_10/embedding_lookup/IdentityIdentity.model_5/embedding_10/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*?
_class5
31loc:@model_5/embedding_10/embedding_lookup/407259*+
_output_shapes
:?????????220
.model_5/embedding_10/embedding_lookup/Identity?
0model_5/embedding_10/embedding_lookup/Identity_1Identity7model_5/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????222
0model_5/embedding_10/embedding_lookup/Identity_1?
model_5/reshape_10/ShapeShape9model_5/embedding_10/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
model_5/reshape_10/Shape?
&model_5/reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model_5/reshape_10/strided_slice/stack?
(model_5/reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_5/reshape_10/strided_slice/stack_1?
(model_5/reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_5/reshape_10/strided_slice/stack_2?
 model_5/reshape_10/strided_sliceStridedSlice!model_5/reshape_10/Shape:output:0/model_5/reshape_10/strided_slice/stack:output:01model_5/reshape_10/strided_slice/stack_1:output:01model_5/reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model_5/reshape_10/strided_slice?
"model_5/reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22$
"model_5/reshape_10/Reshape/shape/1?
 model_5/reshape_10/Reshape/shapePack)model_5/reshape_10/strided_slice:output:0+model_5/reshape_10/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 model_5/reshape_10/Reshape/shape?
model_5/reshape_10/ReshapeReshape9model_5/embedding_10/embedding_lookup/Identity_1:output:0)model_5/reshape_10/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
model_5/reshape_10/Reshape?
model_5/reshape_11/ShapeShape9model_5/embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
model_5/reshape_11/Shape?
&model_5/reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model_5/reshape_11/strided_slice/stack?
(model_5/reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_5/reshape_11/strided_slice/stack_1?
(model_5/reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model_5/reshape_11/strided_slice/stack_2?
 model_5/reshape_11/strided_sliceStridedSlice!model_5/reshape_11/Shape:output:0/model_5/reshape_11/strided_slice/stack:output:01model_5/reshape_11/strided_slice/stack_1:output:01model_5/reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model_5/reshape_11/strided_slice?
"model_5/reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22$
"model_5/reshape_11/Reshape/shape/1?
 model_5/reshape_11/Reshape/shapePack)model_5/reshape_11/strided_slice:output:0+model_5/reshape_11/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2"
 model_5/reshape_11/Reshape/shape?
model_5/reshape_11/ReshapeReshape9model_5/embedding_11/embedding_lookup/Identity_1:output:0)model_5/reshape_11/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
model_5/reshape_11/Reshape~
model_5/dot_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
model_5/dot_5/ExpandDims/dim?
model_5/dot_5/ExpandDims
ExpandDims#model_5/reshape_10/Reshape:output:0%model_5/dot_5/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????22
model_5/dot_5/ExpandDims?
model_5/dot_5/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
model_5/dot_5/ExpandDims_1/dim?
model_5/dot_5/ExpandDims_1
ExpandDims#model_5/reshape_11/Reshape:output:0'model_5/dot_5/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????22
model_5/dot_5/ExpandDims_1?
model_5/dot_5/MatMulBatchMatMulV2!model_5/dot_5/ExpandDims:output:0#model_5/dot_5/ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2
model_5/dot_5/MatMulw
model_5/dot_5/ShapeShapemodel_5/dot_5/MatMul:output:0*
T0*
_output_shapes
:2
model_5/dot_5/Shape?
model_5/dot_5/SqueezeSqueezemodel_5/dot_5/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
model_5/dot_5/Squeeze?
IdentityIdentitymodel_5/dot_5/Squeeze:output:0&^model_5/embedding_10/embedding_lookup&^model_5/embedding_11/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::2N
%model_5/embedding_10/embedding_lookup%model_5/embedding_10/embedding_lookup2N
%model_5/embedding_11/embedding_lookup%model_5/embedding_11/embedding_lookup:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_11:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_12
?
?
(__inference_model_5_layer_call_fn_407486
input_11
input_12
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_11input_12unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_4074792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_11:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_12
?
?
(__inference_model_5_layer_call_fn_407678
inputs_0
inputs_1
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_4075152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?

b
F__inference_reshape_11_layer_call_and_return_conditional_losses_407765

inputs
identityD
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
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
Reshape/shape/1?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_407554
input_11
input_12
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_11input_12unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_4072882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_11:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_12
?)
?
__inference__traced_save_407879
file_prefix6
2savev2_embedding_10_embeddings_read_readvariableop6
2savev2_embedding_11_embeddings_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop=
9savev2_adam_embedding_10_embeddings_m_read_readvariableop=
9savev2_adam_embedding_11_embeddings_m_read_readvariableop=
9savev2_adam_embedding_10_embeddings_v_read_readvariableop=
9savev2_adam_embedding_11_embeddings_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_embedding_10_embeddings_read_readvariableop2savev2_embedding_11_embeddings_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop9savev2_adam_embedding_10_embeddings_m_read_readvariableop9savev2_adam_embedding_11_embeddings_m_read_readvariableop9savev2_adam_embedding_10_embeddings_v_read_readvariableop9savev2_adam_embedding_11_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
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

identity_1Identity_1:output:0*k
_input_shapesZ
X: :	?2:	?K2: : : : : : : : : :	?2:	?K2:	?2:	?K2: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?2:%!

_output_shapes
:	?K2:
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
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?2:%!

_output_shapes
:	?K2:%!

_output_shapes
:	?2:%!

_output_shapes
:	?K2:

_output_shapes
: 
?
G
+__inference_reshape_10_layer_call_fn_407753

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_4073612
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
H__inference_embedding_10_layer_call_and_return_conditional_losses_407337

inputs
embedding_lookup_407325
identity??9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_407325Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/407325*+
_output_shapes
:?????????2*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/407325*+
_output_shapes
:?????????22
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????22
embedding_lookup/Identity_1?
9embedding_10/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_407325*
_output_shapes
:	?2*
dtype02;
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_10/embeddings/Regularizer/SquareSquareAembedding_10/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22,
*embedding_10/embeddings/Regularizer/Square?
)embedding_10/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_10/embeddings/Regularizer/Const?
'embedding_10/embeddings/Regularizer/SumSum.embedding_10/embeddings/Regularizer/Square:y:02embedding_10/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/Sum?
)embedding_10/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_10/embeddings/Regularizer/mul/x?
'embedding_10/embeddings/Regularizer/mulMul2embedding_10/embeddings/Regularizer/mul/x:output:00embedding_10/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/mul?
IdentityIdentity$embedding_lookup/Identity_1:output:0:^embedding_10/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:2v
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp9embedding_10/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_model_5_layer_call_fn_407668
inputs_0
inputs_1
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_model_5_layer_call_and_return_conditional_losses_4074792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
H__inference_embedding_11_layer_call_and_return_conditional_losses_407729

inputs
embedding_lookup_407717
identity??9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_407717Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/407717*+
_output_shapes
:?????????2*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/407717*+
_output_shapes
:?????????22
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????22
embedding_lookup/Identity_1?
9embedding_11/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_407717*
_output_shapes
:	?K2*
dtype02;
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_11/embeddings/Regularizer/SquareSquareAembedding_11/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?K22,
*embedding_11/embeddings/Regularizer/Square?
)embedding_11/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_11/embeddings/Regularizer/Const?
'embedding_11/embeddings/Regularizer/SumSum.embedding_11/embeddings/Regularizer/Square:y:02embedding_11/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/Sum?
)embedding_11/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_11/embeddings/Regularizer/mul/x?
'embedding_11/embeddings/Regularizer/mulMul2embedding_11/embeddings/Regularizer/mul/x:output:00embedding_11/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/mul?
IdentityIdentity$embedding_lookup/Identity_1:output:0:^embedding_11/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:2v
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp9embedding_11/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?,
?
C__inference_model_5_layer_call_and_return_conditional_losses_407423
input_11
input_12
embedding_11_407318
embedding_10_407346
identity??$embedding_10/StatefulPartitionedCall?9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?$embedding_11/StatefulPartitionedCall?9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallinput_12embedding_11_407318*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_4073092&
$embedding_11/StatefulPartitionedCall?
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinput_11embedding_10_407346*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_10_layer_call_and_return_conditional_losses_4073372&
$embedding_10/StatefulPartitionedCall?
reshape_10/PartitionedCallPartitionedCall-embedding_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_4073612
reshape_10/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall-embedding_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4073812
reshape_11/PartitionedCall?
dot_5/PartitionedCallPartitionedCall#reshape_10/PartitionedCall:output:0#reshape_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dot_5_layer_call_and_return_conditional_losses_4074012
dot_5/PartitionedCall?
9embedding_10/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_10_407346*
_output_shapes
:	?2*
dtype02;
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_10/embeddings/Regularizer/SquareSquareAembedding_10/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22,
*embedding_10/embeddings/Regularizer/Square?
)embedding_10/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_10/embeddings/Regularizer/Const?
'embedding_10/embeddings/Regularizer/SumSum.embedding_10/embeddings/Regularizer/Square:y:02embedding_10/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/Sum?
)embedding_10/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_10/embeddings/Regularizer/mul/x?
'embedding_10/embeddings/Regularizer/mulMul2embedding_10/embeddings/Regularizer/mul/x:output:00embedding_10/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/mul?
9embedding_11/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_11_407318*
_output_shapes
:	?K2*
dtype02;
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_11/embeddings/Regularizer/SquareSquareAembedding_11/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?K22,
*embedding_11/embeddings/Regularizer/Square?
)embedding_11/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_11/embeddings/Regularizer/Const?
'embedding_11/embeddings/Regularizer/SumSum.embedding_11/embeddings/Regularizer/Square:y:02embedding_11/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/Sum?
)embedding_11/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_11/embeddings/Regularizer/mul/x?
'embedding_11/embeddings/Regularizer/mulMul2embedding_11/embeddings/Regularizer/mul/x:output:00embedding_11/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/mul?
IdentityIdentitydot_5/PartitionedCall:output:0%^embedding_10/StatefulPartitionedCall:^embedding_10/embeddings/Regularizer/Square/ReadVariableOp%^embedding_11/StatefulPartitionedCall:^embedding_11/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2v
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp9embedding_10/embeddings/Regularizer/Square/ReadVariableOp2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2v
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp9embedding_11/embeddings/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_11:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_12
?	
m
A__inference_dot_5_layer_call_and_return_conditional_losses_407782
inputs_0
inputs_1
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????22

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????22
ExpandDims_1?
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shapew
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:?????????2:?????????2:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/1
?
s
-__inference_embedding_11_layer_call_fn_407736

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_4073092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_11_layer_call_and_return_conditional_losses_407309

inputs
embedding_lookup_407297
identity??9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_407297Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/407297*+
_output_shapes
:?????????2*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/407297*+
_output_shapes
:?????????22
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????22
embedding_lookup/Identity_1?
9embedding_11/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_407297*
_output_shapes
:	?K2*
dtype02;
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_11/embeddings/Regularizer/SquareSquareAembedding_11/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?K22,
*embedding_11/embeddings/Regularizer/Square?
)embedding_11/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_11/embeddings/Regularizer/Const?
'embedding_11/embeddings/Regularizer/SumSum.embedding_11/embeddings/Regularizer/Square:y:02embedding_11/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/Sum?
)embedding_11/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_11/embeddings/Regularizer/mul/x?
'embedding_11/embeddings/Regularizer/mulMul2embedding_11/embeddings/Regularizer/mul/x:output:00embedding_11/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/mul?
IdentityIdentity$embedding_lookup/Identity_1:output:0:^embedding_11/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:2v
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp9embedding_11/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
k
A__inference_dot_5_layer_call_and_return_conditional_losses_407401

inputs
inputs_1
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim}

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????22

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????22
ExpandDims_1?
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shapew
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2	
Squeezed
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:?????????2:?????????2:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?H
?
C__inference_model_5_layer_call_and_return_conditional_losses_407658
inputs_0
inputs_1(
$embedding_11_embedding_lookup_407611(
$embedding_10_embedding_lookup_407617
identity??embedding_10/embedding_lookup?9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?embedding_11/embedding_lookup?9embedding_11/embeddings/Regularizer/Square/ReadVariableOpy
embedding_11/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding_11/Cast?
embedding_11/embedding_lookupResourceGather$embedding_11_embedding_lookup_407611embedding_11/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_11/embedding_lookup/407611*+
_output_shapes
:?????????2*
dtype02
embedding_11/embedding_lookup?
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_11/embedding_lookup/407611*+
_output_shapes
:?????????22(
&embedding_11/embedding_lookup/Identity?
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????22*
(embedding_11/embedding_lookup/Identity_1y
embedding_10/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding_10/Cast?
embedding_10/embedding_lookupResourceGather$embedding_10_embedding_lookup_407617embedding_10/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_10/embedding_lookup/407617*+
_output_shapes
:?????????2*
dtype02
embedding_10/embedding_lookup?
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_10/embedding_lookup/407617*+
_output_shapes
:?????????22(
&embedding_10/embedding_lookup/Identity?
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????22*
(embedding_10/embedding_lookup/Identity_1?
reshape_10/ShapeShape1embedding_10/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
reshape_10/Shape?
reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_10/strided_slice/stack?
 reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_1?
 reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_2?
reshape_10/strided_sliceStridedSlicereshape_10/Shape:output:0'reshape_10/strided_slice/stack:output:0)reshape_10/strided_slice/stack_1:output:0)reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_10/strided_slicez
reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
reshape_10/Reshape/shape/1?
reshape_10/Reshape/shapePack!reshape_10/strided_slice:output:0#reshape_10/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_10/Reshape/shape?
reshape_10/ReshapeReshape1embedding_10/embedding_lookup/Identity_1:output:0!reshape_10/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
reshape_10/Reshape?
reshape_11/ShapeShape1embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
reshape_11/Shape?
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_11/strided_slice/stack?
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_1?
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_2?
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_11/strided_slicez
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
reshape_11/Reshape/shape/1?
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_11/Reshape/shape?
reshape_11/ReshapeReshape1embedding_11/embedding_lookup/Identity_1:output:0!reshape_11/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
reshape_11/Reshapen
dot_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
dot_5/ExpandDims/dim?
dot_5/ExpandDims
ExpandDimsreshape_10/Reshape:output:0dot_5/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????22
dot_5/ExpandDimsr
dot_5/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2
dot_5/ExpandDims_1/dim?
dot_5/ExpandDims_1
ExpandDimsreshape_11/Reshape:output:0dot_5/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????22
dot_5/ExpandDims_1?
dot_5/MatMulBatchMatMulV2dot_5/ExpandDims:output:0dot_5/ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2
dot_5/MatMul_
dot_5/ShapeShapedot_5/MatMul:output:0*
T0*
_output_shapes
:2
dot_5/Shape?
dot_5/SqueezeSqueezedot_5/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
dot_5/Squeeze?
9embedding_10/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_10_embedding_lookup_407617*
_output_shapes
:	?2*
dtype02;
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_10/embeddings/Regularizer/SquareSquareAembedding_10/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22,
*embedding_10/embeddings/Regularizer/Square?
)embedding_10/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_10/embeddings/Regularizer/Const?
'embedding_10/embeddings/Regularizer/SumSum.embedding_10/embeddings/Regularizer/Square:y:02embedding_10/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/Sum?
)embedding_10/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_10/embeddings/Regularizer/mul/x?
'embedding_10/embeddings/Regularizer/mulMul2embedding_10/embeddings/Regularizer/mul/x:output:00embedding_10/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/mul?
9embedding_11/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_11_embedding_lookup_407611*
_output_shapes
:	?K2*
dtype02;
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_11/embeddings/Regularizer/SquareSquareAembedding_11/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?K22,
*embedding_11/embeddings/Regularizer/Square?
)embedding_11/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_11/embeddings/Regularizer/Const?
'embedding_11/embeddings/Regularizer/SumSum.embedding_11/embeddings/Regularizer/Square:y:02embedding_11/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/Sum?
)embedding_11/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_11/embeddings/Regularizer/mul/x?
'embedding_11/embeddings/Regularizer/mulMul2embedding_11/embeddings/Regularizer/mul/x:output:00embedding_11/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/mul?
IdentityIdentitydot_5/Squeeze:output:0^embedding_10/embedding_lookup:^embedding_10/embeddings/Regularizer/Square/ReadVariableOp^embedding_11/embedding_lookup:^embedding_11/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2v
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp9embedding_10/embeddings/Regularizer/Square/ReadVariableOp2>
embedding_11/embedding_lookupembedding_11/embedding_lookup2v
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp9embedding_11/embeddings/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
__inference_loss_fn_0_407799F
Bembedding_10_embeddings_regularizer_square_readvariableop_resource
identity??9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
9embedding_10/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpBembedding_10_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	?2*
dtype02;
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_10/embeddings/Regularizer/SquareSquareAembedding_10/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22,
*embedding_10/embeddings/Regularizer/Square?
)embedding_10/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_10/embeddings/Regularizer/Const?
'embedding_10/embeddings/Regularizer/SumSum.embedding_10/embeddings/Regularizer/Square:y:02embedding_10/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/Sum?
)embedding_10/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_10/embeddings/Regularizer/mul/x?
'embedding_10/embeddings/Regularizer/mulMul2embedding_10/embeddings/Regularizer/mul/x:output:00embedding_10/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/mul?
IdentityIdentity+embedding_10/embeddings/Regularizer/mul:z:0:^embedding_10/embeddings/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2v
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp9embedding_10/embeddings/Regularizer/Square/ReadVariableOp
?
R
&__inference_dot_5_layer_call_fn_407788
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dot_5_layer_call_and_return_conditional_losses_4074012
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*9
_input_shapes(
&:?????????2:?????????2:Q M
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????2
"
_user_specified_name
inputs/1
?,
?
C__inference_model_5_layer_call_and_return_conditional_losses_407515

inputs
inputs_1
embedding_11_407493
embedding_10_407496
identity??$embedding_10/StatefulPartitionedCall?9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?$embedding_11/StatefulPartitionedCall?9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_11_407493*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_4073092&
$embedding_11/StatefulPartitionedCall?
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_10_407496*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_10_layer_call_and_return_conditional_losses_4073372&
$embedding_10/StatefulPartitionedCall?
reshape_10/PartitionedCallPartitionedCall-embedding_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_4073612
reshape_10/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall-embedding_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4073812
reshape_11/PartitionedCall?
dot_5/PartitionedCallPartitionedCall#reshape_10/PartitionedCall:output:0#reshape_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dot_5_layer_call_and_return_conditional_losses_4074012
dot_5/PartitionedCall?
9embedding_10/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_10_407496*
_output_shapes
:	?2*
dtype02;
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_10/embeddings/Regularizer/SquareSquareAembedding_10/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22,
*embedding_10/embeddings/Regularizer/Square?
)embedding_10/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_10/embeddings/Regularizer/Const?
'embedding_10/embeddings/Regularizer/SumSum.embedding_10/embeddings/Regularizer/Square:y:02embedding_10/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/Sum?
)embedding_10/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_10/embeddings/Regularizer/mul/x?
'embedding_10/embeddings/Regularizer/mulMul2embedding_10/embeddings/Regularizer/mul/x:output:00embedding_10/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/mul?
9embedding_11/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_11_407493*
_output_shapes
:	?K2*
dtype02;
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_11/embeddings/Regularizer/SquareSquareAembedding_11/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?K22,
*embedding_11/embeddings/Regularizer/Square?
)embedding_11/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_11/embeddings/Regularizer/Const?
'embedding_11/embeddings/Regularizer/SumSum.embedding_11/embeddings/Regularizer/Square:y:02embedding_11/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/Sum?
)embedding_11/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_11/embeddings/Regularizer/mul/x?
'embedding_11/embeddings/Regularizer/mulMul2embedding_11/embeddings/Regularizer/mul/x:output:00embedding_11/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/mul?
IdentityIdentitydot_5/PartitionedCall:output:0%^embedding_10/StatefulPartitionedCall:^embedding_10/embeddings/Regularizer/Square/ReadVariableOp%^embedding_11/StatefulPartitionedCall:^embedding_11/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2v
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp9embedding_10/embeddings/Regularizer/Square/ReadVariableOp2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2v
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp9embedding_11/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?B
?
"__inference__traced_restore_407934
file_prefix,
(assignvariableop_embedding_10_embeddings.
*assignvariableop_1_embedding_11_embeddings 
assignvariableop_2_adam_iter"
assignvariableop_3_adam_beta_1"
assignvariableop_4_adam_beta_2!
assignvariableop_5_adam_decay)
%assignvariableop_6_adam_learning_rate
assignvariableop_7_total
assignvariableop_8_count
assignvariableop_9_total_1
assignvariableop_10_count_16
2assignvariableop_11_adam_embedding_10_embeddings_m6
2assignvariableop_12_adam_embedding_11_embeddings_m6
2assignvariableop_13_adam_embedding_10_embeddings_v6
2assignvariableop_14_adam_embedding_11_embeddings_v
identity_16??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp(assignvariableop_embedding_10_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp*assignvariableop_1_embedding_11_embeddingsIdentity_1:output:0"/device:CPU:0*
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
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp2assignvariableop_11_adam_embedding_10_embeddings_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp2assignvariableop_12_adam_embedding_11_embeddings_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp2assignvariableop_13_adam_embedding_10_embeddings_vIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp2assignvariableop_14_adam_embedding_11_embeddings_vIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_149
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_15?
Identity_16IdentityIdentity_15:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_16"#
identity_16Identity_16:output:0*Q
_input_shapes@
>: :::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
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
?,
?
C__inference_model_5_layer_call_and_return_conditional_losses_407479

inputs
inputs_1
embedding_11_407457
embedding_10_407460
identity??$embedding_10/StatefulPartitionedCall?9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?$embedding_11/StatefulPartitionedCall?9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_11_407457*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_4073092&
$embedding_11/StatefulPartitionedCall?
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_10_407460*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_10_layer_call_and_return_conditional_losses_4073372&
$embedding_10/StatefulPartitionedCall?
reshape_10/PartitionedCallPartitionedCall-embedding_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_4073612
reshape_10/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall-embedding_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4073812
reshape_11/PartitionedCall?
dot_5/PartitionedCallPartitionedCall#reshape_10/PartitionedCall:output:0#reshape_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dot_5_layer_call_and_return_conditional_losses_4074012
dot_5/PartitionedCall?
9embedding_10/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_10_407460*
_output_shapes
:	?2*
dtype02;
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_10/embeddings/Regularizer/SquareSquareAembedding_10/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22,
*embedding_10/embeddings/Regularizer/Square?
)embedding_10/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_10/embeddings/Regularizer/Const?
'embedding_10/embeddings/Regularizer/SumSum.embedding_10/embeddings/Regularizer/Square:y:02embedding_10/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/Sum?
)embedding_10/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_10/embeddings/Regularizer/mul/x?
'embedding_10/embeddings/Regularizer/mulMul2embedding_10/embeddings/Regularizer/mul/x:output:00embedding_10/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/mul?
9embedding_11/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_11_407457*
_output_shapes
:	?K2*
dtype02;
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_11/embeddings/Regularizer/SquareSquareAembedding_11/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?K22,
*embedding_11/embeddings/Regularizer/Square?
)embedding_11/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_11/embeddings/Regularizer/Const?
'embedding_11/embeddings/Regularizer/SumSum.embedding_11/embeddings/Regularizer/Square:y:02embedding_11/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/Sum?
)embedding_11/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_11/embeddings/Regularizer/mul/x?
'embedding_11/embeddings/Regularizer/mulMul2embedding_11/embeddings/Regularizer/mul/x:output:00embedding_11/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/mul?
IdentityIdentitydot_5/PartitionedCall:output:0%^embedding_10/StatefulPartitionedCall:^embedding_10/embeddings/Regularizer/Square/ReadVariableOp%^embedding_11/StatefulPartitionedCall:^embedding_11/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2v
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp9embedding_10/embeddings/Regularizer/Square/ReadVariableOp2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2v
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp9embedding_11/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

b
F__inference_reshape_10_layer_call_and_return_conditional_losses_407361

inputs
identityD
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
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
Reshape/shape/1?
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapeo
ReshapeReshapeinputsReshape/shape:output:0*
T0*'
_output_shapes
:?????????22	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
s
-__inference_embedding_10_layer_call_fn_407707

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_10_layer_call_and_return_conditional_losses_4073372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_embedding_10_layer_call_and_return_conditional_losses_407700

inputs
embedding_lookup_407688
identity??9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_407688Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/407688*+
_output_shapes
:?????????2*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/407688*+
_output_shapes
:?????????22
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????22
embedding_lookup/Identity_1?
9embedding_10/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_407688*
_output_shapes
:	?2*
dtype02;
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_10/embeddings/Regularizer/SquareSquareAembedding_10/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22,
*embedding_10/embeddings/Regularizer/Square?
)embedding_10/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_10/embeddings/Regularizer/Const?
'embedding_10/embeddings/Regularizer/SumSum.embedding_10/embeddings/Regularizer/Square:y:02embedding_10/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/Sum?
)embedding_10/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_10/embeddings/Regularizer/mul/x?
'embedding_10/embeddings/Regularizer/mulMul2embedding_10/embeddings/Regularizer/mul/x:output:00embedding_10/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/mul?
IdentityIdentity$embedding_lookup/Identity_1:output:0:^embedding_10/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*
T0*+
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????:2v
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp9embedding_10/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
C__inference_model_5_layer_call_and_return_conditional_losses_407606
inputs_0
inputs_1(
$embedding_11_embedding_lookup_407559(
$embedding_10_embedding_lookup_407565
identity??embedding_10/embedding_lookup?9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?embedding_11/embedding_lookup?9embedding_11/embeddings/Regularizer/Square/ReadVariableOpy
embedding_11/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding_11/Cast?
embedding_11/embedding_lookupResourceGather$embedding_11_embedding_lookup_407559embedding_11/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_11/embedding_lookup/407559*+
_output_shapes
:?????????2*
dtype02
embedding_11/embedding_lookup?
&embedding_11/embedding_lookup/IdentityIdentity&embedding_11/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_11/embedding_lookup/407559*+
_output_shapes
:?????????22(
&embedding_11/embedding_lookup/Identity?
(embedding_11/embedding_lookup/Identity_1Identity/embedding_11/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????22*
(embedding_11/embedding_lookup/Identity_1y
embedding_10/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding_10/Cast?
embedding_10/embedding_lookupResourceGather$embedding_10_embedding_lookup_407565embedding_10/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*7
_class-
+)loc:@embedding_10/embedding_lookup/407565*+
_output_shapes
:?????????2*
dtype02
embedding_10/embedding_lookup?
&embedding_10/embedding_lookup/IdentityIdentity&embedding_10/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*7
_class-
+)loc:@embedding_10/embedding_lookup/407565*+
_output_shapes
:?????????22(
&embedding_10/embedding_lookup/Identity?
(embedding_10/embedding_lookup/Identity_1Identity/embedding_10/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????22*
(embedding_10/embedding_lookup/Identity_1?
reshape_10/ShapeShape1embedding_10/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
reshape_10/Shape?
reshape_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_10/strided_slice/stack?
 reshape_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_1?
 reshape_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_10/strided_slice/stack_2?
reshape_10/strided_sliceStridedSlicereshape_10/Shape:output:0'reshape_10/strided_slice/stack:output:0)reshape_10/strided_slice/stack_1:output:0)reshape_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_10/strided_slicez
reshape_10/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
reshape_10/Reshape/shape/1?
reshape_10/Reshape/shapePack!reshape_10/strided_slice:output:0#reshape_10/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_10/Reshape/shape?
reshape_10/ReshapeReshape1embedding_10/embedding_lookup/Identity_1:output:0!reshape_10/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
reshape_10/Reshape?
reshape_11/ShapeShape1embedding_11/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
reshape_11/Shape?
reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_11/strided_slice/stack?
 reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_1?
 reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_11/strided_slice/stack_2?
reshape_11/strided_sliceStridedSlicereshape_11/Shape:output:0'reshape_11/strided_slice/stack:output:0)reshape_11/strided_slice/stack_1:output:0)reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_11/strided_slicez
reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :22
reshape_11/Reshape/shape/1?
reshape_11/Reshape/shapePack!reshape_11/strided_slice:output:0#reshape_11/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:2
reshape_11/Reshape/shape?
reshape_11/ReshapeReshape1embedding_11/embedding_lookup/Identity_1:output:0!reshape_11/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????22
reshape_11/Reshapen
dot_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
dot_5/ExpandDims/dim?
dot_5/ExpandDims
ExpandDimsreshape_10/Reshape:output:0dot_5/ExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????22
dot_5/ExpandDimsr
dot_5/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :2
dot_5/ExpandDims_1/dim?
dot_5/ExpandDims_1
ExpandDimsreshape_11/Reshape:output:0dot_5/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:?????????22
dot_5/ExpandDims_1?
dot_5/MatMulBatchMatMulV2dot_5/ExpandDims:output:0dot_5/ExpandDims_1:output:0*
T0*+
_output_shapes
:?????????2
dot_5/MatMul_
dot_5/ShapeShapedot_5/MatMul:output:0*
T0*
_output_shapes
:2
dot_5/Shape?
dot_5/SqueezeSqueezedot_5/MatMul:output:0*
T0*'
_output_shapes
:?????????*
squeeze_dims
2
dot_5/Squeeze?
9embedding_10/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_10_embedding_lookup_407565*
_output_shapes
:	?2*
dtype02;
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_10/embeddings/Regularizer/SquareSquareAembedding_10/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22,
*embedding_10/embeddings/Regularizer/Square?
)embedding_10/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_10/embeddings/Regularizer/Const?
'embedding_10/embeddings/Regularizer/SumSum.embedding_10/embeddings/Regularizer/Square:y:02embedding_10/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/Sum?
)embedding_10/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_10/embeddings/Regularizer/mul/x?
'embedding_10/embeddings/Regularizer/mulMul2embedding_10/embeddings/Regularizer/mul/x:output:00embedding_10/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/mul?
9embedding_11/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp$embedding_11_embedding_lookup_407559*
_output_shapes
:	?K2*
dtype02;
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_11/embeddings/Regularizer/SquareSquareAembedding_11/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?K22,
*embedding_11/embeddings/Regularizer/Square?
)embedding_11/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_11/embeddings/Regularizer/Const?
'embedding_11/embeddings/Regularizer/SumSum.embedding_11/embeddings/Regularizer/Square:y:02embedding_11/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/Sum?
)embedding_11/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_11/embeddings/Regularizer/mul/x?
'embedding_11/embeddings/Regularizer/mulMul2embedding_11/embeddings/Regularizer/mul/x:output:00embedding_11/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/mul?
IdentityIdentitydot_5/Squeeze:output:0^embedding_10/embedding_lookup:^embedding_10/embeddings/Regularizer/Square/ReadVariableOp^embedding_11/embedding_lookup:^embedding_11/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::2>
embedding_10/embedding_lookupembedding_10/embedding_lookup2v
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp9embedding_10/embeddings/Regularizer/Square/ReadVariableOp2>
embedding_11/embedding_lookupembedding_11/embedding_lookup2v
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp9embedding_11/embeddings/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?,
?
C__inference_model_5_layer_call_and_return_conditional_losses_407449
input_11
input_12
embedding_11_407427
embedding_10_407430
identity??$embedding_10/StatefulPartitionedCall?9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?$embedding_11/StatefulPartitionedCall?9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
$embedding_11/StatefulPartitionedCallStatefulPartitionedCallinput_12embedding_11_407427*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_11_layer_call_and_return_conditional_losses_4073092&
$embedding_11/StatefulPartitionedCall?
$embedding_10/StatefulPartitionedCallStatefulPartitionedCallinput_11embedding_10_407430*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????2*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_embedding_10_layer_call_and_return_conditional_losses_4073372&
$embedding_10/StatefulPartitionedCall?
reshape_10/PartitionedCallPartitionedCall-embedding_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_10_layer_call_and_return_conditional_losses_4073612
reshape_10/PartitionedCall?
reshape_11/PartitionedCallPartitionedCall-embedding_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4073812
reshape_11/PartitionedCall?
dot_5/PartitionedCallPartitionedCall#reshape_10/PartitionedCall:output:0#reshape_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_dot_5_layer_call_and_return_conditional_losses_4074012
dot_5/PartitionedCall?
9embedding_10/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_10_407430*
_output_shapes
:	?2*
dtype02;
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_10/embeddings/Regularizer/SquareSquareAembedding_10/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?22,
*embedding_10/embeddings/Regularizer/Square?
)embedding_10/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_10/embeddings/Regularizer/Const?
'embedding_10/embeddings/Regularizer/SumSum.embedding_10/embeddings/Regularizer/Square:y:02embedding_10/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/Sum?
)embedding_10/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_10/embeddings/Regularizer/mul/x?
'embedding_10/embeddings/Regularizer/mulMul2embedding_10/embeddings/Regularizer/mul/x:output:00embedding_10/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_10/embeddings/Regularizer/mul?
9embedding_11/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_11_407427*
_output_shapes
:	?K2*
dtype02;
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp?
*embedding_11/embeddings/Regularizer/SquareSquareAembedding_11/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?K22,
*embedding_11/embeddings/Regularizer/Square?
)embedding_11/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2+
)embedding_11/embeddings/Regularizer/Const?
'embedding_11/embeddings/Regularizer/SumSum.embedding_11/embeddings/Regularizer/Square:y:02embedding_11/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/Sum?
)embedding_11/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *?7?52+
)embedding_11/embeddings/Regularizer/mul/x?
'embedding_11/embeddings/Regularizer/mulMul2embedding_11/embeddings/Regularizer/mul/x:output:00embedding_11/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2)
'embedding_11/embeddings/Regularizer/mul?
IdentityIdentitydot_5/PartitionedCall:output:0%^embedding_10/StatefulPartitionedCall:^embedding_10/embeddings/Regularizer/Square/ReadVariableOp%^embedding_11/StatefulPartitionedCall:^embedding_11/embeddings/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:?????????:?????????::2L
$embedding_10/StatefulPartitionedCall$embedding_10/StatefulPartitionedCall2v
9embedding_10/embeddings/Regularizer/Square/ReadVariableOp9embedding_10/embeddings/Regularizer/Square/ReadVariableOp2L
$embedding_11/StatefulPartitionedCall$embedding_11/StatefulPartitionedCall2v
9embedding_11/embeddings/Regularizer/Square/ReadVariableOp9embedding_11/embeddings/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_11:QM
'
_output_shapes
:?????????
"
_user_specified_name
input_12
?
G
+__inference_reshape_11_layer_call_fn_407770

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_reshape_11_layer_call_and_return_conditional_losses_4073812
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0**
_input_shapes
:?????????2:S O
+
_output_shapes
:?????????2
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_111
serving_default_input_11:0?????????
=
input_121
serving_default_input_12:0?????????9
dot_50
StatefulPartitionedCall:0?????????tensorflow/serving/predict:õ
?1
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
*V&call_and_return_all_conditional_losses
W__call__
X_default_save_signature"?.
_tf_keras_network?.{"class_name": "Functional", "name": "model_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}, "name": "input_11", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}, "name": "input_12", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 610, "output_dim": 50, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_10", "inbound_nodes": [[["input_11", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding_11", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 9719, "output_dim": 50, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_11", "inbound_nodes": [[["input_12", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_10", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [50]}}, "name": "reshape_10", "inbound_nodes": [[["embedding_10", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_11", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [50]}}, "name": "reshape_11", "inbound_nodes": [[["embedding_11", 0, 0, {}]]]}, {"class_name": "Dot", "config": {"name": "dot_5", "trainable": true, "dtype": "float32", "axes": 1, "normalize": false}, "name": "dot_5", "inbound_nodes": [[["reshape_10", 0, 0, {}], ["reshape_11", 0, 0, {}]]]}], "input_layers": [["input_11", 0, 0], ["input_12", 0, 0]], "output_layers": [["dot_5", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_5", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}, "name": "input_11", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}, "name": "input_12", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 610, "output_dim": 50, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_10", "inbound_nodes": [[["input_11", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding_11", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 9719, "output_dim": 50, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_11", "inbound_nodes": [[["input_12", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_10", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [50]}}, "name": "reshape_10", "inbound_nodes": [[["embedding_10", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_11", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [50]}}, "name": "reshape_11", "inbound_nodes": [[["embedding_11", 0, 0, {}]]]}, {"class_name": "Dot", "config": {"name": "dot_5", "trainable": true, "dtype": "float32", "axes": 1, "normalize": false}, "name": "dot_5", "inbound_nodes": [[["reshape_10", 0, 0, {}], ["reshape_11", 0, 0, {}]]]}], "input_layers": [["input_11", 0, 0], ["input_12", 0, 0]], "output_layers": [["dot_5", 0, 0]]}}, "training_config": {"loss": "mean_squared_error", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_11", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_12", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_12"}}
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 610, "output_dim": 50, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_11", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 9719, "output_dim": 50, "embeddings_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_10", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [50]}}}
?
trainable_variables
regularization_losses
	variables
	keras_api
*_&call_and_return_all_conditional_losses
`__call__"?
_tf_keras_layer?{"class_name": "Reshape", "name": "reshape_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_11", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [50]}}}
?
 trainable_variables
!regularization_losses
"	variables
#	keras_api
*a&call_and_return_all_conditional_losses
b__call__"?
_tf_keras_layer?{"class_name": "Dot", "name": "dot_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dot_5", "trainable": true, "dtype": "float32", "axes": 1, "normalize": false}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 50]}, {"class_name": "TensorShape", "items": [null, 50]}]}
w
$iter

%beta_1

&beta_2
	'decay
(learning_ratemRmSvTvU"
	optimizer
.
0
1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
)layer_regularization_losses
	trainable_variables

regularization_losses
*metrics
+non_trainable_variables
,layer_metrics

-layers
	variables
W__call__
X_default_save_signature
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
,
eserving_default"
signature_map
*:(	?22embedding_10/embeddings
'
0"
trackable_list_wrapper
'
c0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
.layer_regularization_losses
trainable_variables
regularization_losses
/metrics
0non_trainable_variables
1layer_metrics

2layers
	variables
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
*:(	?K22embedding_11/embeddings
'
0"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
3layer_regularization_losses
trainable_variables
regularization_losses
4metrics
5non_trainable_variables
6layer_metrics

7layers
	variables
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
8layer_regularization_losses
trainable_variables
regularization_losses
9metrics
:non_trainable_variables
;layer_metrics

<layers
	variables
^__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
=layer_regularization_losses
trainable_variables
regularization_losses
>metrics
?non_trainable_variables
@layer_metrics

Alayers
	variables
`__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Blayer_regularization_losses
 trainable_variables
!regularization_losses
Cmetrics
Dnon_trainable_variables
Elayer_metrics

Flayers
"	variables
b__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
'
c0"
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
d0"
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
?
	Itotal
	Jcount
K	variables
L	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?
	Mtotal
	Ncount
O
_fn_kwargs
P	variables
Q	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
.
I0
J1"
trackable_list_wrapper
-
K	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
M0
N1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
/:-	?22Adam/embedding_10/embeddings/m
/:-	?K22Adam/embedding_11/embeddings/m
/:-	?22Adam/embedding_10/embeddings/v
/:-	?K22Adam/embedding_11/embeddings/v
?2?
C__inference_model_5_layer_call_and_return_conditional_losses_407606
C__inference_model_5_layer_call_and_return_conditional_losses_407449
C__inference_model_5_layer_call_and_return_conditional_losses_407658
C__inference_model_5_layer_call_and_return_conditional_losses_407423?
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
?2?
(__inference_model_5_layer_call_fn_407522
(__inference_model_5_layer_call_fn_407486
(__inference_model_5_layer_call_fn_407668
(__inference_model_5_layer_call_fn_407678?
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
?2?
!__inference__wrapped_model_407288?
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
annotations? *P?M
K?H
"?
input_11?????????
"?
input_12?????????
?2?
H__inference_embedding_10_layer_call_and_return_conditional_losses_407700?
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
-__inference_embedding_10_layer_call_fn_407707?
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
H__inference_embedding_11_layer_call_and_return_conditional_losses_407729?
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
-__inference_embedding_11_layer_call_fn_407736?
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
F__inference_reshape_10_layer_call_and_return_conditional_losses_407748?
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
+__inference_reshape_10_layer_call_fn_407753?
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
F__inference_reshape_11_layer_call_and_return_conditional_losses_407765?
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
+__inference_reshape_11_layer_call_fn_407770?
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
A__inference_dot_5_layer_call_and_return_conditional_losses_407782?
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
&__inference_dot_5_layer_call_fn_407788?
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
__inference_loss_fn_0_407799?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_407810?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_407554input_11input_12"?
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
 ?
!__inference__wrapped_model_407288?Z?W
P?M
K?H
"?
input_11?????????
"?
input_12?????????
? "-?*
(
dot_5?
dot_5??????????
A__inference_dot_5_layer_call_and_return_conditional_losses_407782?Z?W
P?M
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2
? "%?"
?
0?????????
? ?
&__inference_dot_5_layer_call_fn_407788vZ?W
P?M
K?H
"?
inputs/0?????????2
"?
inputs/1?????????2
? "???????????
H__inference_embedding_10_layer_call_and_return_conditional_losses_407700_/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????2
? ?
-__inference_embedding_10_layer_call_fn_407707R/?,
%?"
 ?
inputs?????????
? "??????????2?
H__inference_embedding_11_layer_call_and_return_conditional_losses_407729_/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????2
? ?
-__inference_embedding_11_layer_call_fn_407736R/?,
%?"
 ?
inputs?????????
? "??????????2;
__inference_loss_fn_0_407799?

? 
? "? ;
__inference_loss_fn_1_407810?

? 
? "? ?
C__inference_model_5_layer_call_and_return_conditional_losses_407423?b?_
X?U
K?H
"?
input_11?????????
"?
input_12?????????
p

 
? "%?"
?
0?????????
? ?
C__inference_model_5_layer_call_and_return_conditional_losses_407449?b?_
X?U
K?H
"?
input_11?????????
"?
input_12?????????
p 

 
? "%?"
?
0?????????
? ?
C__inference_model_5_layer_call_and_return_conditional_losses_407606?b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p

 
? "%?"
?
0?????????
? ?
C__inference_model_5_layer_call_and_return_conditional_losses_407658?b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p 

 
? "%?"
?
0?????????
? ?
(__inference_model_5_layer_call_fn_407486?b?_
X?U
K?H
"?
input_11?????????
"?
input_12?????????
p

 
? "???????????
(__inference_model_5_layer_call_fn_407522?b?_
X?U
K?H
"?
input_11?????????
"?
input_12?????????
p 

 
? "???????????
(__inference_model_5_layer_call_fn_407668?b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p

 
? "???????????
(__inference_model_5_layer_call_fn_407678?b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p 

 
? "???????????
F__inference_reshape_10_layer_call_and_return_conditional_losses_407748\3?0
)?&
$?!
inputs?????????2
? "%?"
?
0?????????2
? ~
+__inference_reshape_10_layer_call_fn_407753O3?0
)?&
$?!
inputs?????????2
? "??????????2?
F__inference_reshape_11_layer_call_and_return_conditional_losses_407765\3?0
)?&
$?!
inputs?????????2
? "%?"
?
0?????????2
? ~
+__inference_reshape_11_layer_call_fn_407770O3?0
)?&
$?!
inputs?????????2
? "??????????2?
$__inference_signature_wrapper_407554?m?j
? 
c?`
.
input_11"?
input_11?????????
.
input_12"?
input_12?????????"-?*
(
dot_5?
dot_5?????????