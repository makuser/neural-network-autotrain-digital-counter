яж
зї
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
Ы
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
ъ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%Ј—8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
dtypetypeИ
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Њ
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.42v2.4.3-115-g64918868e218еп

О
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma
З
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:*
dtype0
М
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta
Е
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean
У
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
Ґ
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance
Ы
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
В
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
: *
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
: *
dtype0
Д
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
: *
dtype0
Д
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
: *
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
АА*
dtype0
q
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_6/bias
j
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes	
:А*
dtype0
y
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_7/kernel
r
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes
:	А*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
n
Adadelta/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdadelta/iter
g
!Adadelta/iter/Read/ReadVariableOpReadVariableOpAdadelta/iter*
_output_shapes
: *
dtype0	
p
Adadelta/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/decay
i
"Adadelta/decay/Read/ReadVariableOpReadVariableOpAdadelta/decay*
_output_shapes
: *
dtype0
А
Adadelta/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdadelta/learning_rate
y
*Adadelta/learning_rate/Read/ReadVariableOpReadVariableOpAdadelta/learning_rate*
_output_shapes
: *
dtype0
l
Adadelta/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/rho
e
 Adadelta/rho/Read/ReadVariableOpReadVariableOpAdadelta/rho*
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
ґ
/Adadelta/batch_normalization_3/gamma/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/Adadelta/batch_normalization_3/gamma/accum_grad
ѓ
CAdadelta/batch_normalization_3/gamma/accum_grad/Read/ReadVariableOpReadVariableOp/Adadelta/batch_normalization_3/gamma/accum_grad*
_output_shapes
:*
dtype0
і
.Adadelta/batch_normalization_3/beta/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adadelta/batch_normalization_3/beta/accum_grad
≠
BAdadelta/batch_normalization_3/beta/accum_grad/Read/ReadVariableOpReadVariableOp.Adadelta/batch_normalization_3/beta/accum_grad*
_output_shapes
:*
dtype0
™
#Adadelta/conv2d_9/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adadelta/conv2d_9/kernel/accum_grad
£
7Adadelta/conv2d_9/kernel/accum_grad/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_9/kernel/accum_grad*&
_output_shapes
: *
dtype0
Ъ
!Adadelta/conv2d_9/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adadelta/conv2d_9/bias/accum_grad
У
5Adadelta/conv2d_9/bias/accum_grad/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_9/bias/accum_grad*
_output_shapes
: *
dtype0
ђ
$Adadelta/conv2d_10/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *5
shared_name&$Adadelta/conv2d_10/kernel/accum_grad
•
8Adadelta/conv2d_10/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_10/kernel/accum_grad*&
_output_shapes
:  *
dtype0
Ь
"Adadelta/conv2d_10/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adadelta/conv2d_10/bias/accum_grad
Х
6Adadelta/conv2d_10/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_10/bias/accum_grad*
_output_shapes
: *
dtype0
ђ
$Adadelta/conv2d_11/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *5
shared_name&$Adadelta/conv2d_11/kernel/accum_grad
•
8Adadelta/conv2d_11/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/conv2d_11/kernel/accum_grad*&
_output_shapes
:  *
dtype0
Ь
"Adadelta/conv2d_11/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adadelta/conv2d_11/bias/accum_grad
Х
6Adadelta/conv2d_11/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_11/bias/accum_grad*
_output_shapes
: *
dtype0
Ґ
"Adadelta/dense_6/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*3
shared_name$"Adadelta/dense_6/kernel/accum_grad
Ы
6Adadelta/dense_6/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_6/kernel/accum_grad* 
_output_shapes
:
АА*
dtype0
Щ
 Adadelta/dense_6/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*1
shared_name" Adadelta/dense_6/bias/accum_grad
Т
4Adadelta/dense_6/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_6/bias/accum_grad*
_output_shapes	
:А*
dtype0
°
"Adadelta/dense_7/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*3
shared_name$"Adadelta/dense_7/kernel/accum_grad
Ъ
6Adadelta/dense_7/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_7/kernel/accum_grad*
_output_shapes
:	А*
dtype0
Ш
 Adadelta/dense_7/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adadelta/dense_7/bias/accum_grad
С
4Adadelta/dense_7/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_7/bias/accum_grad*
_output_shapes
:*
dtype0
і
.Adadelta/batch_normalization_3/gamma/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adadelta/batch_normalization_3/gamma/accum_var
≠
BAdadelta/batch_normalization_3/gamma/accum_var/Read/ReadVariableOpReadVariableOp.Adadelta/batch_normalization_3/gamma/accum_var*
_output_shapes
:*
dtype0
≤
-Adadelta/batch_normalization_3/beta/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-Adadelta/batch_normalization_3/beta/accum_var
Ђ
AAdadelta/batch_normalization_3/beta/accum_var/Read/ReadVariableOpReadVariableOp-Adadelta/batch_normalization_3/beta/accum_var*
_output_shapes
:*
dtype0
®
"Adadelta/conv2d_9/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adadelta/conv2d_9/kernel/accum_var
°
6Adadelta/conv2d_9/kernel/accum_var/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_9/kernel/accum_var*&
_output_shapes
: *
dtype0
Ш
 Adadelta/conv2d_9/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adadelta/conv2d_9/bias/accum_var
С
4Adadelta/conv2d_9/bias/accum_var/Read/ReadVariableOpReadVariableOp Adadelta/conv2d_9/bias/accum_var*
_output_shapes
: *
dtype0
™
#Adadelta/conv2d_10/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *4
shared_name%#Adadelta/conv2d_10/kernel/accum_var
£
7Adadelta/conv2d_10/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_10/kernel/accum_var*&
_output_shapes
:  *
dtype0
Ъ
!Adadelta/conv2d_10/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adadelta/conv2d_10/bias/accum_var
У
5Adadelta/conv2d_10/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_10/bias/accum_var*
_output_shapes
: *
dtype0
™
#Adadelta/conv2d_11/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *4
shared_name%#Adadelta/conv2d_11/kernel/accum_var
£
7Adadelta/conv2d_11/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_11/kernel/accum_var*&
_output_shapes
:  *
dtype0
Ъ
!Adadelta/conv2d_11/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adadelta/conv2d_11/bias/accum_var
У
5Adadelta/conv2d_11/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_11/bias/accum_var*
_output_shapes
: *
dtype0
†
!Adadelta/dense_6/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*2
shared_name#!Adadelta/dense_6/kernel/accum_var
Щ
5Adadelta/dense_6/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_6/kernel/accum_var* 
_output_shapes
:
АА*
dtype0
Ч
Adadelta/dense_6/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adadelta/dense_6/bias/accum_var
Р
3Adadelta/dense_6/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_6/bias/accum_var*
_output_shapes	
:А*
dtype0
Я
!Adadelta/dense_7/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*2
shared_name#!Adadelta/dense_7/kernel/accum_var
Ш
5Adadelta/dense_7/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_7/kernel/accum_var*
_output_shapes
:	А*
dtype0
Ц
Adadelta/dense_7/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adadelta/dense_7/bias/accum_var
П
3Adadelta/dense_7/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_7/bias/accum_var*
_output_shapes
:*
dtype0

NoOpNoOp
„Q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ТQ
valueИQBЕQ BюP
П
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
Ч
axis
	gamma
beta
moving_mean
moving_variance
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
 regularization_losses
!	variables
"trainable_variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'	variables
(trainable_variables
)	keras_api
R
*regularization_losses
+	variables
,trainable_variables
-	keras_api
h

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
R
4regularization_losses
5	variables
6trainable_variables
7	keras_api
R
8regularization_losses
9	variables
:trainable_variables
;	keras_api
h

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
h

Bkernel
Cbias
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
н
Hiter
	Idecay
Jlearning_rate
Krho
accum_gradО
accum_gradП
accum_gradР
accum_gradС$
accum_gradТ%
accum_gradУ.
accum_gradФ/
accum_gradХ<
accum_gradЦ=
accum_gradЧB
accum_gradШC
accum_gradЩ	accum_varЪ	accum_varЫ	accum_varЬ	accum_varЭ$	accum_varЮ%	accum_varЯ.	accum_var†/	accum_var°<	accum_varҐ=	accum_var£B	accum_var§C	accum_var•
 
f
0
1
2
3
4
5
$6
%7
.8
/9
<10
=11
B12
C13
V
0
1
2
3
$4
%5
.6
/7
<8
=9
B10
C11
≠

Llayers
Mlayer_metrics
regularization_losses
Nmetrics
	variables
trainable_variables
Olayer_regularization_losses
Pnon_trainable_variables
 
 
fd
VARIABLE_VALUEbatch_normalization_3/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_3/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_3/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_3/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

0
1
≠

Qlayers
Rlayer_metrics
regularization_losses
Smetrics
	variables
trainable_variables
Tlayer_regularization_losses
Unon_trainable_variables
[Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
≠

Vlayers
Wlayer_metrics
regularization_losses
Xmetrics
	variables
trainable_variables
Ylayer_regularization_losses
Znon_trainable_variables
 
 
 
≠

[layers
\layer_metrics
 regularization_losses
]metrics
!	variables
"trainable_variables
^layer_regularization_losses
_non_trainable_variables
\Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
≠

`layers
alayer_metrics
&regularization_losses
bmetrics
'	variables
(trainable_variables
clayer_regularization_losses
dnon_trainable_variables
 
 
 
≠

elayers
flayer_metrics
*regularization_losses
gmetrics
+	variables
,trainable_variables
hlayer_regularization_losses
inon_trainable_variables
\Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

.0
/1

.0
/1
≠

jlayers
klayer_metrics
0regularization_losses
lmetrics
1	variables
2trainable_variables
mlayer_regularization_losses
nnon_trainable_variables
 
 
 
≠

olayers
player_metrics
4regularization_losses
qmetrics
5	variables
6trainable_variables
rlayer_regularization_losses
snon_trainable_variables
 
 
 
≠

tlayers
ulayer_metrics
8regularization_losses
vmetrics
9	variables
:trainable_variables
wlayer_regularization_losses
xnon_trainable_variables
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
≠

ylayers
zlayer_metrics
>regularization_losses
{metrics
?	variables
@trainable_variables
|layer_regularization_losses
}non_trainable_variables
ZX
VARIABLE_VALUEdense_7/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_7/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

B0
C1

B0
C1
∞

~layers
layer_metrics
Dregularization_losses
Аmetrics
E	variables
Ftrainable_variables
 Бlayer_regularization_losses
Вnon_trainable_variables
LJ
VARIABLE_VALUEAdadelta/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdadelta/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEAdadelta/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEAdadelta/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
F
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
 

Г0
Д1
 

0
1
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

Еtotal

Жcount
З	variables
И	keras_api
I

Йtotal

Кcount
Л
_fn_kwargs
М	variables
Н	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Е0
Ж1

З	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Й0
К1

М	variables
†Э
VARIABLE_VALUE/Adadelta/batch_normalization_3/gamma/accum_gradZlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
ЮЫ
VARIABLE_VALUE.Adadelta/batch_normalization_3/beta/accum_gradYlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUE#Adadelta/conv2d_9/kernel/accum_grad[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE!Adadelta/conv2d_9/bias/accum_gradYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
ЦУ
VARIABLE_VALUE$Adadelta/conv2d_10/kernel/accum_grad[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
ТП
VARIABLE_VALUE"Adadelta/conv2d_10/bias/accum_gradYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
ЦУ
VARIABLE_VALUE$Adadelta/conv2d_11/kernel/accum_grad[layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
ТП
VARIABLE_VALUE"Adadelta/conv2d_11/bias/accum_gradYlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE"Adadelta/dense_6/kernel/accum_grad[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE Adadelta/dense_6/bias/accum_gradYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE"Adadelta/dense_7/kernel/accum_grad[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE Adadelta/dense_7/bias/accum_gradYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE
ЮЫ
VARIABLE_VALUE.Adadelta/batch_normalization_3/gamma/accum_varYlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
ЬЩ
VARIABLE_VALUE-Adadelta/batch_normalization_3/beta/accum_varXlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE"Adadelta/conv2d_9/kernel/accum_varZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
ПМ
VARIABLE_VALUE Adadelta/conv2d_9/bias/accum_varXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE#Adadelta/conv2d_10/kernel/accum_varZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE!Adadelta/conv2d_10/bias/accum_varXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
ФС
VARIABLE_VALUE#Adadelta/conv2d_11/kernel/accum_varZlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE!Adadelta/conv2d_11/bias/accum_varXlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
ТП
VARIABLE_VALUE!Adadelta/dense_6/kernel/accum_varZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
ОЛ
VARIABLE_VALUEAdadelta/dense_6/bias/accum_varXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
ТП
VARIABLE_VALUE!Adadelta/dense_7/kernel/accum_varZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
ОЛ
VARIABLE_VALUEAdadelta/dense_7/bias/accum_varXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE
Ю
+serving_default_batch_normalization_3_inputPlaceholder*/
_output_shapes
:€€€€€€€€€ *
dtype0*$
shape:€€€€€€€€€ 
Е
StatefulPartitionedCallStatefulPartitionedCall+serving_default_batch_normalization_3_inputbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_442031
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
п
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_3/gamma/Read/ReadVariableOp.batch_normalization_3/beta/Read/ReadVariableOp5batch_normalization_3/moving_mean/Read/ReadVariableOp9batch_normalization_3/moving_variance/Read/ReadVariableOp#conv2d_9/kernel/Read/ReadVariableOp!conv2d_9/bias/Read/ReadVariableOp$conv2d_10/kernel/Read/ReadVariableOp"conv2d_10/bias/Read/ReadVariableOp$conv2d_11/kernel/Read/ReadVariableOp"conv2d_11/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp!Adadelta/iter/Read/ReadVariableOp"Adadelta/decay/Read/ReadVariableOp*Adadelta/learning_rate/Read/ReadVariableOp Adadelta/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpCAdadelta/batch_normalization_3/gamma/accum_grad/Read/ReadVariableOpBAdadelta/batch_normalization_3/beta/accum_grad/Read/ReadVariableOp7Adadelta/conv2d_9/kernel/accum_grad/Read/ReadVariableOp5Adadelta/conv2d_9/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_10/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_10/bias/accum_grad/Read/ReadVariableOp8Adadelta/conv2d_11/kernel/accum_grad/Read/ReadVariableOp6Adadelta/conv2d_11/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_6/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_6/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_7/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_7/bias/accum_grad/Read/ReadVariableOpBAdadelta/batch_normalization_3/gamma/accum_var/Read/ReadVariableOpAAdadelta/batch_normalization_3/beta/accum_var/Read/ReadVariableOp6Adadelta/conv2d_9/kernel/accum_var/Read/ReadVariableOp4Adadelta/conv2d_9/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_10/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_10/bias/accum_var/Read/ReadVariableOp7Adadelta/conv2d_11/kernel/accum_var/Read/ReadVariableOp5Adadelta/conv2d_11/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_6/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_6/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_7/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_7/bias/accum_var/Read/ReadVariableOpConst*;
Tin4
220	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_442615
“
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_6/kerneldense_6/biasdense_7/kerneldense_7/biasAdadelta/iterAdadelta/decayAdadelta/learning_rateAdadelta/rhototalcounttotal_1count_1/Adadelta/batch_normalization_3/gamma/accum_grad.Adadelta/batch_normalization_3/beta/accum_grad#Adadelta/conv2d_9/kernel/accum_grad!Adadelta/conv2d_9/bias/accum_grad$Adadelta/conv2d_10/kernel/accum_grad"Adadelta/conv2d_10/bias/accum_grad$Adadelta/conv2d_11/kernel/accum_grad"Adadelta/conv2d_11/bias/accum_grad"Adadelta/dense_6/kernel/accum_grad Adadelta/dense_6/bias/accum_grad"Adadelta/dense_7/kernel/accum_grad Adadelta/dense_7/bias/accum_grad.Adadelta/batch_normalization_3/gamma/accum_var-Adadelta/batch_normalization_3/beta/accum_var"Adadelta/conv2d_9/kernel/accum_var Adadelta/conv2d_9/bias/accum_var#Adadelta/conv2d_10/kernel/accum_var!Adadelta/conv2d_10/bias/accum_var#Adadelta/conv2d_11/kernel/accum_var!Adadelta/conv2d_11/bias/accum_var!Adadelta/dense_6/kernel/accum_varAdadelta/dense_6/bias/accum_var!Adadelta/dense_7/kernel/accum_varAdadelta/dense_7/bias/accum_var*:
Tin3
12/*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_442763ЈР	
ќ

Ё
D__inference_conv2d_9_layer_call_and_return_conditional_losses_442354

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
И0
µ
H__inference_sequential_3_layer_call_and_return_conditional_losses_441839
batch_normalization_3_input 
batch_normalization_3_441800 
batch_normalization_3_441802 
batch_normalization_3_441804 
batch_normalization_3_441806
conv2d_9_441809
conv2d_9_441811
conv2d_10_441815
conv2d_10_441817
conv2d_11_441821
conv2d_11_441823
dense_6_441828
dense_6_441830
dense_7_441833
dense_7_441835
identityИҐ-batch_normalization_3/StatefulPartitionedCallҐ!conv2d_10/StatefulPartitionedCallҐ!conv2d_11/StatefulPartitionedCallҐ conv2d_9/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCall≤
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_3_inputbatch_normalization_3_441800batch_normalization_3_441802batch_normalization_3_441804batch_normalization_3_441806*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4416082/
-batch_normalization_3/StatefulPartitionedCallћ
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_9_441809conv2d_9_441811*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4416552"
 conv2d_9/StatefulPartitionedCallФ
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4415372!
max_pooling2d_9/PartitionedCall√
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_441815conv2d_10_441817*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4416832#
!conv2d_10/StatefulPartitionedCallШ
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_4415492"
 max_pooling2d_10/PartitionedCallƒ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_441821conv2d_11_441823*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4417112#
!conv2d_11/StatefulPartitionedCallШ
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_4415612"
 max_pooling2d_11/PartitionedCallы
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_4417342
flatten_3/PartitionedCallђ
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_441828dense_6_441830*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4417532!
dense_6/StatefulPartitionedCall±
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_441833dense_7_441835*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4417802!
dense_7/StatefulPartitionedCallџ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:l h
/
_output_shapes
:€€€€€€€€€ 
5
_user_specified_namebatch_normalization_3_input
…/
†
H__inference_sequential_3_layer_call_and_return_conditional_losses_441959

inputs 
batch_normalization_3_441920 
batch_normalization_3_441922 
batch_normalization_3_441924 
batch_normalization_3_441926
conv2d_9_441929
conv2d_9_441931
conv2d_10_441935
conv2d_10_441937
conv2d_11_441941
conv2d_11_441943
dense_6_441948
dense_6_441950
dense_7_441953
dense_7_441955
identityИҐ-batch_normalization_3/StatefulPartitionedCallҐ!conv2d_10/StatefulPartitionedCallҐ!conv2d_11/StatefulPartitionedCallҐ conv2d_9/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallЭ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_3_441920batch_normalization_3_441922batch_normalization_3_441924batch_normalization_3_441926*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4416082/
-batch_normalization_3/StatefulPartitionedCallћ
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_9_441929conv2d_9_441931*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4416552"
 conv2d_9/StatefulPartitionedCallФ
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4415372!
max_pooling2d_9/PartitionedCall√
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_441935conv2d_10_441937*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4416832#
!conv2d_10/StatefulPartitionedCallШ
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_4415492"
 max_pooling2d_10/PartitionedCallƒ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_441941conv2d_11_441943*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4417112#
!conv2d_11/StatefulPartitionedCallШ
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_4415612"
 max_pooling2d_11/PartitionedCallы
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_4417342
flatten_3/PartitionedCallђ
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_441948dense_6_441950*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4417532!
dense_6/StatefulPartitionedCall±
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_441953dense_7_441955*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4417802!
dense_7/StatefulPartitionedCallџ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Е
Ш
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_441590

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ :::::*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
„
©
6__inference_batch_normalization_3_layer_call_fn_442343

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4416082
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€ ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
≠
L
0__inference_max_pooling2d_9_layer_call_fn_441543

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4415372
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Є

ќ
-__inference_sequential_3_layer_call_fn_441915
batch_normalization_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_4418842
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:€€€€€€€€€ 
5
_user_specified_namebatch_normalization_3_input
ы	
є
-__inference_sequential_3_layer_call_fn_442215

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_4419592
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ѓ
M
1__inference_max_pooling2d_10_layer_call_fn_441555

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_4415492
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ё
}
(__inference_dense_6_layer_call_fn_442434

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4417532
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
б…
Г
"__inference__traced_restore_442763
file_prefix0
,assignvariableop_batch_normalization_3_gamma1
-assignvariableop_1_batch_normalization_3_beta8
4assignvariableop_2_batch_normalization_3_moving_mean<
8assignvariableop_3_batch_normalization_3_moving_variance&
"assignvariableop_4_conv2d_9_kernel$
 assignvariableop_5_conv2d_9_bias'
#assignvariableop_6_conv2d_10_kernel%
!assignvariableop_7_conv2d_10_bias'
#assignvariableop_8_conv2d_11_kernel%
!assignvariableop_9_conv2d_11_bias&
"assignvariableop_10_dense_6_kernel$
 assignvariableop_11_dense_6_bias&
"assignvariableop_12_dense_7_kernel$
 assignvariableop_13_dense_7_bias%
!assignvariableop_14_adadelta_iter&
"assignvariableop_15_adadelta_decay.
*assignvariableop_16_adadelta_learning_rate$
 assignvariableop_17_adadelta_rho
assignvariableop_18_total
assignvariableop_19_count
assignvariableop_20_total_1
assignvariableop_21_count_1G
Cassignvariableop_22_adadelta_batch_normalization_3_gamma_accum_gradF
Bassignvariableop_23_adadelta_batch_normalization_3_beta_accum_grad;
7assignvariableop_24_adadelta_conv2d_9_kernel_accum_grad9
5assignvariableop_25_adadelta_conv2d_9_bias_accum_grad<
8assignvariableop_26_adadelta_conv2d_10_kernel_accum_grad:
6assignvariableop_27_adadelta_conv2d_10_bias_accum_grad<
8assignvariableop_28_adadelta_conv2d_11_kernel_accum_grad:
6assignvariableop_29_adadelta_conv2d_11_bias_accum_grad:
6assignvariableop_30_adadelta_dense_6_kernel_accum_grad8
4assignvariableop_31_adadelta_dense_6_bias_accum_grad:
6assignvariableop_32_adadelta_dense_7_kernel_accum_grad8
4assignvariableop_33_adadelta_dense_7_bias_accum_gradF
Bassignvariableop_34_adadelta_batch_normalization_3_gamma_accum_varE
Aassignvariableop_35_adadelta_batch_normalization_3_beta_accum_var:
6assignvariableop_36_adadelta_conv2d_9_kernel_accum_var8
4assignvariableop_37_adadelta_conv2d_9_bias_accum_var;
7assignvariableop_38_adadelta_conv2d_10_kernel_accum_var9
5assignvariableop_39_adadelta_conv2d_10_bias_accum_var;
7assignvariableop_40_adadelta_conv2d_11_kernel_accum_var9
5assignvariableop_41_adadelta_conv2d_11_bias_accum_var9
5assignvariableop_42_adadelta_dense_6_kernel_accum_var7
3assignvariableop_43_adadelta_dense_6_bias_accum_var9
5assignvariableop_44_adadelta_dense_7_kernel_accum_var7
3assignvariableop_45_adadelta_dense_7_bias_accum_var
identity_47ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9„
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*г
valueўB÷/B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesм
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЩ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*“
_output_shapesњ
Љ:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЂ
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_3_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1≤
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_3_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2є
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_3_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3љ
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_3_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4І
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_9_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5•
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_9_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6®
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_10_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¶
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_10_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8®
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_11_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¶
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_11_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10™
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_6_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11®
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_6_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12™
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_7_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13®
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_7_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14©
AssignVariableOp_14AssignVariableOp!assignvariableop_14_adadelta_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15™
AssignVariableOp_15AssignVariableOp"assignvariableop_15_adadelta_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16≤
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adadelta_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17®
AssignVariableOp_17AssignVariableOp assignvariableop_17_adadelta_rhoIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19°
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21£
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ћ
AssignVariableOp_22AssignVariableOpCassignvariableop_22_adadelta_batch_normalization_3_gamma_accum_gradIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23 
AssignVariableOp_23AssignVariableOpBassignvariableop_23_adadelta_batch_normalization_3_beta_accum_gradIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24њ
AssignVariableOp_24AssignVariableOp7assignvariableop_24_adadelta_conv2d_9_kernel_accum_gradIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25љ
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adadelta_conv2d_9_bias_accum_gradIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26ј
AssignVariableOp_26AssignVariableOp8assignvariableop_26_adadelta_conv2d_10_kernel_accum_gradIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Њ
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adadelta_conv2d_10_bias_accum_gradIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28ј
AssignVariableOp_28AssignVariableOp8assignvariableop_28_adadelta_conv2d_11_kernel_accum_gradIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Њ
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adadelta_conv2d_11_bias_accum_gradIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Њ
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adadelta_dense_6_kernel_accum_gradIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Љ
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adadelta_dense_6_bias_accum_gradIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Њ
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adadelta_dense_7_kernel_accum_gradIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Љ
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adadelta_dense_7_bias_accum_gradIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34 
AssignVariableOp_34AssignVariableOpBassignvariableop_34_adadelta_batch_normalization_3_gamma_accum_varIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35…
AssignVariableOp_35AssignVariableOpAassignvariableop_35_adadelta_batch_normalization_3_beta_accum_varIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Њ
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adadelta_conv2d_9_kernel_accum_varIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37Љ
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adadelta_conv2d_9_bias_accum_varIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38њ
AssignVariableOp_38AssignVariableOp7assignvariableop_38_adadelta_conv2d_10_kernel_accum_varIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39љ
AssignVariableOp_39AssignVariableOp5assignvariableop_39_adadelta_conv2d_10_bias_accum_varIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40њ
AssignVariableOp_40AssignVariableOp7assignvariableop_40_adadelta_conv2d_11_kernel_accum_varIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41љ
AssignVariableOp_41AssignVariableOp5assignvariableop_41_adadelta_conv2d_11_bias_accum_varIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42љ
AssignVariableOp_42AssignVariableOp5assignvariableop_42_adadelta_dense_6_kernel_accum_varIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43ї
AssignVariableOp_43AssignVariableOp3assignvariableop_43_adadelta_dense_6_bias_accum_varIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44љ
AssignVariableOp_44AssignVariableOp5assignvariableop_44_adadelta_dense_7_kernel_accum_varIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45ї
AssignVariableOp_45AssignVariableOp3assignvariableop_45_adadelta_dense_7_bias_accum_varIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_459
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp“
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_46≈
Identity_47IdentityIdentity_46:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_47"#
identity_47Identity_47:output:0*ѕ
_input_shapesљ
Ї: ::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_45AssignVariableOp_452(
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
В
h
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_441549

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ш	
№
C__inference_dense_7_layer_call_and_return_conditional_losses_441780

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ѕ
ф
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442253

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Ш
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442235

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ќ
Ш
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_441489

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1к
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
¶
F
*__inference_flatten_3_layer_call_fn_442414

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_4417342
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ќ

Ё
D__inference_conv2d_9_layer_call_and_return_conditional_losses_441655

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
«/
†
H__inference_sequential_3_layer_call_and_return_conditional_losses_441884

inputs 
batch_normalization_3_441845 
batch_normalization_3_441847 
batch_normalization_3_441849 
batch_normalization_3_441851
conv2d_9_441854
conv2d_9_441856
conv2d_10_441860
conv2d_10_441862
conv2d_11_441866
conv2d_11_441868
dense_6_441873
dense_6_441875
dense_7_441878
dense_7_441880
identityИҐ-batch_normalization_3/StatefulPartitionedCallҐ!conv2d_10/StatefulPartitionedCallҐ!conv2d_11/StatefulPartitionedCallҐ conv2d_9/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCallЫ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_3_441845batch_normalization_3_441847batch_normalization_3_441849batch_normalization_3_441851*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4415902/
-batch_normalization_3/StatefulPartitionedCallћ
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_9_441854conv2d_9_441856*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4416552"
 conv2d_9/StatefulPartitionedCallФ
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4415372!
max_pooling2d_9/PartitionedCall√
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_441860conv2d_10_441862*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4416832#
!conv2d_10/StatefulPartitionedCallШ
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_4415492"
 max_pooling2d_10/PartitionedCallƒ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_441866conv2d_11_441868*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4417112#
!conv2d_11/StatefulPartitionedCallШ
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_4415612"
 max_pooling2d_11/PartitionedCallы
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_4417342
flatten_3/PartitionedCallђ
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_441873dense_6_441875*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4417532!
dense_6/StatefulPartitionedCall±
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_441878dense_7_441880*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4417802!
dense_7/StatefulPartitionedCallџ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ѕ

ё
E__inference_conv2d_11_layer_call_and_return_conditional_losses_441711

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ѕ

ё
E__inference_conv2d_10_layer_call_and_return_conditional_losses_442374

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€
 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€
 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
 
_user_specified_nameinputs
Е
Ш
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442299

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ў
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ :::::*
epsilon%oГ:*
exponential_avg_factor%
„#<2
FusedBatchNormV3≠
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueї
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ю
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
щ
ф
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_441608

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ :::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
–K
±

H__inference_sequential_3_layer_call_and_return_conditional_losses_442149

inputs1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_9_conv2d_readvariableop_resource,
(conv2d_9_biasadd_readvariableop_resource,
(conv2d_10_conv2d_readvariableop_resource-
)conv2d_10_biasadd_readvariableop_resource,
(conv2d_11_conv2d_readvariableop_resource-
)conv2d_11_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identityИҐ5batch_normalization_3/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_3/ReadVariableOpҐ&batch_normalization_3/ReadVariableOp_1Ґ conv2d_10/BiasAdd/ReadVariableOpҐconv2d_10/Conv2D/ReadVariableOpҐ conv2d_11/BiasAdd/ReadVariableOpҐconv2d_11/Conv2D/ReadVariableOpҐconv2d_9/BiasAdd/ReadVariableOpҐconv2d_9/Conv2D/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOpґ
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_3/ReadVariableOpЉ
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_3/ReadVariableOp_1й
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpп
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ќ
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3inputs,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ :::::*
epsilon%oГ:*
is_training( 2(
&batch_normalization_3/FusedBatchNormV3∞
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_9/Conv2D/ReadVariableOpв
conv2d_9/Conv2DConv2D*batch_normalization_3/FusedBatchNormV3:y:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
2
conv2d_9/Conv2DІ
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOpђ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  2
conv2d_9/BiasAdd{
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  2
conv2d_9/Relu«
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPool≥
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_10/Conv2D/ReadVariableOpџ
conv2d_10/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 *
paddingSAME*
strides
2
conv2d_10/Conv2D™
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp∞
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
 2
conv2d_10/Relu 
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool≥
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOp№
conv2d_11/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_11/Conv2D™
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp∞
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_11/Relu 
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPools
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_3/Const°
flatten_3/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_3/ReshapeІ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense_6/MatMul/ReadVariableOp†
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/MatMul•
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_6/BiasAdd/ReadVariableOpҐ
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/Relu¶
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_7/MatMul/ReadVariableOpЯ
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/MatMul§
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp°
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/Softmaxю
IdentityIdentitydense_7/Softmax:softmax:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::2n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Б
g
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_441537

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
ф
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_441520

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1№
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3м
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
щ
ф
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442317

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1І
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp≠
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1 
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ :::::*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3Џ
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
№
}
(__inference_dense_7_layer_call_fn_442454

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4417802
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Й_
Л
!__inference__wrapped_model_441427
batch_normalization_3_input>
:sequential_3_batch_normalization_3_readvariableop_resource@
<sequential_3_batch_normalization_3_readvariableop_1_resourceO
Ksequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resourceQ
Msequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource8
4sequential_3_conv2d_9_conv2d_readvariableop_resource9
5sequential_3_conv2d_9_biasadd_readvariableop_resource9
5sequential_3_conv2d_10_conv2d_readvariableop_resource:
6sequential_3_conv2d_10_biasadd_readvariableop_resource9
5sequential_3_conv2d_11_conv2d_readvariableop_resource:
6sequential_3_conv2d_11_biasadd_readvariableop_resource7
3sequential_3_dense_6_matmul_readvariableop_resource8
4sequential_3_dense_6_biasadd_readvariableop_resource7
3sequential_3_dense_7_matmul_readvariableop_resource8
4sequential_3_dense_7_biasadd_readvariableop_resource
identityИҐBsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpҐDsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ґ1sequential_3/batch_normalization_3/ReadVariableOpҐ3sequential_3/batch_normalization_3/ReadVariableOp_1Ґ-sequential_3/conv2d_10/BiasAdd/ReadVariableOpҐ,sequential_3/conv2d_10/Conv2D/ReadVariableOpҐ-sequential_3/conv2d_11/BiasAdd/ReadVariableOpҐ,sequential_3/conv2d_11/Conv2D/ReadVariableOpҐ,sequential_3/conv2d_9/BiasAdd/ReadVariableOpҐ+sequential_3/conv2d_9/Conv2D/ReadVariableOpҐ+sequential_3/dense_6/BiasAdd/ReadVariableOpҐ*sequential_3/dense_6/MatMul/ReadVariableOpҐ+sequential_3/dense_7/BiasAdd/ReadVariableOpҐ*sequential_3/dense_7/MatMul/ReadVariableOpЁ
1sequential_3/batch_normalization_3/ReadVariableOpReadVariableOp:sequential_3_batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype023
1sequential_3/batch_normalization_3/ReadVariableOpг
3sequential_3/batch_normalization_3/ReadVariableOp_1ReadVariableOp<sequential_3_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype025
3sequential_3/batch_normalization_3/ReadVariableOp_1Р
Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02D
Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpЦ
Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_3_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02F
Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1±
3sequential_3/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3batch_normalization_3_input9sequential_3/batch_normalization_3/ReadVariableOp:value:0;sequential_3/batch_normalization_3/ReadVariableOp_1:value:0Jsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ :::::*
epsilon%oГ:*
is_training( 25
3sequential_3/batch_normalization_3/FusedBatchNormV3„
+sequential_3/conv2d_9/Conv2D/ReadVariableOpReadVariableOp4sequential_3_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_3/conv2d_9/Conv2D/ReadVariableOpЦ
sequential_3/conv2d_9/Conv2DConv2D7sequential_3/batch_normalization_3/FusedBatchNormV3:y:03sequential_3/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
2
sequential_3/conv2d_9/Conv2Dќ
,sequential_3/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_3/conv2d_9/BiasAdd/ReadVariableOpа
sequential_3/conv2d_9/BiasAddBiasAdd%sequential_3/conv2d_9/Conv2D:output:04sequential_3/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  2
sequential_3/conv2d_9/BiasAddҐ
sequential_3/conv2d_9/ReluRelu&sequential_3/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  2
sequential_3/conv2d_9/Reluо
$sequential_3/max_pooling2d_9/MaxPoolMaxPool(sequential_3/conv2d_9/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
 *
ksize
*
paddingVALID*
strides
2&
$sequential_3/max_pooling2d_9/MaxPoolЏ
,sequential_3/conv2d_10/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,sequential_3/conv2d_10/Conv2D/ReadVariableOpП
sequential_3/conv2d_10/Conv2DConv2D-sequential_3/max_pooling2d_9/MaxPool:output:04sequential_3/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 *
paddingSAME*
strides
2
sequential_3/conv2d_10/Conv2D—
-sequential_3/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_3/conv2d_10/BiasAdd/ReadVariableOpд
sequential_3/conv2d_10/BiasAddBiasAdd&sequential_3/conv2d_10/Conv2D:output:05sequential_3/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 2 
sequential_3/conv2d_10/BiasAdd•
sequential_3/conv2d_10/ReluRelu'sequential_3/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
 2
sequential_3/conv2d_10/Reluс
%sequential_3/max_pooling2d_10/MaxPoolMaxPool)sequential_3/conv2d_10/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2'
%sequential_3/max_pooling2d_10/MaxPoolЏ
,sequential_3/conv2d_11/Conv2D/ReadVariableOpReadVariableOp5sequential_3_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02.
,sequential_3/conv2d_11/Conv2D/ReadVariableOpР
sequential_3/conv2d_11/Conv2DConv2D.sequential_3/max_pooling2d_10/MaxPool:output:04sequential_3/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
sequential_3/conv2d_11/Conv2D—
-sequential_3/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_3_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-sequential_3/conv2d_11/BiasAdd/ReadVariableOpд
sequential_3/conv2d_11/BiasAddBiasAdd&sequential_3/conv2d_11/Conv2D:output:05sequential_3/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2 
sequential_3/conv2d_11/BiasAdd•
sequential_3/conv2d_11/ReluRelu'sequential_3/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
sequential_3/conv2d_11/Reluс
%sequential_3/max_pooling2d_11/MaxPoolMaxPool)sequential_3/conv2d_11/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2'
%sequential_3/max_pooling2d_11/MaxPoolН
sequential_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
sequential_3/flatten_3/Const’
sequential_3/flatten_3/ReshapeReshape.sequential_3/max_pooling2d_11/MaxPool:output:0%sequential_3/flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2 
sequential_3/flatten_3/Reshapeќ
*sequential_3/dense_6/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02,
*sequential_3/dense_6/MatMul/ReadVariableOp‘
sequential_3/dense_6/MatMulMatMul'sequential_3/flatten_3/Reshape:output:02sequential_3/dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense_6/MatMulћ
+sequential_3/dense_6/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02-
+sequential_3/dense_6/BiasAdd/ReadVariableOp÷
sequential_3/dense_6/BiasAddBiasAdd%sequential_3/dense_6/MatMul:product:03sequential_3/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense_6/BiasAddШ
sequential_3/dense_6/ReluRelu%sequential_3/dense_6/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
sequential_3/dense_6/ReluЌ
*sequential_3/dense_7/MatMul/ReadVariableOpReadVariableOp3sequential_3_dense_7_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02,
*sequential_3/dense_7/MatMul/ReadVariableOp”
sequential_3/dense_7/MatMulMatMul'sequential_3/dense_6/Relu:activations:02sequential_3/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_3/dense_7/MatMulЋ
+sequential_3/dense_7/BiasAdd/ReadVariableOpReadVariableOp4sequential_3_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_3/dense_7/BiasAdd/ReadVariableOp’
sequential_3/dense_7/BiasAddBiasAdd%sequential_3/dense_7/MatMul:product:03sequential_3/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_3/dense_7/BiasAdd†
sequential_3/dense_7/SoftmaxSoftmax%sequential_3/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential_3/dense_7/SoftmaxЅ
IdentityIdentity&sequential_3/dense_7/Softmax:softmax:0C^sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpE^sequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12^sequential_3/batch_normalization_3/ReadVariableOp4^sequential_3/batch_normalization_3/ReadVariableOp_1.^sequential_3/conv2d_10/BiasAdd/ReadVariableOp-^sequential_3/conv2d_10/Conv2D/ReadVariableOp.^sequential_3/conv2d_11/BiasAdd/ReadVariableOp-^sequential_3/conv2d_11/Conv2D/ReadVariableOp-^sequential_3/conv2d_9/BiasAdd/ReadVariableOp,^sequential_3/conv2d_9/Conv2D/ReadVariableOp,^sequential_3/dense_6/BiasAdd/ReadVariableOp+^sequential_3/dense_6/MatMul/ReadVariableOp,^sequential_3/dense_7/BiasAdd/ReadVariableOp+^sequential_3/dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::2И
Bsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOpBsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2М
Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Dsequential_3/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12f
1sequential_3/batch_normalization_3/ReadVariableOp1sequential_3/batch_normalization_3/ReadVariableOp2j
3sequential_3/batch_normalization_3/ReadVariableOp_13sequential_3/batch_normalization_3/ReadVariableOp_12^
-sequential_3/conv2d_10/BiasAdd/ReadVariableOp-sequential_3/conv2d_10/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_10/Conv2D/ReadVariableOp,sequential_3/conv2d_10/Conv2D/ReadVariableOp2^
-sequential_3/conv2d_11/BiasAdd/ReadVariableOp-sequential_3/conv2d_11/BiasAdd/ReadVariableOp2\
,sequential_3/conv2d_11/Conv2D/ReadVariableOp,sequential_3/conv2d_11/Conv2D/ReadVariableOp2\
,sequential_3/conv2d_9/BiasAdd/ReadVariableOp,sequential_3/conv2d_9/BiasAdd/ReadVariableOp2Z
+sequential_3/conv2d_9/Conv2D/ReadVariableOp+sequential_3/conv2d_9/Conv2D/ReadVariableOp2Z
+sequential_3/dense_6/BiasAdd/ReadVariableOp+sequential_3/dense_6/BiasAdd/ReadVariableOp2X
*sequential_3/dense_6/MatMul/ReadVariableOp*sequential_3/dense_6/MatMul/ReadVariableOp2Z
+sequential_3/dense_7/BiasAdd/ReadVariableOp+sequential_3/dense_7/BiasAdd/ReadVariableOp2X
*sequential_3/dense_7/MatMul/ReadVariableOp*sequential_3/dense_7/MatMul/ReadVariableOp:l h
/
_output_shapes
:€€€€€€€€€ 
5
_user_specified_namebatch_normalization_3_input
щ	
є
-__inference_sequential_3_layer_call_fn_442182

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИҐStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_4418842
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
’
©
6__inference_batch_normalization_3_layer_call_fn_442330

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4415902
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:€€€€€€€€€ ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ѕ

ё
E__inference_conv2d_10_layer_call_and_return_conditional_losses_441683

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€
 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€
 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€
 
 
_user_specified_nameinputs
ь
~
)__inference_conv2d_9_layer_call_fn_442363

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4416552
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Ж0
µ
H__inference_sequential_3_layer_call_and_return_conditional_losses_441797
batch_normalization_3_input 
batch_normalization_3_441635 
batch_normalization_3_441637 
batch_normalization_3_441639 
batch_normalization_3_441641
conv2d_9_441666
conv2d_9_441668
conv2d_10_441694
conv2d_10_441696
conv2d_11_441722
conv2d_11_441724
dense_6_441764
dense_6_441766
dense_7_441791
dense_7_441793
identityИҐ-batch_normalization_3/StatefulPartitionedCallҐ!conv2d_10/StatefulPartitionedCallҐ!conv2d_11/StatefulPartitionedCallҐ conv2d_9/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐdense_7/StatefulPartitionedCall∞
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_3_inputbatch_normalization_3_441635batch_normalization_3_441637batch_normalization_3_441639batch_normalization_3_441641*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4415902/
-batch_normalization_3/StatefulPartitionedCallћ
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0conv2d_9_441666conv2d_9_441668*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_9_layer_call_and_return_conditional_losses_4416552"
 conv2d_9/StatefulPartitionedCallФ
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_4415372!
max_pooling2d_9/PartitionedCall√
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_441694conv2d_10_441696*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4416832#
!conv2d_10/StatefulPartitionedCallШ
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_4415492"
 max_pooling2d_10/PartitionedCallƒ
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_441722conv2d_11_441724*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4417112#
!conv2d_11/StatefulPartitionedCallШ
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_4415612"
 max_pooling2d_11/PartitionedCallы
flatten_3/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_4417342
flatten_3/PartitionedCallђ
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_6_441764dense_6_441766*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_4417532!
dense_6/StatefulPartitionedCall±
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_441791dense_7_441793*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_4417802!
dense_7/StatefulPartitionedCallџ
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0.^batch_normalization_3/StatefulPartitionedCall"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall:l h
/
_output_shapes
:€€€€€€€€€ 
5
_user_specified_namebatch_normalization_3_input
К

≈
$__inference_signature_wrapper_442031
batch_normalization_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_4414272
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:€€€€€€€€€ 
5
_user_specified_namebatch_normalization_3_input
В
h
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_441561

inputs
identity≠
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ФU
Б
H__inference_sequential_3_layer_call_and_return_conditional_losses_442091

inputs1
-batch_normalization_3_readvariableop_resource3
/batch_normalization_3_readvariableop_1_resourceB
>batch_normalization_3_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_9_conv2d_readvariableop_resource,
(conv2d_9_biasadd_readvariableop_resource,
(conv2d_10_conv2d_readvariableop_resource-
)conv2d_10_biasadd_readvariableop_resource,
(conv2d_11_conv2d_readvariableop_resource-
)conv2d_11_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource*
&dense_7_matmul_readvariableop_resource+
'dense_7_biasadd_readvariableop_resource
identityИҐ$batch_normalization_3/AssignNewValueҐ&batch_normalization_3/AssignNewValue_1Ґ5batch_normalization_3/FusedBatchNormV3/ReadVariableOpҐ7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ґ$batch_normalization_3/ReadVariableOpҐ&batch_normalization_3/ReadVariableOp_1Ґ conv2d_10/BiasAdd/ReadVariableOpҐconv2d_10/Conv2D/ReadVariableOpҐ conv2d_11/BiasAdd/ReadVariableOpҐconv2d_11/Conv2D/ReadVariableOpҐconv2d_9/BiasAdd/ReadVariableOpҐconv2d_9/Conv2D/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐdense_7/BiasAdd/ReadVariableOpҐdense_7/MatMul/ReadVariableOpґ
$batch_normalization_3/ReadVariableOpReadVariableOp-batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_3/ReadVariableOpЉ
&batch_normalization_3/ReadVariableOp_1ReadVariableOp/batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_3/ReadVariableOp_1й
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_3/FusedBatchNormV3/ReadVariableOpп
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1№
&batch_normalization_3/FusedBatchNormV3FusedBatchNormV3inputs,batch_normalization_3/ReadVariableOp:value:0.batch_normalization_3/ReadVariableOp_1:value:0=batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ :::::*
epsilon%oГ:*
exponential_avg_factor%
„#<2(
&batch_normalization_3/FusedBatchNormV3±
$batch_normalization_3/AssignNewValueAssignVariableOp>batch_normalization_3_fusedbatchnormv3_readvariableop_resource3batch_normalization_3/FusedBatchNormV3:batch_mean:06^batch_normalization_3/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*Q
_classG
ECloc:@batch_normalization_3/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_3/AssignNewValueњ
&batch_normalization_3/AssignNewValue_1AssignVariableOp@batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_3/FusedBatchNormV3:batch_variance:08^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_3/AssignNewValue_1∞
conv2d_9/Conv2D/ReadVariableOpReadVariableOp'conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_9/Conv2D/ReadVariableOpв
conv2d_9/Conv2DConv2D*batch_normalization_3/FusedBatchNormV3:y:0&conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  *
paddingSAME*
strides
2
conv2d_9/Conv2DІ
conv2d_9/BiasAdd/ReadVariableOpReadVariableOp(conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_9/BiasAdd/ReadVariableOpђ
conv2d_9/BiasAddBiasAddconv2d_9/Conv2D:output:0'conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€  2
conv2d_9/BiasAdd{
conv2d_9/ReluReluconv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€  2
conv2d_9/Relu«
max_pooling2d_9/MaxPoolMaxPoolconv2d_9/Relu:activations:0*/
_output_shapes
:€€€€€€€€€
 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_9/MaxPool≥
conv2d_10/Conv2D/ReadVariableOpReadVariableOp(conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_10/Conv2D/ReadVariableOpџ
conv2d_10/Conv2DConv2D max_pooling2d_9/MaxPool:output:0'conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 *
paddingSAME*
strides
2
conv2d_10/Conv2D™
 conv2d_10/BiasAdd/ReadVariableOpReadVariableOp)conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_10/BiasAdd/ReadVariableOp∞
conv2d_10/BiasAddBiasAddconv2d_10/Conv2D:output:0(conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€
 2
conv2d_10/BiasAdd~
conv2d_10/ReluReluconv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€
 2
conv2d_10/Relu 
max_pooling2d_10/MaxPoolMaxPoolconv2d_10/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool≥
conv2d_11/Conv2D/ReadVariableOpReadVariableOp(conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02!
conv2d_11/Conv2D/ReadVariableOp№
conv2d_11/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
conv2d_11/Conv2D™
 conv2d_11/BiasAdd/ReadVariableOpReadVariableOp)conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_11/BiasAdd/ReadVariableOp∞
conv2d_11/BiasAddBiasAddconv2d_11/Conv2D:output:0(conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_11/BiasAdd~
conv2d_11/ReluReluconv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
conv2d_11/Relu 
max_pooling2d_11/MaxPoolMaxPoolconv2d_11/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
2
max_pooling2d_11/MaxPools
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_3/Const°
flatten_3/ReshapeReshape!max_pooling2d_11/MaxPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_3/ReshapeІ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
dense_6/MatMul/ReadVariableOp†
dense_6/MatMulMatMulflatten_3/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/MatMul•
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02 
dense_6/BiasAdd/ReadVariableOpҐ
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/BiasAddq
dense_6/ReluReludense_6/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
dense_6/Relu¶
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
dense_7/MatMul/ReadVariableOpЯ
dense_7/MatMulMatMuldense_6/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/MatMul§
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_7/BiasAdd/ReadVariableOp°
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/BiasAddy
dense_7/SoftmaxSoftmaxdense_7/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_7/Softmaxќ
IdentityIdentitydense_7/Softmax:softmax:0%^batch_normalization_3/AssignNewValue'^batch_normalization_3/AssignNewValue_16^batch_normalization_3/FusedBatchNormV3/ReadVariableOp8^batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_3/ReadVariableOp'^batch_normalization_3/ReadVariableOp_1!^conv2d_10/BiasAdd/ReadVariableOp ^conv2d_10/Conv2D/ReadVariableOp!^conv2d_11/BiasAdd/ReadVariableOp ^conv2d_11/Conv2D/ReadVariableOp ^conv2d_9/BiasAdd/ReadVariableOp^conv2d_9/Conv2D/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::2L
$batch_normalization_3/AssignNewValue$batch_normalization_3/AssignNewValue2P
&batch_normalization_3/AssignNewValue_1&batch_normalization_3/AssignNewValue_12n
5batch_normalization_3/FusedBatchNormV3/ReadVariableOp5batch_normalization_3/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_3/FusedBatchNormV3/ReadVariableOp_17batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_3/ReadVariableOp$batch_normalization_3/ReadVariableOp2P
&batch_normalization_3/ReadVariableOp_1&batch_normalization_3/ReadVariableOp_12D
 conv2d_10/BiasAdd/ReadVariableOp conv2d_10/BiasAdd/ReadVariableOp2B
conv2d_10/Conv2D/ReadVariableOpconv2d_10/Conv2D/ReadVariableOp2D
 conv2d_11/BiasAdd/ReadVariableOp conv2d_11/BiasAdd/ReadVariableOp2B
conv2d_11/Conv2D/ReadVariableOpconv2d_11/Conv2D/ReadVariableOp2B
conv2d_9/BiasAdd/ReadVariableOpconv2d_9/BiasAdd/ReadVariableOp2@
conv2d_9/Conv2D/ReadVariableOpconv2d_9/Conv2D/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ц	
№
C__inference_dense_6_layer_call_and_return_conditional_losses_441753

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ю

*__inference_conv2d_11_layer_call_fn_442403

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_11_layer_call_and_return_conditional_losses_4417112
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ѓ
M
1__inference_max_pooling2d_11_layer_call_fn_441567

inputs
identityн
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_4415612
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ю

*__inference_conv2d_10_layer_call_fn_442383

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_10_layer_call_and_return_conditional_losses_4416832
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:€€€€€€€€€
 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€
 ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€
 
 
_user_specified_nameinputs
Ѓg
М
__inference__traced_save_442615
file_prefix:
6savev2_batch_normalization_3_gamma_read_readvariableop9
5savev2_batch_normalization_3_beta_read_readvariableop@
<savev2_batch_normalization_3_moving_mean_read_readvariableopD
@savev2_batch_normalization_3_moving_variance_read_readvariableop.
*savev2_conv2d_9_kernel_read_readvariableop,
(savev2_conv2d_9_bias_read_readvariableop/
+savev2_conv2d_10_kernel_read_readvariableop-
)savev2_conv2d_10_bias_read_readvariableop/
+savev2_conv2d_11_kernel_read_readvariableop-
)savev2_conv2d_11_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop,
(savev2_adadelta_iter_read_readvariableop	-
)savev2_adadelta_decay_read_readvariableop5
1savev2_adadelta_learning_rate_read_readvariableop+
'savev2_adadelta_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopN
Jsavev2_adadelta_batch_normalization_3_gamma_accum_grad_read_readvariableopM
Isavev2_adadelta_batch_normalization_3_beta_accum_grad_read_readvariableopB
>savev2_adadelta_conv2d_9_kernel_accum_grad_read_readvariableop@
<savev2_adadelta_conv2d_9_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_10_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_10_bias_accum_grad_read_readvariableopC
?savev2_adadelta_conv2d_11_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_conv2d_11_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_6_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_6_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_7_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_7_bias_accum_grad_read_readvariableopM
Isavev2_adadelta_batch_normalization_3_gamma_accum_var_read_readvariableopL
Hsavev2_adadelta_batch_normalization_3_beta_accum_var_read_readvariableopA
=savev2_adadelta_conv2d_9_kernel_accum_var_read_readvariableop?
;savev2_adadelta_conv2d_9_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_10_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_10_bias_accum_var_read_readvariableopB
>savev2_adadelta_conv2d_11_kernel_accum_var_read_readvariableop@
<savev2_adadelta_conv2d_11_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_6_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_6_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_7_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_7_bias_accum_var_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename—
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*г
valueўB÷/B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesж
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices–
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_3_gamma_read_readvariableop5savev2_batch_normalization_3_beta_read_readvariableop<savev2_batch_normalization_3_moving_mean_read_readvariableop@savev2_batch_normalization_3_moving_variance_read_readvariableop*savev2_conv2d_9_kernel_read_readvariableop(savev2_conv2d_9_bias_read_readvariableop+savev2_conv2d_10_kernel_read_readvariableop)savev2_conv2d_10_bias_read_readvariableop+savev2_conv2d_11_kernel_read_readvariableop)savev2_conv2d_11_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop(savev2_adadelta_iter_read_readvariableop)savev2_adadelta_decay_read_readvariableop1savev2_adadelta_learning_rate_read_readvariableop'savev2_adadelta_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopJsavev2_adadelta_batch_normalization_3_gamma_accum_grad_read_readvariableopIsavev2_adadelta_batch_normalization_3_beta_accum_grad_read_readvariableop>savev2_adadelta_conv2d_9_kernel_accum_grad_read_readvariableop<savev2_adadelta_conv2d_9_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_10_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_10_bias_accum_grad_read_readvariableop?savev2_adadelta_conv2d_11_kernel_accum_grad_read_readvariableop=savev2_adadelta_conv2d_11_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_6_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_6_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_7_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_7_bias_accum_grad_read_readvariableopIsavev2_adadelta_batch_normalization_3_gamma_accum_var_read_readvariableopHsavev2_adadelta_batch_normalization_3_beta_accum_var_read_readvariableop=savev2_adadelta_conv2d_9_kernel_accum_var_read_readvariableop;savev2_adadelta_conv2d_9_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_10_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_10_bias_accum_var_read_readvariableop>savev2_adadelta_conv2d_11_kernel_accum_var_read_readvariableop<savev2_adadelta_conv2d_11_bias_accum_var_read_readvariableop<savev2_adadelta_dense_6_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_6_bias_accum_var_read_readvariableop<savev2_adadelta_dense_7_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_7_bias_accum_var_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *=
dtypes3
12/	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
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

identity_1Identity_1:output:0*Э
_input_shapesЛ
И: ::::: : :  : :  : :
АА:А:	А:: : : : : : : : ::: : :  : :  : :
АА:А:	А:::: : :  : :  : :
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,	(
&
_output_shapes
:  : 


_output_shapes
: :&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :&"
 
_output_shapes
:
АА:! 

_output_shapes	
:А:%!!

_output_shapes
:	А: "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
: : &

_output_shapes
: :,'(
&
_output_shapes
:  : (

_output_shapes
: :,)(
&
_output_shapes
:  : *

_output_shapes
: :&+"
 
_output_shapes
:
АА:!,

_output_shapes	
:А:%-!

_output_shapes
:	А: .

_output_shapes
::/

_output_shapes
: 
љ
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_442409

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ц	
№
C__inference_dense_6_layer_call_and_return_conditional_losses_442425

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ѕ

ё
E__inference_conv2d_11_layer_call_and_return_conditional_losses_442394

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp£
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpИ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ 2
ReluЯ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:€€€€€€€€€ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ш	
№
C__inference_dense_7_layer_call_and_return_conditional_losses_442445

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
SoftmaxЦ
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Э
©
6__inference_batch_normalization_3_layer_call_fn_442266

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall≥
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4414892
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ї

ќ
-__inference_sequential_3_layer_call_fn_441990
batch_normalization_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityИҐStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_4419592
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:€€€€€€€€€ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:€€€€€€€€€ 
5
_user_specified_namebatch_normalization_3_input
љ
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_441734

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Я
©
6__inference_batch_normalization_3_layer_call_fn_442279

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_4415202
StatefulPartitionedCall®
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+€€€€€€€€€€€€€€€€€€€€€€€€€€€::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Џ
serving_default∆
k
batch_normalization_3_inputL
-serving_default_batch_normalization_3_input:0€€€€€€€€€ ;
dense_70
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ьЁ
ґU
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api

signatures
¶_default_save_signature
+І&call_and_return_all_conditional_losses
®__call__" Q
_tf_keras_sequentialЂQ{"class_name": "Sequential", "name": "sequential_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "batch_normalization_3_input"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 11, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 20, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "batch_normalization_3_input"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 11, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adadelta", "config": {"name": "Adadelta", "learning_rate": 1.0, "decay": 0.0, "rho": 0.949999988079071, "epsilon": 1e-07}}}}
ї

axis
	gamma
beta
moving_mean
moving_variance
regularization_losses
	variables
trainable_variables
	keras_api
+©&call_and_return_all_conditional_losses
™__call__"е
_tf_keras_layerЋ{"class_name": "BatchNormalization", "name": "batch_normalization_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 20, 3]}}
т	

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
+Ђ&call_and_return_all_conditional_losses
ђ__call__"Ћ
_tf_keras_layer±{"class_name": "Conv2D", "name": "conv2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_9", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 20, 3]}}
Б
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+≠&call_and_return_all_conditional_losses
Ѓ__call__"р
_tf_keras_layer÷{"class_name": "MaxPooling2D", "name": "max_pooling2d_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_9", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ц	

$kernel
%bias
&regularization_losses
'	variables
(trainable_variables
)	keras_api
+ѓ&call_and_return_all_conditional_losses
∞__call__"ѕ
_tf_keras_layerµ{"class_name": "Conv2D", "name": "conv2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 10, 32]}}
Г
*regularization_losses
+	variables
,trainable_variables
-	keras_api
+±&call_and_return_all_conditional_losses
≤__call__"т
_tf_keras_layerЎ{"class_name": "MaxPooling2D", "name": "max_pooling2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
ф	

.kernel
/bias
0regularization_losses
1	variables
2trainable_variables
3	keras_api
+≥&call_and_return_all_conditional_losses
і__call__"Ќ
_tf_keras_layer≥{"class_name": "Conv2D", "name": "conv2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_11", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 5, 32]}}
Г
4regularization_losses
5	variables
6trainable_variables
7	keras_api
+µ&call_and_return_all_conditional_losses
ґ__call__"т
_tf_keras_layerЎ{"class_name": "MaxPooling2D", "name": "max_pooling2d_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_11", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
и
8regularization_losses
9	variables
:trainable_variables
;	keras_api
+Ј&call_and_return_all_conditional_losses
Є__call__"„
_tf_keras_layerљ{"class_name": "Flatten", "name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
х

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
+є&call_and_return_all_conditional_losses
Ї__call__"ќ
_tf_keras_layerі{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
ч

Bkernel
Cbias
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
+ї&call_and_return_all_conditional_losses
Љ__call__"–
_tf_keras_layerґ{"class_name": "Dense", "name": "dense_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_7", "trainable": true, "dtype": "float32", "units": 11, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
А
Hiter
	Idecay
Jlearning_rate
Krho
accum_gradО
accum_gradП
accum_gradР
accum_gradС$
accum_gradТ%
accum_gradУ.
accum_gradФ/
accum_gradХ<
accum_gradЦ=
accum_gradЧB
accum_gradШC
accum_gradЩ	accum_varЪ	accum_varЫ	accum_varЬ	accum_varЭ$	accum_varЮ%	accum_varЯ.	accum_var†/	accum_var°<	accum_varҐ=	accum_var£B	accum_var§C	accum_var•"
	optimizer
 "
trackable_list_wrapper
Ж
0
1
2
3
4
5
$6
%7
.8
/9
<10
=11
B12
C13"
trackable_list_wrapper
v
0
1
2
3
$4
%5
.6
/7
<8
=9
B10
C11"
trackable_list_wrapper
ќ

Llayers
Mlayer_metrics
regularization_losses
Nmetrics
	variables
trainable_variables
Olayer_regularization_losses
Pnon_trainable_variables
®__call__
¶_default_save_signature
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
-
љserving_default"
signature_map
 "
trackable_list_wrapper
):'2batch_normalization_3/gamma
(:&2batch_normalization_3/beta
1:/ (2!batch_normalization_3/moving_mean
5:3 (2%batch_normalization_3/moving_variance
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
∞

Qlayers
Rlayer_metrics
regularization_losses
Smetrics
	variables
trainable_variables
Tlayer_regularization_losses
Unon_trainable_variables
™__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_9/kernel
: 2conv2d_9/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
∞

Vlayers
Wlayer_metrics
regularization_losses
Xmetrics
	variables
trainable_variables
Ylayer_regularization_losses
Znon_trainable_variables
ђ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞

[layers
\layer_metrics
 regularization_losses
]metrics
!	variables
"trainable_variables
^layer_regularization_losses
_non_trainable_variables
Ѓ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_10/kernel
: 2conv2d_10/bias
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
∞

`layers
alayer_metrics
&regularization_losses
bmetrics
'	variables
(trainable_variables
clayer_regularization_losses
dnon_trainable_variables
∞__call__
+ѓ&call_and_return_all_conditional_losses
'ѓ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞

elayers
flayer_metrics
*regularization_losses
gmetrics
+	variables
,trainable_variables
hlayer_regularization_losses
inon_trainable_variables
≤__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
*:(  2conv2d_11/kernel
: 2conv2d_11/bias
 "
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
∞

jlayers
klayer_metrics
0regularization_losses
lmetrics
1	variables
2trainable_variables
mlayer_regularization_losses
nnon_trainable_variables
і__call__
+≥&call_and_return_all_conditional_losses
'≥"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞

olayers
player_metrics
4regularization_losses
qmetrics
5	variables
6trainable_variables
rlayer_regularization_losses
snon_trainable_variables
ґ__call__
+µ&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∞

tlayers
ulayer_metrics
8regularization_losses
vmetrics
9	variables
:trainable_variables
wlayer_regularization_losses
xnon_trainable_variables
Є__call__
+Ј&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
": 
АА2dense_6/kernel
:А2dense_6/bias
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
∞

ylayers
zlayer_metrics
>regularization_losses
{metrics
?	variables
@trainable_variables
|layer_regularization_losses
}non_trainable_variables
Ї__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
!:	А2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
≥

~layers
layer_metrics
Dregularization_losses
Аmetrics
E	variables
Ftrainable_variables
 Бlayer_regularization_losses
Вnon_trainable_variables
Љ__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adadelta/iter
: (2Adadelta/decay
 : (2Adadelta/learning_rate
: (2Adadelta/rho
f
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
9"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
Г0
Д1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
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
њ

Еtotal

Жcount
З	variables
И	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
Д

Йtotal

Кcount
Л
_fn_kwargs
М	variables
Н	keras_api"Є
_tf_keras_metricЭ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
Е0
Ж1"
trackable_list_wrapper
.
З	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Й0
К1"
trackable_list_wrapper
.
М	variables"
_generic_user_object
;:92/Adadelta/batch_normalization_3/gamma/accum_grad
::82.Adadelta/batch_normalization_3/beta/accum_grad
;:9 2#Adadelta/conv2d_9/kernel/accum_grad
-:+ 2!Adadelta/conv2d_9/bias/accum_grad
<::  2$Adadelta/conv2d_10/kernel/accum_grad
.:, 2"Adadelta/conv2d_10/bias/accum_grad
<::  2$Adadelta/conv2d_11/kernel/accum_grad
.:, 2"Adadelta/conv2d_11/bias/accum_grad
4:2
АА2"Adadelta/dense_6/kernel/accum_grad
-:+А2 Adadelta/dense_6/bias/accum_grad
3:1	А2"Adadelta/dense_7/kernel/accum_grad
,:*2 Adadelta/dense_7/bias/accum_grad
::82.Adadelta/batch_normalization_3/gamma/accum_var
9:72-Adadelta/batch_normalization_3/beta/accum_var
::8 2"Adadelta/conv2d_9/kernel/accum_var
,:* 2 Adadelta/conv2d_9/bias/accum_var
;:9  2#Adadelta/conv2d_10/kernel/accum_var
-:+ 2!Adadelta/conv2d_10/bias/accum_var
;:9  2#Adadelta/conv2d_11/kernel/accum_var
-:+ 2!Adadelta/conv2d_11/bias/accum_var
3:1
АА2!Adadelta/dense_6/kernel/accum_var
,:*А2Adadelta/dense_6/bias/accum_var
2:0	А2!Adadelta/dense_7/kernel/accum_var
+:)2Adadelta/dense_7/bias/accum_var
ы2ш
!__inference__wrapped_model_441427“
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *BҐ?
=К:
batch_normalization_3_input€€€€€€€€€ 
о2л
H__inference_sequential_3_layer_call_and_return_conditional_losses_442091
H__inference_sequential_3_layer_call_and_return_conditional_losses_442149
H__inference_sequential_3_layer_call_and_return_conditional_losses_441797
H__inference_sequential_3_layer_call_and_return_conditional_losses_441839ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
В2€
-__inference_sequential_3_layer_call_fn_441990
-__inference_sequential_3_layer_call_fn_442182
-__inference_sequential_3_layer_call_fn_442215
-__inference_sequential_3_layer_call_fn_441915ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ж2Г
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442235
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442299
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442253
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442317і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ъ2Ч
6__inference_batch_normalization_3_layer_call_fn_442279
6__inference_batch_normalization_3_layer_call_fn_442343
6__inference_batch_normalization_3_layer_call_fn_442266
6__inference_batch_normalization_3_layer_call_fn_442330і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
о2л
D__inference_conv2d_9_layer_call_and_return_conditional_losses_442354Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_conv2d_9_layer_call_fn_442363Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
≥2∞
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_441537а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ш2Х
0__inference_max_pooling2d_9_layer_call_fn_441543а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
п2м
E__inference_conv2d_10_layer_call_and_return_conditional_losses_442374Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_10_layer_call_fn_442383Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
і2±
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_441549а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Щ2Ц
1__inference_max_pooling2d_10_layer_call_fn_441555а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
п2м
E__inference_conv2d_11_layer_call_and_return_conditional_losses_442394Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_conv2d_11_layer_call_fn_442403Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
і2±
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_441561а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Щ2Ц
1__inference_max_pooling2d_11_layer_call_fn_441567а
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *@Ґ=
;К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
п2м
E__inference_flatten_3_layer_call_and_return_conditional_losses_442409Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
‘2—
*__inference_flatten_3_layer_call_fn_442414Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_6_layer_call_and_return_conditional_losses_442425Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_6_layer_call_fn_442434Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_7_layer_call_and_return_conditional_losses_442445Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_7_layer_call_fn_442454Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
яB№
$__inference_signature_wrapper_442031batch_normalization_3_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 Ј
!__inference__wrapped_model_441427С$%./<=BCLҐI
BҐ?
=К:
batch_normalization_3_input€€€€€€€€€ 
™ "1™.
,
dense_7!К
dense_7€€€€€€€€€м
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442235ЦMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ м
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442253ЦMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 
™ "?Ґ<
5К2
0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442299r;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ «
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_442317r;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ ƒ
6__inference_batch_normalization_3_layer_call_fn_442266ЙMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€ƒ
6__inference_batch_normalization_3_layer_call_fn_442279ЙMҐJ
CҐ@
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 
™ "2К/+€€€€€€€€€€€€€€€€€€€€€€€€€€€Я
6__inference_batch_normalization_3_layer_call_fn_442330e;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p
™ " К€€€€€€€€€ Я
6__inference_batch_normalization_3_layer_call_fn_442343e;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€ 
p 
™ " К€€€€€€€€€ µ
E__inference_conv2d_10_layer_call_and_return_conditional_losses_442374l$%7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
 
™ "-Ґ*
#К 
0€€€€€€€€€
 
Ъ Н
*__inference_conv2d_10_layer_call_fn_442383_$%7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€
 
™ " К€€€€€€€€€
 µ
E__inference_conv2d_11_layer_call_and_return_conditional_losses_442394l./7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€ 
Ъ Н
*__inference_conv2d_11_layer_call_fn_442403_./7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€ і
D__inference_conv2d_9_layer_call_and_return_conditional_losses_442354l7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€  
Ъ М
)__inference_conv2d_9_layer_call_fn_442363_7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€  •
C__inference_dense_6_layer_call_and_return_conditional_losses_442425^<=0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ }
(__inference_dense_6_layer_call_fn_442434Q<=0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А§
C__inference_dense_7_layer_call_and_return_conditional_losses_442445]BC0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ |
(__inference_dense_7_layer_call_fn_442454PBC0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€™
E__inference_flatten_3_layer_call_and_return_conditional_losses_442409a7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ В
*__inference_flatten_3_layer_call_fn_442414T7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "К€€€€€€€€€Ап
L__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_441549ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_10_layer_call_fn_441555СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€п
L__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_441561ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ «
1__inference_max_pooling2d_11_layer_call_fn_441567СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_441537ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_9_layer_call_fn_441543СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Џ
H__inference_sequential_3_layer_call_and_return_conditional_losses_441797Н$%./<=BCTҐQ
JҐG
=К:
batch_normalization_3_input€€€€€€€€€ 
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Џ
H__inference_sequential_3_layer_call_and_return_conditional_losses_441839Н$%./<=BCTҐQ
JҐG
=К:
batch_normalization_3_input€€€€€€€€€ 
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ƒ
H__inference_sequential_3_layer_call_and_return_conditional_losses_442091x$%./<=BC?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€ 
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ƒ
H__inference_sequential_3_layer_call_and_return_conditional_losses_442149x$%./<=BC?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€ 
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≤
-__inference_sequential_3_layer_call_fn_441915А$%./<=BCTҐQ
JҐG
=К:
batch_normalization_3_input€€€€€€€€€ 
p

 
™ "К€€€€€€€€€≤
-__inference_sequential_3_layer_call_fn_441990А$%./<=BCTҐQ
JҐG
=К:
batch_normalization_3_input€€€€€€€€€ 
p 

 
™ "К€€€€€€€€€Ь
-__inference_sequential_3_layer_call_fn_442182k$%./<=BC?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€ 
p

 
™ "К€€€€€€€€€Ь
-__inference_sequential_3_layer_call_fn_442215k$%./<=BC?Ґ<
5Ґ2
(К%
inputs€€€€€€€€€ 
p 

 
™ "К€€€€€€€€€ў
$__inference_signature_wrapper_442031∞$%./<=BCkҐh
Ґ 
a™^
\
batch_normalization_3_input=К:
batch_normalization_3_input€€€€€€€€€ "1™.
,
dense_7!К
dense_7€€€€€€€€€