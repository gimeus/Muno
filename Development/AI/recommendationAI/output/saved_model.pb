Ц°
ЉВ
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
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
3
Square
x"T
y"T"
Ttype:
2
	
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
ц
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.0-dev202008252v1.12.1-40136-g5b3cd9ce718±…
Ш
mlp_user_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
…А*.
shared_namemlp_user_embedding/embeddings
С
1mlp_user_embedding/embeddings/Read/ReadVariableOpReadVariableOpmlp_user_embedding/embeddings* 
_output_shapes
:
…А*
dtype0
Ч
mlp_item_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*.
shared_namemlp_item_embedding/embeddings
Р
1mlp_item_embedding/embeddings/Read/ReadVariableOpReadVariableOpmlp_item_embedding/embeddings*
_output_shapes
:	А*
dtype0
x
layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namelayer1/kernel
q
!layer1/kernel/Read/ReadVariableOpReadVariableOplayer1/kernel* 
_output_shapes
:
АА*
dtype0
o
layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namelayer1/bias
h
layer1/bias/Read/ReadVariableOpReadVariableOplayer1/bias*
_output_shapes	
:А*
dtype0
x
layer2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namelayer2/kernel
q
!layer2/kernel/Read/ReadVariableOpReadVariableOplayer2/kernel* 
_output_shapes
:
АА*
dtype0
o
layer2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namelayer2/bias
h
layer2/bias/Read/ReadVariableOpReadVariableOplayer2/bias*
_output_shapes	
:А*
dtype0
w
layer3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*
shared_namelayer3/kernel
p
!layer3/kernel/Read/ReadVariableOpReadVariableOplayer3/kernel*
_output_shapes
:	А@*
dtype0
n
layer3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namelayer3/bias
g
layer3/bias/Read/ReadVariableOpReadVariableOplayer3/bias*
_output_shapes
:@*
dtype0
Х
mf_user_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	…@*-
shared_namemf_user_embedding/embeddings
О
0mf_user_embedding/embeddings/Read/ReadVariableOpReadVariableOpmf_user_embedding/embeddings*
_output_shapes
:	…@*
dtype0
Ф
mf_item_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*-
shared_namemf_item_embedding/embeddings
Н
0mf_item_embedding/embeddings/Read/ReadVariableOpReadVariableOpmf_item_embedding/embeddings*
_output_shapes

:@*
dtype0
v
layer4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namelayer4/kernel
o
!layer4/kernel/Read/ReadVariableOpReadVariableOplayer4/kernel*
_output_shapes

:@ *
dtype0
n
layer4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelayer4/bias
g
layer4/bias/Read/ReadVariableOpReadVariableOplayer4/bias*
_output_shapes
: *
dtype0
v
layer5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namelayer5/kernel
o
!layer5/kernel/Read/ReadVariableOpReadVariableOplayer5/kernel*
_output_shapes

: *
dtype0
n
layer5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer5/bias
g
layer5/bias/Read/ReadVariableOpReadVariableOplayer5/bias*
_output_shapes
:*
dtype0
v
layer6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namelayer6/kernel
o
!layer6/kernel/Read/ReadVariableOpReadVariableOplayer6/kernel*
_output_shapes

:*
dtype0
n
layer6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelayer6/bias
g
layer6/bias/Read/ReadVariableOpReadVariableOplayer6/bias*
_output_shapes
:*
dtype0
w
result/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	И*
shared_nameresult/kernel
p
!result/kernel/Read/ReadVariableOpReadVariableOpresult/kernel*
_output_shapes
:	И*
dtype0
n
result/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameresult/bias
g
result/bias/Read/ReadVariableOpReadVariableOpresult/bias*
_output_shapes
:*
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
¶
$Adam/mlp_user_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
…А*5
shared_name&$Adam/mlp_user_embedding/embeddings/m
Я
8Adam/mlp_user_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp$Adam/mlp_user_embedding/embeddings/m* 
_output_shapes
:
…А*
dtype0
•
$Adam/mlp_item_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*5
shared_name&$Adam/mlp_item_embedding/embeddings/m
Ю
8Adam/mlp_item_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp$Adam/mlp_item_embedding/embeddings/m*
_output_shapes
:	А*
dtype0
Ж
Adam/layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/layer1/kernel/m

(Adam/layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer1/kernel/m* 
_output_shapes
:
АА*
dtype0
}
Adam/layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/layer1/bias/m
v
&Adam/layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer1/bias/m*
_output_shapes	
:А*
dtype0
Ж
Adam/layer2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/layer2/kernel/m

(Adam/layer2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer2/kernel/m* 
_output_shapes
:
АА*
dtype0
}
Adam/layer2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/layer2/bias/m
v
&Adam/layer2/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer2/bias/m*
_output_shapes	
:А*
dtype0
Е
Adam/layer3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*%
shared_nameAdam/layer3/kernel/m
~
(Adam/layer3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer3/kernel/m*
_output_shapes
:	А@*
dtype0
|
Adam/layer3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/layer3/bias/m
u
&Adam/layer3/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer3/bias/m*
_output_shapes
:@*
dtype0
£
#Adam/mf_user_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	…@*4
shared_name%#Adam/mf_user_embedding/embeddings/m
Ь
7Adam/mf_user_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp#Adam/mf_user_embedding/embeddings/m*
_output_shapes
:	…@*
dtype0
Ґ
#Adam/mf_item_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*4
shared_name%#Adam/mf_item_embedding/embeddings/m
Ы
7Adam/mf_item_embedding/embeddings/m/Read/ReadVariableOpReadVariableOp#Adam/mf_item_embedding/embeddings/m*
_output_shapes

:@*
dtype0
Д
Adam/layer4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *%
shared_nameAdam/layer4/kernel/m
}
(Adam/layer4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer4/kernel/m*
_output_shapes

:@ *
dtype0
|
Adam/layer4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/layer4/bias/m
u
&Adam/layer4/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer4/bias/m*
_output_shapes
: *
dtype0
Д
Adam/layer5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_nameAdam/layer5/kernel/m
}
(Adam/layer5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer5/kernel/m*
_output_shapes

: *
dtype0
|
Adam/layer5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/layer5/bias/m
u
&Adam/layer5/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer5/bias/m*
_output_shapes
:*
dtype0
Д
Adam/layer6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/layer6/kernel/m
}
(Adam/layer6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/layer6/kernel/m*
_output_shapes

:*
dtype0
|
Adam/layer6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/layer6/bias/m
u
&Adam/layer6/bias/m/Read/ReadVariableOpReadVariableOpAdam/layer6/bias/m*
_output_shapes
:*
dtype0
Е
Adam/result/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	И*%
shared_nameAdam/result/kernel/m
~
(Adam/result/kernel/m/Read/ReadVariableOpReadVariableOpAdam/result/kernel/m*
_output_shapes
:	И*
dtype0
|
Adam/result/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/result/bias/m
u
&Adam/result/bias/m/Read/ReadVariableOpReadVariableOpAdam/result/bias/m*
_output_shapes
:*
dtype0
¶
$Adam/mlp_user_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
…А*5
shared_name&$Adam/mlp_user_embedding/embeddings/v
Я
8Adam/mlp_user_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp$Adam/mlp_user_embedding/embeddings/v* 
_output_shapes
:
…А*
dtype0
•
$Adam/mlp_item_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*5
shared_name&$Adam/mlp_item_embedding/embeddings/v
Ю
8Adam/mlp_item_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp$Adam/mlp_item_embedding/embeddings/v*
_output_shapes
:	А*
dtype0
Ж
Adam/layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/layer1/kernel/v

(Adam/layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer1/kernel/v* 
_output_shapes
:
АА*
dtype0
}
Adam/layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/layer1/bias/v
v
&Adam/layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer1/bias/v*
_output_shapes	
:А*
dtype0
Ж
Adam/layer2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*%
shared_nameAdam/layer2/kernel/v

(Adam/layer2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer2/kernel/v* 
_output_shapes
:
АА*
dtype0
}
Adam/layer2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*#
shared_nameAdam/layer2/bias/v
v
&Adam/layer2/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer2/bias/v*
_output_shapes	
:А*
dtype0
Е
Adam/layer3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*%
shared_nameAdam/layer3/kernel/v
~
(Adam/layer3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer3/kernel/v*
_output_shapes
:	А@*
dtype0
|
Adam/layer3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/layer3/bias/v
u
&Adam/layer3/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer3/bias/v*
_output_shapes
:@*
dtype0
£
#Adam/mf_user_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	…@*4
shared_name%#Adam/mf_user_embedding/embeddings/v
Ь
7Adam/mf_user_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp#Adam/mf_user_embedding/embeddings/v*
_output_shapes
:	…@*
dtype0
Ґ
#Adam/mf_item_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*4
shared_name%#Adam/mf_item_embedding/embeddings/v
Ы
7Adam/mf_item_embedding/embeddings/v/Read/ReadVariableOpReadVariableOp#Adam/mf_item_embedding/embeddings/v*
_output_shapes

:@*
dtype0
Д
Adam/layer4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *%
shared_nameAdam/layer4/kernel/v
}
(Adam/layer4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer4/kernel/v*
_output_shapes

:@ *
dtype0
|
Adam/layer4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/layer4/bias/v
u
&Adam/layer4/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer4/bias/v*
_output_shapes
: *
dtype0
Д
Adam/layer5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *%
shared_nameAdam/layer5/kernel/v
}
(Adam/layer5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer5/kernel/v*
_output_shapes

: *
dtype0
|
Adam/layer5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/layer5/bias/v
u
&Adam/layer5/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer5/bias/v*
_output_shapes
:*
dtype0
Д
Adam/layer6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*%
shared_nameAdam/layer6/kernel/v
}
(Adam/layer6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/layer6/kernel/v*
_output_shapes

:*
dtype0
|
Adam/layer6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/layer6/bias/v
u
&Adam/layer6/bias/v/Read/ReadVariableOpReadVariableOpAdam/layer6/bias/v*
_output_shapes
:*
dtype0
Е
Adam/result/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	И*%
shared_nameAdam/result/kernel/v
~
(Adam/result/kernel/v/Read/ReadVariableOpReadVariableOpAdam/result/kernel/v*
_output_shapes
:	И*
dtype0
|
Adam/result/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/result/bias/v
u
&Adam/result/bias/v/Read/ReadVariableOpReadVariableOpAdam/result/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
¶r
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*бq
value„qB‘q BЌq
Ю
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer-14
layer_with_weights-8
layer-15
layer-16
layer_with_weights-9
layer-17
layer-18
layer_with_weights-10
layer-19
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
 
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
b
 
embeddings
!trainable_variables
"	variables
#regularization_losses
$	keras_api
R
%trainable_variables
&	variables
'regularization_losses
(	keras_api
R
)trainable_variables
*	variables
+regularization_losses
,	keras_api
R
-trainable_variables
.	variables
/regularization_losses
0	keras_api
h

1kernel
2bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
h

7kernel
8bias
9trainable_variables
:	variables
;regularization_losses
<	keras_api
h

=kernel
>bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
b
C
embeddings
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
b
H
embeddings
Itrainable_variables
J	variables
Kregularization_losses
L	keras_api
h

Mkernel
Nbias
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
R
Strainable_variables
T	variables
Uregularization_losses
V	keras_api
R
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
h

[kernel
\bias
]trainable_variables
^	variables
_regularization_losses
`	keras_api
R
atrainable_variables
b	variables
cregularization_losses
d	keras_api
h

ekernel
fbias
gtrainable_variables
h	variables
iregularization_losses
j	keras_api
R
ktrainable_variables
l	variables
mregularization_losses
n	keras_api
h

okernel
pbias
qtrainable_variables
r	variables
sregularization_losses
t	keras_api
®
uiter

vbeta_1

wbeta_2
	xdecay
ylearning_ratemд mе1mж2mз7mи8mй=mк>mлCmмHmнMmоNmп[mр\mсemтfmуomфpmхvц vч1vш2vщ7vъ8vы=vь>vэCvюHv€MvАNvБ[vВ\vГevДfvЕovЖpvЗ
Ж
0
 1
12
23
74
85
=6
>7
C8
H9
M10
N11
[12
\13
e14
f15
o16
p17
Ж
0
 1
12
23
74
85
=6
>7
C8
H9
M10
N11
[12
\13
e14
f15
o16
p17
 
≠
zmetrics
trainable_variables
{layer_metrics

|layers
}layer_regularization_losses
	variables
~non_trainable_variables
regularization_losses
 
mk
VARIABLE_VALUEmlp_user_embedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
±
metrics
trainable_variables
Аlayer_metrics
Бlayers
 Вlayer_regularization_losses
	variables
Гnon_trainable_variables
regularization_losses
mk
VARIABLE_VALUEmlp_item_embedding/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

 0

 0
 
≤
Дmetrics
!trainable_variables
Еlayer_metrics
Жlayers
 Зlayer_regularization_losses
"	variables
Иnon_trainable_variables
#regularization_losses
 
 
 
≤
Йmetrics
%trainable_variables
Кlayer_metrics
Лlayers
 Мlayer_regularization_losses
&	variables
Нnon_trainable_variables
'regularization_losses
 
 
 
≤
Оmetrics
)trainable_variables
Пlayer_metrics
Рlayers
 Сlayer_regularization_losses
*	variables
Тnon_trainable_variables
+regularization_losses
 
 
 
≤
Уmetrics
-trainable_variables
Фlayer_metrics
Хlayers
 Цlayer_regularization_losses
.	variables
Чnon_trainable_variables
/regularization_losses
YW
VARIABLE_VALUElayer1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21

10
21
 
≤
Шmetrics
3trainable_variables
Щlayer_metrics
Ъlayers
 Ыlayer_regularization_losses
4	variables
Ьnon_trainable_variables
5regularization_losses
YW
VARIABLE_VALUElayer2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

70
81

70
81
 
≤
Эmetrics
9trainable_variables
Юlayer_metrics
Яlayers
 †layer_regularization_losses
:	variables
°non_trainable_variables
;regularization_losses
YW
VARIABLE_VALUElayer3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

=0
>1
 
≤
Ґmetrics
?trainable_variables
£layer_metrics
§layers
 •layer_regularization_losses
@	variables
¶non_trainable_variables
Aregularization_losses
lj
VARIABLE_VALUEmf_user_embedding/embeddings:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUE

C0

C0
 
≤
Іmetrics
Dtrainable_variables
®layer_metrics
©layers
 ™layer_regularization_losses
E	variables
Ђnon_trainable_variables
Fregularization_losses
lj
VARIABLE_VALUEmf_item_embedding/embeddings:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUE

H0

H0
 
≤
ђmetrics
Itrainable_variables
≠layer_metrics
Ѓlayers
 ѓlayer_regularization_losses
J	variables
∞non_trainable_variables
Kregularization_losses
YW
VARIABLE_VALUElayer4/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer4/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

M0
N1

M0
N1
 
≤
±metrics
Otrainable_variables
≤layer_metrics
≥layers
 іlayer_regularization_losses
P	variables
µnon_trainable_variables
Qregularization_losses
 
 
 
≤
ґmetrics
Strainable_variables
Јlayer_metrics
Єlayers
 єlayer_regularization_losses
T	variables
Їnon_trainable_variables
Uregularization_losses
 
 
 
≤
їmetrics
Wtrainable_variables
Љlayer_metrics
љlayers
 Њlayer_regularization_losses
X	variables
њnon_trainable_variables
Yregularization_losses
YW
VARIABLE_VALUElayer5/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer5/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

[0
\1

[0
\1
 
≤
јmetrics
]trainable_variables
Ѕlayer_metrics
¬layers
 √layer_regularization_losses
^	variables
ƒnon_trainable_variables
_regularization_losses
 
 
 
≤
≈metrics
atrainable_variables
∆layer_metrics
«layers
 »layer_regularization_losses
b	variables
…non_trainable_variables
cregularization_losses
YW
VARIABLE_VALUElayer6/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElayer6/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

e0
f1

e0
f1
 
≤
 metrics
gtrainable_variables
Ћlayer_metrics
ћlayers
 Ќlayer_regularization_losses
h	variables
ќnon_trainable_variables
iregularization_losses
 
 
 
≤
ѕmetrics
ktrainable_variables
–layer_metrics
—layers
 “layer_regularization_losses
l	variables
”non_trainable_variables
mregularization_losses
ZX
VARIABLE_VALUEresult/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEresult/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

o0
p1

o0
p1
 
≤
‘metrics
qtrainable_variables
’layer_metrics
÷layers
 „layer_regularization_losses
r	variables
Ўnon_trainable_variables
sregularization_losses
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

ў0
Џ1
 
Ц
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
11
12
13
14
15
16
17
18
19
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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

џtotal

№count
Ё	variables
ё	keras_api
I

яtotal

аcount
б
_fn_kwargs
в	variables
г	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

џ0
№1

Ё	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

я0
а1

в	variables
СО
VARIABLE_VALUE$Adam/mlp_user_embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE$Adam/mlp_item_embedding/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE#Adam/mf_user_embedding/embeddings/mVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE#Adam/mf_item_embedding/embeddings/mVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer4/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer4/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer5/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer5/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer6/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer6/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/result/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/result/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE$Adam/mlp_user_embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
СО
VARIABLE_VALUE$Adam/mlp_item_embedding/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE#Adam/mf_user_embedding/embeddings/vVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
РН
VARIABLE_VALUE#Adam/mf_item_embedding/embeddings/vVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer4/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer4/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer5/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer5/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/layer6/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/layer6/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/result/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/result/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
serving_default_item_inputPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
}
serving_default_user_inputPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Є
StatefulPartitionedCallStatefulPartitionedCallserving_default_item_inputserving_default_user_inputmlp_item_embedding/embeddingsmlp_user_embedding/embeddingslayer1/kernellayer1/biaslayer2/kernellayer2/biaslayer3/kernellayer3/biaslayer4/kernellayer4/biasmf_item_embedding/embeddingsmf_user_embedding/embeddingslayer5/kernellayer5/biaslayer6/kernellayer6/biasresult/kernelresult/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8В *-
f(R&
$__inference_signature_wrapper_154574
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
е
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename1mlp_user_embedding/embeddings/Read/ReadVariableOp1mlp_item_embedding/embeddings/Read/ReadVariableOp!layer1/kernel/Read/ReadVariableOplayer1/bias/Read/ReadVariableOp!layer2/kernel/Read/ReadVariableOplayer2/bias/Read/ReadVariableOp!layer3/kernel/Read/ReadVariableOplayer3/bias/Read/ReadVariableOp0mf_user_embedding/embeddings/Read/ReadVariableOp0mf_item_embedding/embeddings/Read/ReadVariableOp!layer4/kernel/Read/ReadVariableOplayer4/bias/Read/ReadVariableOp!layer5/kernel/Read/ReadVariableOplayer5/bias/Read/ReadVariableOp!layer6/kernel/Read/ReadVariableOplayer6/bias/Read/ReadVariableOp!result/kernel/Read/ReadVariableOpresult/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp8Adam/mlp_user_embedding/embeddings/m/Read/ReadVariableOp8Adam/mlp_item_embedding/embeddings/m/Read/ReadVariableOp(Adam/layer1/kernel/m/Read/ReadVariableOp&Adam/layer1/bias/m/Read/ReadVariableOp(Adam/layer2/kernel/m/Read/ReadVariableOp&Adam/layer2/bias/m/Read/ReadVariableOp(Adam/layer3/kernel/m/Read/ReadVariableOp&Adam/layer3/bias/m/Read/ReadVariableOp7Adam/mf_user_embedding/embeddings/m/Read/ReadVariableOp7Adam/mf_item_embedding/embeddings/m/Read/ReadVariableOp(Adam/layer4/kernel/m/Read/ReadVariableOp&Adam/layer4/bias/m/Read/ReadVariableOp(Adam/layer5/kernel/m/Read/ReadVariableOp&Adam/layer5/bias/m/Read/ReadVariableOp(Adam/layer6/kernel/m/Read/ReadVariableOp&Adam/layer6/bias/m/Read/ReadVariableOp(Adam/result/kernel/m/Read/ReadVariableOp&Adam/result/bias/m/Read/ReadVariableOp8Adam/mlp_user_embedding/embeddings/v/Read/ReadVariableOp8Adam/mlp_item_embedding/embeddings/v/Read/ReadVariableOp(Adam/layer1/kernel/v/Read/ReadVariableOp&Adam/layer1/bias/v/Read/ReadVariableOp(Adam/layer2/kernel/v/Read/ReadVariableOp&Adam/layer2/bias/v/Read/ReadVariableOp(Adam/layer3/kernel/v/Read/ReadVariableOp&Adam/layer3/bias/v/Read/ReadVariableOp7Adam/mf_user_embedding/embeddings/v/Read/ReadVariableOp7Adam/mf_item_embedding/embeddings/v/Read/ReadVariableOp(Adam/layer4/kernel/v/Read/ReadVariableOp&Adam/layer4/bias/v/Read/ReadVariableOp(Adam/layer5/kernel/v/Read/ReadVariableOp&Adam/layer5/bias/v/Read/ReadVariableOp(Adam/layer6/kernel/v/Read/ReadVariableOp&Adam/layer6/bias/v/Read/ReadVariableOp(Adam/result/kernel/v/Read/ReadVariableOp&Adam/result/bias/v/Read/ReadVariableOpConst*L
TinE
C2A	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *(
f#R!
__inference__traced_save_155757
ф
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemlp_user_embedding/embeddingsmlp_item_embedding/embeddingslayer1/kernellayer1/biaslayer2/kernellayer2/biaslayer3/kernellayer3/biasmf_user_embedding/embeddingsmf_item_embedding/embeddingslayer4/kernellayer4/biaslayer5/kernellayer5/biaslayer6/kernellayer6/biasresult/kernelresult/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1$Adam/mlp_user_embedding/embeddings/m$Adam/mlp_item_embedding/embeddings/mAdam/layer1/kernel/mAdam/layer1/bias/mAdam/layer2/kernel/mAdam/layer2/bias/mAdam/layer3/kernel/mAdam/layer3/bias/m#Adam/mf_user_embedding/embeddings/m#Adam/mf_item_embedding/embeddings/mAdam/layer4/kernel/mAdam/layer4/bias/mAdam/layer5/kernel/mAdam/layer5/bias/mAdam/layer6/kernel/mAdam/layer6/bias/mAdam/result/kernel/mAdam/result/bias/m$Adam/mlp_user_embedding/embeddings/v$Adam/mlp_item_embedding/embeddings/vAdam/layer1/kernel/vAdam/layer1/bias/vAdam/layer2/kernel/vAdam/layer2/bias/vAdam/layer3/kernel/vAdam/layer3/bias/v#Adam/mf_user_embedding/embeddings/v#Adam/mf_item_embedding/embeddings/vAdam/layer4/kernel/vAdam/layer4/bias/vAdam/layer5/kernel/vAdam/layer5/bias/vAdam/layer6/kernel/vAdam/layer6/bias/vAdam/result/kernel/vAdam/result/bias/v*K
TinD
B2@*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *+
f&R$
"__inference__traced_restore_155956—Ѓ
І
™
B__inference_layer5_layer_call_and_return_conditional_losses_155364

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ :::O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ыв
я
!__inference__wrapped_model_152673

user_input

item_input4
0model_mlp_item_embedding_embedding_lookup_1525154
0model_mlp_user_embedding_embedding_lookup_152521/
+model_layer1_matmul_readvariableop_resource0
,model_layer1_biasadd_readvariableop_resource/
+model_layer2_matmul_readvariableop_resource0
,model_layer2_biasadd_readvariableop_resource/
+model_layer3_matmul_readvariableop_resource0
,model_layer3_biasadd_readvariableop_resource/
+model_layer4_matmul_readvariableop_resource0
,model_layer4_biasadd_readvariableop_resource3
/model_mf_item_embedding_embedding_lookup_1526093
/model_mf_user_embedding_embedding_lookup_152615/
+model_layer5_matmul_readvariableop_resource0
,model_layer5_biasadd_readvariableop_resource/
+model_layer6_matmul_readvariableop_resource0
,model_layer6_biasadd_readvariableop_resource/
+model_result_matmul_readvariableop_resource0
,model_result_biasadd_readvariableop_resource
identityИУ
model/mlp_item_embedding/CastCast
item_input*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
model/mlp_item_embedding/Castы
)model/mlp_item_embedding/embedding_lookupResourceGather0model_mlp_item_embedding_embedding_lookup_152515!model/mlp_item_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*C
_class9
75loc:@model/mlp_item_embedding/embedding_lookup/152515*,
_output_shapes
:€€€€€€€€€А*
dtype02+
)model/mlp_item_embedding/embedding_lookup“
2model/mlp_item_embedding/embedding_lookup/IdentityIdentity2model/mlp_item_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@model/mlp_item_embedding/embedding_lookup/152515*,
_output_shapes
:€€€€€€€€€А24
2model/mlp_item_embedding/embedding_lookup/Identityм
4model/mlp_item_embedding/embedding_lookup/Identity_1Identity;model/mlp_item_embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А26
4model/mlp_item_embedding/embedding_lookup/Identity_1У
model/mlp_user_embedding/CastCast
user_input*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
model/mlp_user_embedding/Castы
)model/mlp_user_embedding/embedding_lookupResourceGather0model_mlp_user_embedding_embedding_lookup_152521!model/mlp_user_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*C
_class9
75loc:@model/mlp_user_embedding/embedding_lookup/152521*,
_output_shapes
:€€€€€€€€€А*
dtype02+
)model/mlp_user_embedding/embedding_lookup“
2model/mlp_user_embedding/embedding_lookup/IdentityIdentity2model/mlp_user_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@model/mlp_user_embedding/embedding_lookup/152521*,
_output_shapes
:€€€€€€€€€А24
2model/mlp_user_embedding/embedding_lookup/Identityм
4model/mlp_user_embedding/embedding_lookup/Identity_1Identity;model/mlp_user_embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А26
4model/mlp_user_embedding/embedding_lookup/Identity_1
model/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
model/flatten_2/Constѕ
model/flatten_2/ReshapeReshape=model/mlp_user_embedding/embedding_lookup/Identity_1:output:0model/flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/flatten_2/Reshape
model/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
model/flatten_3/Constѕ
model/flatten_3/ReshapeReshape=model/mlp_item_embedding/embedding_lookup/Identity_1:output:0model/flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/flatten_3/ReshapeА
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axisи
model/concatenate/concatConcatV2 model/flatten_2/Reshape:output:0 model/flatten_3/Reshape:output:0&model/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А2
model/concatenate/concatґ
"model/layer1/MatMul/ReadVariableOpReadVariableOp+model_layer1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02$
"model/layer1/MatMul/ReadVariableOpґ
model/layer1/MatMulMatMul!model/concatenate/concat:output:0*model/layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/layer1/MatMulі
#model/layer1/BiasAdd/ReadVariableOpReadVariableOp,model_layer1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#model/layer1/BiasAdd/ReadVariableOpґ
model/layer1/BiasAddBiasAddmodel/layer1/MatMul:product:0+model/layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/layer1/BiasAddА
model/layer1/ReluRelumodel/layer1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/layer1/Relu∞
'model/layer1/ActivityRegularizer/SquareSquaremodel/layer1/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'model/layer1/ActivityRegularizer/Square°
&model/layer1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/layer1/ActivityRegularizer/Const“
$model/layer1/ActivityRegularizer/SumSum+model/layer1/ActivityRegularizer/Square:y:0/model/layer1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2&
$model/layer1/ActivityRegularizer/SumХ
&model/layer1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52(
&model/layer1/ActivityRegularizer/mul/x‘
$model/layer1/ActivityRegularizer/mulMul/model/layer1/ActivityRegularizer/mul/x:output:0-model/layer1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$model/layer1/ActivityRegularizer/mulЯ
&model/layer1/ActivityRegularizer/ShapeShapemodel/layer1/Relu:activations:0*
T0*
_output_shapes
:2(
&model/layer1/ActivityRegularizer/Shapeґ
4model/layer1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model/layer1/ActivityRegularizer/strided_slice/stackЇ
6model/layer1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer1/ActivityRegularizer/strided_slice/stack_1Ї
6model/layer1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer1/ActivityRegularizer/strided_slice/stack_2®
.model/layer1/ActivityRegularizer/strided_sliceStridedSlice/model/layer1/ActivityRegularizer/Shape:output:0=model/layer1/ActivityRegularizer/strided_slice/stack:output:0?model/layer1/ActivityRegularizer/strided_slice/stack_1:output:0?model/layer1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model/layer1/ActivityRegularizer/strided_sliceњ
%model/layer1/ActivityRegularizer/CastCast7model/layer1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%model/layer1/ActivityRegularizer/Cast’
(model/layer1/ActivityRegularizer/truedivRealDiv(model/layer1/ActivityRegularizer/mul:z:0)model/layer1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2*
(model/layer1/ActivityRegularizer/truedivґ
"model/layer2/MatMul/ReadVariableOpReadVariableOp+model_layer2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02$
"model/layer2/MatMul/ReadVariableOpі
model/layer2/MatMulMatMulmodel/layer1/Relu:activations:0*model/layer2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/layer2/MatMulі
#model/layer2/BiasAdd/ReadVariableOpReadVariableOp,model_layer2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02%
#model/layer2/BiasAdd/ReadVariableOpґ
model/layer2/BiasAddBiasAddmodel/layer2/MatMul:product:0+model/layer2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/layer2/BiasAddА
model/layer2/ReluRelumodel/layer2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/layer2/Relu∞
'model/layer2/ActivityRegularizer/SquareSquaremodel/layer2/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2)
'model/layer2/ActivityRegularizer/Square°
&model/layer2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/layer2/ActivityRegularizer/Const“
$model/layer2/ActivityRegularizer/SumSum+model/layer2/ActivityRegularizer/Square:y:0/model/layer2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2&
$model/layer2/ActivityRegularizer/SumХ
&model/layer2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52(
&model/layer2/ActivityRegularizer/mul/x‘
$model/layer2/ActivityRegularizer/mulMul/model/layer2/ActivityRegularizer/mul/x:output:0-model/layer2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$model/layer2/ActivityRegularizer/mulЯ
&model/layer2/ActivityRegularizer/ShapeShapemodel/layer2/Relu:activations:0*
T0*
_output_shapes
:2(
&model/layer2/ActivityRegularizer/Shapeґ
4model/layer2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model/layer2/ActivityRegularizer/strided_slice/stackЇ
6model/layer2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer2/ActivityRegularizer/strided_slice/stack_1Ї
6model/layer2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer2/ActivityRegularizer/strided_slice/stack_2®
.model/layer2/ActivityRegularizer/strided_sliceStridedSlice/model/layer2/ActivityRegularizer/Shape:output:0=model/layer2/ActivityRegularizer/strided_slice/stack:output:0?model/layer2/ActivityRegularizer/strided_slice/stack_1:output:0?model/layer2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model/layer2/ActivityRegularizer/strided_sliceњ
%model/layer2/ActivityRegularizer/CastCast7model/layer2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%model/layer2/ActivityRegularizer/Cast’
(model/layer2/ActivityRegularizer/truedivRealDiv(model/layer2/ActivityRegularizer/mul:z:0)model/layer2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2*
(model/layer2/ActivityRegularizer/truedivµ
"model/layer3/MatMul/ReadVariableOpReadVariableOp+model_layer3_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02$
"model/layer3/MatMul/ReadVariableOp≥
model/layer3/MatMulMatMulmodel/layer2/Relu:activations:0*model/layer3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/layer3/MatMul≥
#model/layer3/BiasAdd/ReadVariableOpReadVariableOp,model_layer3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02%
#model/layer3/BiasAdd/ReadVariableOpµ
model/layer3/BiasAddBiasAddmodel/layer3/MatMul:product:0+model/layer3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/layer3/BiasAdd
model/layer3/ReluRelumodel/layer3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/layer3/Reluѓ
'model/layer3/ActivityRegularizer/SquareSquaremodel/layer3/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@2)
'model/layer3/ActivityRegularizer/Square°
&model/layer3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/layer3/ActivityRegularizer/Const“
$model/layer3/ActivityRegularizer/SumSum+model/layer3/ActivityRegularizer/Square:y:0/model/layer3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2&
$model/layer3/ActivityRegularizer/SumХ
&model/layer3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52(
&model/layer3/ActivityRegularizer/mul/x‘
$model/layer3/ActivityRegularizer/mulMul/model/layer3/ActivityRegularizer/mul/x:output:0-model/layer3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$model/layer3/ActivityRegularizer/mulЯ
&model/layer3/ActivityRegularizer/ShapeShapemodel/layer3/Relu:activations:0*
T0*
_output_shapes
:2(
&model/layer3/ActivityRegularizer/Shapeґ
4model/layer3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model/layer3/ActivityRegularizer/strided_slice/stackЇ
6model/layer3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer3/ActivityRegularizer/strided_slice/stack_1Ї
6model/layer3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer3/ActivityRegularizer/strided_slice/stack_2®
.model/layer3/ActivityRegularizer/strided_sliceStridedSlice/model/layer3/ActivityRegularizer/Shape:output:0=model/layer3/ActivityRegularizer/strided_slice/stack:output:0?model/layer3/ActivityRegularizer/strided_slice/stack_1:output:0?model/layer3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model/layer3/ActivityRegularizer/strided_sliceњ
%model/layer3/ActivityRegularizer/CastCast7model/layer3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%model/layer3/ActivityRegularizer/Cast’
(model/layer3/ActivityRegularizer/truedivRealDiv(model/layer3/ActivityRegularizer/mul:z:0)model/layer3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2*
(model/layer3/ActivityRegularizer/truedivі
"model/layer4/MatMul/ReadVariableOpReadVariableOp+model_layer4_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02$
"model/layer4/MatMul/ReadVariableOp≥
model/layer4/MatMulMatMulmodel/layer3/Relu:activations:0*model/layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
model/layer4/MatMul≥
#model/layer4/BiasAdd/ReadVariableOpReadVariableOp,model_layer4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#model/layer4/BiasAdd/ReadVariableOpµ
model/layer4/BiasAddBiasAddmodel/layer4/MatMul:product:0+model/layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
model/layer4/BiasAdd
model/layer4/ReluRelumodel/layer4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
model/layer4/Reluѓ
'model/layer4/ActivityRegularizer/SquareSquaremodel/layer4/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'model/layer4/ActivityRegularizer/Square°
&model/layer4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/layer4/ActivityRegularizer/Const“
$model/layer4/ActivityRegularizer/SumSum+model/layer4/ActivityRegularizer/Square:y:0/model/layer4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2&
$model/layer4/ActivityRegularizer/SumХ
&model/layer4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52(
&model/layer4/ActivityRegularizer/mul/x‘
$model/layer4/ActivityRegularizer/mulMul/model/layer4/ActivityRegularizer/mul/x:output:0-model/layer4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$model/layer4/ActivityRegularizer/mulЯ
&model/layer4/ActivityRegularizer/ShapeShapemodel/layer4/Relu:activations:0*
T0*
_output_shapes
:2(
&model/layer4/ActivityRegularizer/Shapeґ
4model/layer4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model/layer4/ActivityRegularizer/strided_slice/stackЇ
6model/layer4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer4/ActivityRegularizer/strided_slice/stack_1Ї
6model/layer4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer4/ActivityRegularizer/strided_slice/stack_2®
.model/layer4/ActivityRegularizer/strided_sliceStridedSlice/model/layer4/ActivityRegularizer/Shape:output:0=model/layer4/ActivityRegularizer/strided_slice/stack:output:0?model/layer4/ActivityRegularizer/strided_slice/stack_1:output:0?model/layer4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model/layer4/ActivityRegularizer/strided_sliceњ
%model/layer4/ActivityRegularizer/CastCast7model/layer4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%model/layer4/ActivityRegularizer/Cast’
(model/layer4/ActivityRegularizer/truedivRealDiv(model/layer4/ActivityRegularizer/mul:z:0)model/layer4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2*
(model/layer4/ActivityRegularizer/truedivС
model/mf_item_embedding/CastCast
item_input*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
model/mf_item_embedding/Castх
(model/mf_item_embedding/embedding_lookupResourceGather/model_mf_item_embedding_embedding_lookup_152609 model/mf_item_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@model/mf_item_embedding/embedding_lookup/152609*+
_output_shapes
:€€€€€€€€€@*
dtype02*
(model/mf_item_embedding/embedding_lookupЌ
1model/mf_item_embedding/embedding_lookup/IdentityIdentity1model/mf_item_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@model/mf_item_embedding/embedding_lookup/152609*+
_output_shapes
:€€€€€€€€€@23
1model/mf_item_embedding/embedding_lookup/Identityи
3model/mf_item_embedding/embedding_lookup/Identity_1Identity:model/mf_item_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@25
3model/mf_item_embedding/embedding_lookup/Identity_1С
model/mf_user_embedding/CastCast
user_input*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
model/mf_user_embedding/Castх
(model/mf_user_embedding/embedding_lookupResourceGather/model_mf_user_embedding_embedding_lookup_152615 model/mf_user_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*B
_class8
64loc:@model/mf_user_embedding/embedding_lookup/152615*+
_output_shapes
:€€€€€€€€€@*
dtype02*
(model/mf_user_embedding/embedding_lookupЌ
1model/mf_user_embedding/embedding_lookup/IdentityIdentity1model/mf_user_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@model/mf_user_embedding/embedding_lookup/152615*+
_output_shapes
:€€€€€€€€€@23
1model/mf_user_embedding/embedding_lookup/Identityи
3model/mf_user_embedding/embedding_lookup/Identity_1Identity:model/mf_user_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@25
3model/mf_user_embedding/embedding_lookup/Identity_1і
"model/layer5/MatMul/ReadVariableOpReadVariableOp+model_layer5_matmul_readvariableop_resource*
_output_shapes

: *
dtype02$
"model/layer5/MatMul/ReadVariableOp≥
model/layer5/MatMulMatMulmodel/layer4/Relu:activations:0*model/layer5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/layer5/MatMul≥
#model/layer5/BiasAdd/ReadVariableOpReadVariableOp,model_layer5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#model/layer5/BiasAdd/ReadVariableOpµ
model/layer5/BiasAddBiasAddmodel/layer5/MatMul:product:0+model/layer5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/layer5/BiasAdd
model/layer5/ReluRelumodel/layer5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/layer5/Reluѓ
'model/layer5/ActivityRegularizer/SquareSquaremodel/layer5/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2)
'model/layer5/ActivityRegularizer/Square°
&model/layer5/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/layer5/ActivityRegularizer/Const“
$model/layer5/ActivityRegularizer/SumSum+model/layer5/ActivityRegularizer/Square:y:0/model/layer5/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2&
$model/layer5/ActivityRegularizer/SumХ
&model/layer5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52(
&model/layer5/ActivityRegularizer/mul/x‘
$model/layer5/ActivityRegularizer/mulMul/model/layer5/ActivityRegularizer/mul/x:output:0-model/layer5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$model/layer5/ActivityRegularizer/mulЯ
&model/layer5/ActivityRegularizer/ShapeShapemodel/layer5/Relu:activations:0*
T0*
_output_shapes
:2(
&model/layer5/ActivityRegularizer/Shapeґ
4model/layer5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model/layer5/ActivityRegularizer/strided_slice/stackЇ
6model/layer5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer5/ActivityRegularizer/strided_slice/stack_1Ї
6model/layer5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer5/ActivityRegularizer/strided_slice/stack_2®
.model/layer5/ActivityRegularizer/strided_sliceStridedSlice/model/layer5/ActivityRegularizer/Shape:output:0=model/layer5/ActivityRegularizer/strided_slice/stack:output:0?model/layer5/ActivityRegularizer/strided_slice/stack_1:output:0?model/layer5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model/layer5/ActivityRegularizer/strided_sliceњ
%model/layer5/ActivityRegularizer/CastCast7model/layer5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%model/layer5/ActivityRegularizer/Cast’
(model/layer5/ActivityRegularizer/truedivRealDiv(model/layer5/ActivityRegularizer/mul:z:0)model/layer5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2*
(model/layer5/ActivityRegularizer/truediv{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
model/flatten/Const»
model/flatten/ReshapeReshape<model/mf_user_embedding/embedding_lookup/Identity_1:output:0model/flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/flatten/Reshape
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
model/flatten_1/Constќ
model/flatten_1/ReshapeReshape<model/mf_item_embedding/embedding_lookup/Identity_1:output:0model/flatten_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/flatten_1/Reshape§
model/multiply/mulMulmodel/flatten/Reshape:output:0 model/flatten_1/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
model/multiply/mulі
"model/layer6/MatMul/ReadVariableOpReadVariableOp+model_layer6_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"model/layer6/MatMul/ReadVariableOp≥
model/layer6/MatMulMatMulmodel/layer5/Relu:activations:0*model/layer6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/layer6/MatMul≥
#model/layer6/BiasAdd/ReadVariableOpReadVariableOp,model_layer6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#model/layer6/BiasAdd/ReadVariableOpµ
model/layer6/BiasAddBiasAddmodel/layer6/MatMul:product:0+model/layer6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/layer6/BiasAdd
model/layer6/ReluRelumodel/layer6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/layer6/Reluѓ
'model/layer6/ActivityRegularizer/SquareSquaremodel/layer6/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2)
'model/layer6/ActivityRegularizer/Square°
&model/layer6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2(
&model/layer6/ActivityRegularizer/Const“
$model/layer6/ActivityRegularizer/SumSum+model/layer6/ActivityRegularizer/Square:y:0/model/layer6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2&
$model/layer6/ActivityRegularizer/SumХ
&model/layer6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52(
&model/layer6/ActivityRegularizer/mul/x‘
$model/layer6/ActivityRegularizer/mulMul/model/layer6/ActivityRegularizer/mul/x:output:0-model/layer6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2&
$model/layer6/ActivityRegularizer/mulЯ
&model/layer6/ActivityRegularizer/ShapeShapemodel/layer6/Relu:activations:0*
T0*
_output_shapes
:2(
&model/layer6/ActivityRegularizer/Shapeґ
4model/layer6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 26
4model/layer6/ActivityRegularizer/strided_slice/stackЇ
6model/layer6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer6/ActivityRegularizer/strided_slice/stack_1Ї
6model/layer6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:28
6model/layer6/ActivityRegularizer/strided_slice/stack_2®
.model/layer6/ActivityRegularizer/strided_sliceStridedSlice/model/layer6/ActivityRegularizer/Shape:output:0=model/layer6/ActivityRegularizer/strided_slice/stack:output:0?model/layer6/ActivityRegularizer/strided_slice/stack_1:output:0?model/layer6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask20
.model/layer6/ActivityRegularizer/strided_sliceњ
%model/layer6/ActivityRegularizer/CastCast7model/layer6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2'
%model/layer6/ActivityRegularizer/Cast’
(model/layer6/ActivityRegularizer/truedivRealDiv(model/layer6/ActivityRegularizer/mul:z:0)model/layer6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2*
(model/layer6/ActivityRegularizer/truedivД
model/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2!
model/concatenate_1/concat/axisг
model/concatenate_1/concatConcatV2model/multiply/mul:z:0model/layer6/Relu:activations:0(model/concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€И2
model/concatenate_1/concatµ
"model/result/MatMul/ReadVariableOpReadVariableOp+model_result_matmul_readvariableop_resource*
_output_shapes
:	И*
dtype02$
"model/result/MatMul/ReadVariableOpЈ
model/result/MatMulMatMul#model/concatenate_1/concat:output:0*model/result/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/result/MatMul≥
#model/result/BiasAdd/ReadVariableOpReadVariableOp,model_result_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#model/result/BiasAdd/ReadVariableOpµ
model/result/BiasAddBiasAddmodel/result/MatMul:product:0+model/result/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/result/BiasAddИ
model/result/SigmoidSigmoidmodel/result/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/result/Sigmoidl
IdentityIdentitymodel/result/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€:::::::::::::::::::S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
user_input:SO
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
item_input
ф
}
__inference_loss_fn_1_155502L
Hmlp_item_embedding_embeddings_regularizer_square_readvariableop_resource
identityИМ
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpHmlp_item_embedding_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	А*
dtype02A
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpб
0mlp_item_embedding/embeddings/Regularizer/SquareSquareGmlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	А22
0mlp_item_embedding/embeddings/Regularizer/Square≥
/mlp_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_item_embedding/embeddings/Regularizer/Constц
-mlp_item_embedding/embeddings/Regularizer/SumSum4mlp_item_embedding/embeddings/Regularizer/Square:y:08mlp_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/SumІ
/mlp_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_item_embedding/embeddings/Regularizer/mul/xш
-mlp_item_embedding/embeddings/Regularizer/mulMul8mlp_item_embedding/embeddings/Regularizer/mul/x:output:06mlp_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/mult
IdentityIdentity1mlp_item_embedding/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:
∞
™
B__inference_layer2_layer_call_and_return_conditional_losses_155191

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИП
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
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:::P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬
H
.__inference_layer4_activity_regularizer_152773
self
identityC
SquareSquareself*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
::> :

_output_shapes
:

_user_specified_nameself
∞
™
B__inference_layer1_layer_call_and_return_conditional_losses_155160

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:::P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
±й
с
A__inference_model_layer_call_and_return_conditional_losses_154037

user_input

item_input
mlp_item_embedding_153904
mlp_user_embedding_153907
layer1_153913
layer1_153915
layer2_153926
layer2_153928
layer3_153939
layer3_153941
layer4_153952
layer4_153954
mf_item_embedding_153965
mf_user_embedding_153968
layer5_153971
layer5_153973
layer6_153987
layer6_153989
result_154001
result_154003
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐlayer1/StatefulPartitionedCallҐlayer2/StatefulPartitionedCallҐlayer3/StatefulPartitionedCallҐlayer4/StatefulPartitionedCallҐlayer5/StatefulPartitionedCallҐlayer6/StatefulPartitionedCallҐ)mf_item_embedding/StatefulPartitionedCallҐ)mf_user_embedding/StatefulPartitionedCallҐ*mlp_item_embedding/StatefulPartitionedCallҐ*mlp_user_embedding/StatefulPartitionedCallҐresult/StatefulPartitionedCallґ
*mlp_item_embedding/StatefulPartitionedCallStatefulPartitionedCall
item_inputmlp_item_embedding_153904*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_item_embedding_layer_call_and_return_conditional_losses_1528602,
*mlp_item_embedding/StatefulPartitionedCallґ
*mlp_user_embedding/StatefulPartitionedCallStatefulPartitionedCall
user_inputmlp_user_embedding_153907*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_user_embedding_layer_call_and_return_conditional_losses_1529112,
*mlp_user_embedding/StatefulPartitionedCallЙ
flatten_2/PartitionedCallPartitionedCall3mlp_user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1529422
flatten_2/PartitionedCallЙ
flatten_3/PartitionedCallPartitionedCall3mlp_item_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1529672
flatten_3/PartitionedCall£
concatenate/PartitionedCallPartitionedCall"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1529942
concatenate/PartitionedCall≠
layer1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0layer1_153913layer1_153915*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_1530312 
layer1/StatefulPartitionedCallц
*layer1/ActivityRegularizer/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer1_activity_regularizer_1526982,
*layer1/ActivityRegularizer/PartitionedCallЫ
 layer1/ActivityRegularizer/ShapeShape'layer1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer1/ActivityRegularizer/Shape™
.layer1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer1/ActivityRegularizer/strided_slice/stackЃ
0layer1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_2Д
(layer1/ActivityRegularizer/strided_sliceStridedSlice)layer1/ActivityRegularizer/Shape:output:07layer1/ActivityRegularizer/strided_slice/stack:output:09layer1/ActivityRegularizer/strided_slice/stack_1:output:09layer1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer1/ActivityRegularizer/strided_slice≠
layer1/ActivityRegularizer/CastCast1layer1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer1/ActivityRegularizer/Castќ
"layer1/ActivityRegularizer/truedivRealDiv3layer1/ActivityRegularizer/PartitionedCall:output:0#layer1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer1/ActivityRegularizer/truediv∞
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_153926layer2_153928*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_1531092 
layer2/StatefulPartitionedCallц
*layer2/ActivityRegularizer/PartitionedCallPartitionedCall'layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer2_activity_regularizer_1527232,
*layer2/ActivityRegularizer/PartitionedCallЫ
 layer2/ActivityRegularizer/ShapeShape'layer2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer2/ActivityRegularizer/Shape™
.layer2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer2/ActivityRegularizer/strided_slice/stackЃ
0layer2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_2Д
(layer2/ActivityRegularizer/strided_sliceStridedSlice)layer2/ActivityRegularizer/Shape:output:07layer2/ActivityRegularizer/strided_slice/stack:output:09layer2/ActivityRegularizer/strided_slice/stack_1:output:09layer2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer2/ActivityRegularizer/strided_slice≠
layer2/ActivityRegularizer/CastCast1layer2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer2/ActivityRegularizer/Castќ
"layer2/ActivityRegularizer/truedivRealDiv3layer2/ActivityRegularizer/PartitionedCall:output:0#layer2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer2/ActivityRegularizer/truedivѓ
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_153939layer3_153941*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_1531872 
layer3/StatefulPartitionedCallц
*layer3/ActivityRegularizer/PartitionedCallPartitionedCall'layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer3_activity_regularizer_1527482,
*layer3/ActivityRegularizer/PartitionedCallЫ
 layer3/ActivityRegularizer/ShapeShape'layer3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer3/ActivityRegularizer/Shape™
.layer3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer3/ActivityRegularizer/strided_slice/stackЃ
0layer3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_2Д
(layer3/ActivityRegularizer/strided_sliceStridedSlice)layer3/ActivityRegularizer/Shape:output:07layer3/ActivityRegularizer/strided_slice/stack:output:09layer3/ActivityRegularizer/strided_slice/stack_1:output:09layer3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer3/ActivityRegularizer/strided_slice≠
layer3/ActivityRegularizer/CastCast1layer3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer3/ActivityRegularizer/Castќ
"layer3/ActivityRegularizer/truedivRealDiv3layer3/ActivityRegularizer/PartitionedCall:output:0#layer3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer3/ActivityRegularizer/truedivѓ
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_153952layer4_153954*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_1532652 
layer4/StatefulPartitionedCallц
*layer4/ActivityRegularizer/PartitionedCallPartitionedCall'layer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer4_activity_regularizer_1527732,
*layer4/ActivityRegularizer/PartitionedCallЫ
 layer4/ActivityRegularizer/ShapeShape'layer4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer4/ActivityRegularizer/Shape™
.layer4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer4/ActivityRegularizer/strided_slice/stackЃ
0layer4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_2Д
(layer4/ActivityRegularizer/strided_sliceStridedSlice)layer4/ActivityRegularizer/Shape:output:07layer4/ActivityRegularizer/strided_slice/stack:output:09layer4/ActivityRegularizer/strided_slice/stack_1:output:09layer4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer4/ActivityRegularizer/strided_slice≠
layer4/ActivityRegularizer/CastCast1layer4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer4/ActivityRegularizer/Castќ
"layer4/ActivityRegularizer/truedivRealDiv3layer4/ActivityRegularizer/PartitionedCall:output:0#layer4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer4/ActivityRegularizer/truediv±
)mf_item_embedding/StatefulPartitionedCallStatefulPartitionedCall
item_inputmf_item_embedding_153965*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_item_embedding_layer_call_and_return_conditional_losses_1533532+
)mf_item_embedding/StatefulPartitionedCall±
)mf_user_embedding/StatefulPartitionedCallStatefulPartitionedCall
user_inputmf_user_embedding_153968*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_user_embedding_layer_call_and_return_conditional_losses_1534042+
)mf_user_embedding/StatefulPartitionedCallѓ
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_153971layer5_153973*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_1534452 
layer5/StatefulPartitionedCallц
*layer5/ActivityRegularizer/PartitionedCallPartitionedCall'layer5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer5_activity_regularizer_1527982,
*layer5/ActivityRegularizer/PartitionedCallЫ
 layer5/ActivityRegularizer/ShapeShape'layer5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer5/ActivityRegularizer/Shape™
.layer5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer5/ActivityRegularizer/strided_slice/stackЃ
0layer5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_2Д
(layer5/ActivityRegularizer/strided_sliceStridedSlice)layer5/ActivityRegularizer/Shape:output:07layer5/ActivityRegularizer/strided_slice/stack:output:09layer5/ActivityRegularizer/strided_slice/stack_1:output:09layer5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer5/ActivityRegularizer/strided_slice≠
layer5/ActivityRegularizer/CastCast1layer5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer5/ActivityRegularizer/Castќ
"layer5/ActivityRegularizer/truedivRealDiv3layer5/ActivityRegularizer/PartitionedCall:output:0#layer5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer5/ActivityRegularizer/truedivВ
flatten/PartitionedCallPartitionedCall2mf_user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1535132
flatten/PartitionedCallИ
flatten_1/PartitionedCallPartitionedCall2mf_item_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1535382
flatten_1/PartitionedCallШ
multiply/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *M
fHRF
D__inference_multiply_layer_call_and_return_conditional_losses_1535632
multiply/PartitionedCallѓ
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_153987layer6_153989*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_1536002 
layer6/StatefulPartitionedCallц
*layer6/ActivityRegularizer/PartitionedCallPartitionedCall'layer6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer6_activity_regularizer_1528232,
*layer6/ActivityRegularizer/PartitionedCallЫ
 layer6/ActivityRegularizer/ShapeShape'layer6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer6/ActivityRegularizer/Shape™
.layer6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer6/ActivityRegularizer/strided_slice/stackЃ
0layer6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_2Д
(layer6/ActivityRegularizer/strided_sliceStridedSlice)layer6/ActivityRegularizer/Shape:output:07layer6/ActivityRegularizer/strided_slice/stack:output:09layer6/ActivityRegularizer/strided_slice/stack_1:output:09layer6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer6/ActivityRegularizer/strided_slice≠
layer6/ActivityRegularizer/CastCast1layer6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer6/ActivityRegularizer/Castќ
"layer6/ActivityRegularizer/truedivRealDiv3layer6/ActivityRegularizer/PartitionedCall:output:0#layer6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer6/ActivityRegularizer/truediv≠
concatenate_1/PartitionedCallPartitionedCall!multiply/PartitionedCall:output:0'layer6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€И* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1536702
concatenate_1/PartitionedCallЃ
result/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0result_154001result_154003*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_1537072 
result/StatefulPartitionedCallё
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmlp_user_embedding_153907* 
_output_shapes
:
…А*
dtype02A
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpв
0mlp_user_embedding/embeddings/Regularizer/SquareSquareGmlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
…А22
0mlp_user_embedding/embeddings/Regularizer/Square≥
/mlp_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_user_embedding/embeddings/Regularizer/Constц
-mlp_user_embedding/embeddings/Regularizer/SumSum4mlp_user_embedding/embeddings/Regularizer/Square:y:08mlp_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/SumІ
/mlp_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_user_embedding/embeddings/Regularizer/mul/xш
-mlp_user_embedding/embeddings/Regularizer/mulMul8mlp_user_embedding/embeddings/Regularizer/mul/x:output:06mlp_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/mulЁ
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmlp_item_embedding_153904*
_output_shapes
:	А*
dtype02A
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpб
0mlp_item_embedding/embeddings/Regularizer/SquareSquareGmlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	А22
0mlp_item_embedding/embeddings/Regularizer/Square≥
/mlp_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_item_embedding/embeddings/Regularizer/Constц
-mlp_item_embedding/embeddings/Regularizer/SumSum4mlp_item_embedding/embeddings/Regularizer/Square:y:08mlp_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/SumІ
/mlp_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_item_embedding/embeddings/Regularizer/mul/xш
-mlp_item_embedding/embeddings/Regularizer/mulMul8mlp_item_embedding/embeddings/Regularizer/mul/x:output:06mlp_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/mulЏ
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmf_user_embedding_153968*
_output_shapes
:	…@*
dtype02@
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpё
/mf_user_embedding/embeddings/Regularizer/SquareSquareFmf_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	…@21
/mf_user_embedding/embeddings/Regularizer/Square±
.mf_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_user_embedding/embeddings/Regularizer/Constт
,mf_user_embedding/embeddings/Regularizer/SumSum3mf_user_embedding/embeddings/Regularizer/Square:y:07mf_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/Sum•
.mf_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_user_embedding/embeddings/Regularizer/mul/xф
,mf_user_embedding/embeddings/Regularizer/mulMul7mf_user_embedding/embeddings/Regularizer/mul/x:output:05mf_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/mulў
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmf_item_embedding_153965*
_output_shapes

:@*
dtype02@
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpЁ
/mf_item_embedding/embeddings/Regularizer/SquareSquareFmf_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@21
/mf_item_embedding/embeddings/Regularizer/Square±
.mf_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_item_embedding/embeddings/Regularizer/Constт
,mf_item_embedding/embeddings/Regularizer/SumSum3mf_item_embedding/embeddings/Regularizer/Square:y:07mf_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/Sum•
.mf_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_item_embedding/embeddings/Regularizer/mul/xф
,mf_item_embedding/embeddings/Regularizer/mulMul7mf_item_embedding/embeddings/Regularizer/mul/x:output:05mf_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/mulФ
IdentityIdentity'result/StatefulPartitionedCall:output:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЖ

Identity_1Identity&layer1/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1Ж

Identity_2Identity&layer2/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2Ж

Identity_3Identity&layer3/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3Ж

Identity_4Identity&layer4/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4Ж

Identity_5Identity&layer5/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_5Ж

Identity_6Identity&layer6/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_6"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€::::::::::::::::::2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall2@
layer6/StatefulPartitionedCalllayer6/StatefulPartitionedCall2V
)mf_item_embedding/StatefulPartitionedCall)mf_item_embedding/StatefulPartitionedCall2V
)mf_user_embedding/StatefulPartitionedCall)mf_user_embedding/StatefulPartitionedCall2X
*mlp_item_embedding/StatefulPartitionedCall*mlp_item_embedding/StatefulPartitionedCall2X
*mlp_user_embedding/StatefulPartitionedCall*mlp_user_embedding/StatefulPartitionedCall2@
result/StatefulPartitionedCallresult/StatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
user_input:SO
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
item_input
§
F
*__inference_flatten_3_layer_call_fn_155136

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1529672
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*+
_input_shapes
:€€€€€€€€€А:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ
x
2__inference_mf_item_embedding_layer_call_fn_155300

inputs
unknown
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_item_embedding_layer_call_and_return_conditional_losses_1533532
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
°
U
)__inference_multiply_layer_call_fn_155396
inputs_0
inputs_1
identity‘
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *M
fHRF
D__inference_multiply_layer_call_and_return_conditional_losses_1535632
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:€€€€€€€€€А:€€€€€€€€€А:R N
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/1
±й
с
A__inference_model_layer_call_and_return_conditional_losses_153900

user_input

item_input
mlp_item_embedding_153767
mlp_user_embedding_153770
layer1_153776
layer1_153778
layer2_153789
layer2_153791
layer3_153802
layer3_153804
layer4_153815
layer4_153817
mf_item_embedding_153828
mf_user_embedding_153831
layer5_153834
layer5_153836
layer6_153850
layer6_153852
result_153864
result_153866
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐlayer1/StatefulPartitionedCallҐlayer2/StatefulPartitionedCallҐlayer3/StatefulPartitionedCallҐlayer4/StatefulPartitionedCallҐlayer5/StatefulPartitionedCallҐlayer6/StatefulPartitionedCallҐ)mf_item_embedding/StatefulPartitionedCallҐ)mf_user_embedding/StatefulPartitionedCallҐ*mlp_item_embedding/StatefulPartitionedCallҐ*mlp_user_embedding/StatefulPartitionedCallҐresult/StatefulPartitionedCallґ
*mlp_item_embedding/StatefulPartitionedCallStatefulPartitionedCall
item_inputmlp_item_embedding_153767*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_item_embedding_layer_call_and_return_conditional_losses_1528602,
*mlp_item_embedding/StatefulPartitionedCallґ
*mlp_user_embedding/StatefulPartitionedCallStatefulPartitionedCall
user_inputmlp_user_embedding_153770*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_user_embedding_layer_call_and_return_conditional_losses_1529112,
*mlp_user_embedding/StatefulPartitionedCallЙ
flatten_2/PartitionedCallPartitionedCall3mlp_user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1529422
flatten_2/PartitionedCallЙ
flatten_3/PartitionedCallPartitionedCall3mlp_item_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1529672
flatten_3/PartitionedCall£
concatenate/PartitionedCallPartitionedCall"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1529942
concatenate/PartitionedCall≠
layer1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0layer1_153776layer1_153778*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_1530312 
layer1/StatefulPartitionedCallц
*layer1/ActivityRegularizer/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer1_activity_regularizer_1526982,
*layer1/ActivityRegularizer/PartitionedCallЫ
 layer1/ActivityRegularizer/ShapeShape'layer1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer1/ActivityRegularizer/Shape™
.layer1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer1/ActivityRegularizer/strided_slice/stackЃ
0layer1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_2Д
(layer1/ActivityRegularizer/strided_sliceStridedSlice)layer1/ActivityRegularizer/Shape:output:07layer1/ActivityRegularizer/strided_slice/stack:output:09layer1/ActivityRegularizer/strided_slice/stack_1:output:09layer1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer1/ActivityRegularizer/strided_slice≠
layer1/ActivityRegularizer/CastCast1layer1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer1/ActivityRegularizer/Castќ
"layer1/ActivityRegularizer/truedivRealDiv3layer1/ActivityRegularizer/PartitionedCall:output:0#layer1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer1/ActivityRegularizer/truediv∞
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_153789layer2_153791*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_1531092 
layer2/StatefulPartitionedCallц
*layer2/ActivityRegularizer/PartitionedCallPartitionedCall'layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer2_activity_regularizer_1527232,
*layer2/ActivityRegularizer/PartitionedCallЫ
 layer2/ActivityRegularizer/ShapeShape'layer2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer2/ActivityRegularizer/Shape™
.layer2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer2/ActivityRegularizer/strided_slice/stackЃ
0layer2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_2Д
(layer2/ActivityRegularizer/strided_sliceStridedSlice)layer2/ActivityRegularizer/Shape:output:07layer2/ActivityRegularizer/strided_slice/stack:output:09layer2/ActivityRegularizer/strided_slice/stack_1:output:09layer2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer2/ActivityRegularizer/strided_slice≠
layer2/ActivityRegularizer/CastCast1layer2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer2/ActivityRegularizer/Castќ
"layer2/ActivityRegularizer/truedivRealDiv3layer2/ActivityRegularizer/PartitionedCall:output:0#layer2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer2/ActivityRegularizer/truedivѓ
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_153802layer3_153804*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_1531872 
layer3/StatefulPartitionedCallц
*layer3/ActivityRegularizer/PartitionedCallPartitionedCall'layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer3_activity_regularizer_1527482,
*layer3/ActivityRegularizer/PartitionedCallЫ
 layer3/ActivityRegularizer/ShapeShape'layer3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer3/ActivityRegularizer/Shape™
.layer3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer3/ActivityRegularizer/strided_slice/stackЃ
0layer3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_2Д
(layer3/ActivityRegularizer/strided_sliceStridedSlice)layer3/ActivityRegularizer/Shape:output:07layer3/ActivityRegularizer/strided_slice/stack:output:09layer3/ActivityRegularizer/strided_slice/stack_1:output:09layer3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer3/ActivityRegularizer/strided_slice≠
layer3/ActivityRegularizer/CastCast1layer3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer3/ActivityRegularizer/Castќ
"layer3/ActivityRegularizer/truedivRealDiv3layer3/ActivityRegularizer/PartitionedCall:output:0#layer3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer3/ActivityRegularizer/truedivѓ
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_153815layer4_153817*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_1532652 
layer4/StatefulPartitionedCallц
*layer4/ActivityRegularizer/PartitionedCallPartitionedCall'layer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer4_activity_regularizer_1527732,
*layer4/ActivityRegularizer/PartitionedCallЫ
 layer4/ActivityRegularizer/ShapeShape'layer4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer4/ActivityRegularizer/Shape™
.layer4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer4/ActivityRegularizer/strided_slice/stackЃ
0layer4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_2Д
(layer4/ActivityRegularizer/strided_sliceStridedSlice)layer4/ActivityRegularizer/Shape:output:07layer4/ActivityRegularizer/strided_slice/stack:output:09layer4/ActivityRegularizer/strided_slice/stack_1:output:09layer4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer4/ActivityRegularizer/strided_slice≠
layer4/ActivityRegularizer/CastCast1layer4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer4/ActivityRegularizer/Castќ
"layer4/ActivityRegularizer/truedivRealDiv3layer4/ActivityRegularizer/PartitionedCall:output:0#layer4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer4/ActivityRegularizer/truediv±
)mf_item_embedding/StatefulPartitionedCallStatefulPartitionedCall
item_inputmf_item_embedding_153828*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_item_embedding_layer_call_and_return_conditional_losses_1533532+
)mf_item_embedding/StatefulPartitionedCall±
)mf_user_embedding/StatefulPartitionedCallStatefulPartitionedCall
user_inputmf_user_embedding_153831*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_user_embedding_layer_call_and_return_conditional_losses_1534042+
)mf_user_embedding/StatefulPartitionedCallѓ
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_153834layer5_153836*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_1534452 
layer5/StatefulPartitionedCallц
*layer5/ActivityRegularizer/PartitionedCallPartitionedCall'layer5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer5_activity_regularizer_1527982,
*layer5/ActivityRegularizer/PartitionedCallЫ
 layer5/ActivityRegularizer/ShapeShape'layer5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer5/ActivityRegularizer/Shape™
.layer5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer5/ActivityRegularizer/strided_slice/stackЃ
0layer5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_2Д
(layer5/ActivityRegularizer/strided_sliceStridedSlice)layer5/ActivityRegularizer/Shape:output:07layer5/ActivityRegularizer/strided_slice/stack:output:09layer5/ActivityRegularizer/strided_slice/stack_1:output:09layer5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer5/ActivityRegularizer/strided_slice≠
layer5/ActivityRegularizer/CastCast1layer5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer5/ActivityRegularizer/Castќ
"layer5/ActivityRegularizer/truedivRealDiv3layer5/ActivityRegularizer/PartitionedCall:output:0#layer5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer5/ActivityRegularizer/truedivВ
flatten/PartitionedCallPartitionedCall2mf_user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1535132
flatten/PartitionedCallИ
flatten_1/PartitionedCallPartitionedCall2mf_item_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1535382
flatten_1/PartitionedCallШ
multiply/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *M
fHRF
D__inference_multiply_layer_call_and_return_conditional_losses_1535632
multiply/PartitionedCallѓ
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_153850layer6_153852*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_1536002 
layer6/StatefulPartitionedCallц
*layer6/ActivityRegularizer/PartitionedCallPartitionedCall'layer6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer6_activity_regularizer_1528232,
*layer6/ActivityRegularizer/PartitionedCallЫ
 layer6/ActivityRegularizer/ShapeShape'layer6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer6/ActivityRegularizer/Shape™
.layer6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer6/ActivityRegularizer/strided_slice/stackЃ
0layer6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_2Д
(layer6/ActivityRegularizer/strided_sliceStridedSlice)layer6/ActivityRegularizer/Shape:output:07layer6/ActivityRegularizer/strided_slice/stack:output:09layer6/ActivityRegularizer/strided_slice/stack_1:output:09layer6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer6/ActivityRegularizer/strided_slice≠
layer6/ActivityRegularizer/CastCast1layer6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer6/ActivityRegularizer/Castќ
"layer6/ActivityRegularizer/truedivRealDiv3layer6/ActivityRegularizer/PartitionedCall:output:0#layer6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer6/ActivityRegularizer/truediv≠
concatenate_1/PartitionedCallPartitionedCall!multiply/PartitionedCall:output:0'layer6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€И* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1536702
concatenate_1/PartitionedCallЃ
result/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0result_153864result_153866*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_1537072 
result/StatefulPartitionedCallё
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmlp_user_embedding_153770* 
_output_shapes
:
…А*
dtype02A
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpв
0mlp_user_embedding/embeddings/Regularizer/SquareSquareGmlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
…А22
0mlp_user_embedding/embeddings/Regularizer/Square≥
/mlp_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_user_embedding/embeddings/Regularizer/Constц
-mlp_user_embedding/embeddings/Regularizer/SumSum4mlp_user_embedding/embeddings/Regularizer/Square:y:08mlp_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/SumІ
/mlp_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_user_embedding/embeddings/Regularizer/mul/xш
-mlp_user_embedding/embeddings/Regularizer/mulMul8mlp_user_embedding/embeddings/Regularizer/mul/x:output:06mlp_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/mulЁ
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmlp_item_embedding_153767*
_output_shapes
:	А*
dtype02A
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpб
0mlp_item_embedding/embeddings/Regularizer/SquareSquareGmlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	А22
0mlp_item_embedding/embeddings/Regularizer/Square≥
/mlp_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_item_embedding/embeddings/Regularizer/Constц
-mlp_item_embedding/embeddings/Regularizer/SumSum4mlp_item_embedding/embeddings/Regularizer/Square:y:08mlp_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/SumІ
/mlp_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_item_embedding/embeddings/Regularizer/mul/xш
-mlp_item_embedding/embeddings/Regularizer/mulMul8mlp_item_embedding/embeddings/Regularizer/mul/x:output:06mlp_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/mulЏ
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmf_user_embedding_153831*
_output_shapes
:	…@*
dtype02@
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpё
/mf_user_embedding/embeddings/Regularizer/SquareSquareFmf_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	…@21
/mf_user_embedding/embeddings/Regularizer/Square±
.mf_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_user_embedding/embeddings/Regularizer/Constт
,mf_user_embedding/embeddings/Regularizer/SumSum3mf_user_embedding/embeddings/Regularizer/Square:y:07mf_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/Sum•
.mf_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_user_embedding/embeddings/Regularizer/mul/xф
,mf_user_embedding/embeddings/Regularizer/mulMul7mf_user_embedding/embeddings/Regularizer/mul/x:output:05mf_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/mulў
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmf_item_embedding_153828*
_output_shapes

:@*
dtype02@
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpЁ
/mf_item_embedding/embeddings/Regularizer/SquareSquareFmf_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@21
/mf_item_embedding/embeddings/Regularizer/Square±
.mf_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_item_embedding/embeddings/Regularizer/Constт
,mf_item_embedding/embeddings/Regularizer/SumSum3mf_item_embedding/embeddings/Regularizer/Square:y:07mf_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/Sum•
.mf_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_item_embedding/embeddings/Regularizer/mul/xф
,mf_item_embedding/embeddings/Regularizer/mulMul7mf_item_embedding/embeddings/Regularizer/mul/x:output:05mf_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/mulФ
IdentityIdentity'result/StatefulPartitionedCall:output:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЖ

Identity_1Identity&layer1/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1Ж

Identity_2Identity&layer2/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2Ж

Identity_3Identity&layer3/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3Ж

Identity_4Identity&layer4/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4Ж

Identity_5Identity&layer5/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_5Ж

Identity_6Identity&layer6/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_6"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€::::::::::::::::::2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall2@
layer6/StatefulPartitionedCalllayer6/StatefulPartitionedCall2V
)mf_item_embedding/StatefulPartitionedCall)mf_item_embedding/StatefulPartitionedCall2V
)mf_user_embedding/StatefulPartitionedCall)mf_user_embedding/StatefulPartitionedCall2X
*mlp_item_embedding/StatefulPartitionedCall*mlp_item_embedding/StatefulPartitionedCall2X
*mlp_user_embedding/StatefulPartitionedCall*mlp_user_embedding/StatefulPartitionedCall2@
result/StatefulPartitionedCallresult/StatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
user_input:SO
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
item_input
Б
В
&__inference_model_layer_call_fn_155056
inputs_0
inputs_1
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

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
	2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€: : : : : : *4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1544112
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
ё
y
3__inference_mlp_user_embedding_layer_call_fn_155085

inputs
unknown
identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_user_embedding_layer_call_and_return_conditional_losses_1529112
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≥
_
C__inference_flatten_layer_call_and_return_conditional_losses_155337

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ж

Ђ
F__inference_layer6_layer_call_and_return_all_conditional_losses_155427

inputs
unknown
	unknown_0
identity

identity_1ИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_1536002
StatefulPartitionedCallє
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer6_activity_regularizer_1528232
PartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≥
_
C__inference_flatten_layer_call_and_return_conditional_losses_153513

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
¶
n
D__inference_multiply_layer_call_and_return_conditional_losses_153563

inputs
inputs_1
identityV
mulMulinputsinputs_1*
T0*(
_output_shapes
:€€€€€€€€€А2
mul\
IdentityIdentitymul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:€€€€€€€€€А:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ё
y
3__inference_mlp_item_embedding_layer_call_fn_155114

inputs
unknown
identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_item_embedding_layer_call_and_return_conditional_losses_1528602
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¬
H
.__inference_layer2_activity_regularizer_152723
self
identityC
SquareSquareself*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
::> :

_output_shapes
:

_user_specified_nameself
Э
Й
M__inference_mf_user_embedding_layer_call_and_return_conditional_losses_153404

inputs
embedding_lookup_153392
identityИ]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_153392Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/153392*+
_output_shapes
:€€€€€€€€€@*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/153392*+
_output_shapes
:€€€€€€€€€@2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
embedding_lookup/Identity_1ў
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_153392*
_output_shapes
:	…@*
dtype02@
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpё
/mf_user_embedding/embeddings/Regularizer/SquareSquareFmf_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	…@21
/mf_user_embedding/embeddings/Regularizer/Square±
.mf_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_user_embedding/embeddings/Regularizer/Constт
,mf_user_embedding/embeddings/Regularizer/SumSum3mf_user_embedding/embeddings/Regularizer/Square:y:07mf_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/Sum•
.mf_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_user_embedding/embeddings/Regularizer/mul/xф
,mf_user_embedding/embeddings/Regularizer/mulMul7mf_user_embedding/embeddings/Regularizer/mul/x:output:05mf_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/mul|
IdentityIdentity$embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Э
Й
M__inference_mf_user_embedding_layer_call_and_return_conditional_losses_155264

inputs
embedding_lookup_155252
identityИ]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_155252Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/155252*+
_output_shapes
:€€€€€€€€€@*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/155252*+
_output_shapes
:€€€€€€€€€@2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
embedding_lookup/Identity_1ў
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_155252*
_output_shapes
:	…@*
dtype02@
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpё
/mf_user_embedding/embeddings/Regularizer/SquareSquareFmf_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	…@21
/mf_user_embedding/embeddings/Regularizer/Square±
.mf_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_user_embedding/embeddings/Regularizer/Constт
,mf_user_embedding/embeddings/Regularizer/SumSum3mf_user_embedding/embeddings/Regularizer/Square:y:07mf_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/Sum•
.mf_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_user_embedding/embeddings/Regularizer/mul/xф
,mf_user_embedding/embeddings/Regularizer/mulMul7mf_user_embedding/embeddings/Regularizer/mul/x:output:05mf_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/mul|
IdentityIdentity$embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ј
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_152967

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*+
_input_shapes
:€€€€€€€€€А:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ц
}
__inference_loss_fn_0_155481L
Hmlp_user_embedding_embeddings_regularizer_square_readvariableop_resource
identityИН
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpHmlp_user_embedding_embeddings_regularizer_square_readvariableop_resource* 
_output_shapes
:
…А*
dtype02A
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpв
0mlp_user_embedding/embeddings/Regularizer/SquareSquareGmlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
…А22
0mlp_user_embedding/embeddings/Regularizer/Square≥
/mlp_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_user_embedding/embeddings/Regularizer/Constц
-mlp_user_embedding/embeddings/Regularizer/SumSum4mlp_user_embedding/embeddings/Regularizer/Square:y:08mlp_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/SumІ
/mlp_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_user_embedding/embeddings/Regularizer/mul/xш
-mlp_user_embedding/embeddings/Regularizer/mulMul8mlp_user_embedding/embeddings/Regularizer/mul/x:output:06mlp_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/mult
IdentityIdentity1mlp_user_embedding/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:
µ
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_153538

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ы
Й
M__inference_mf_item_embedding_layer_call_and_return_conditional_losses_155293

inputs
embedding_lookup_155281
identityИ]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_155281Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/155281*+
_output_shapes
:€€€€€€€€€@*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/155281*+
_output_shapes
:€€€€€€€€€@2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
embedding_lookup/Identity_1Ў
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_155281*
_output_shapes

:@*
dtype02@
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpЁ
/mf_item_embedding/embeddings/Regularizer/SquareSquareFmf_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@21
/mf_item_embedding/embeddings/Regularizer/Square±
.mf_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_item_embedding/embeddings/Regularizer/Constт
,mf_item_embedding/embeddings/Regularizer/SumSum3mf_item_embedding/embeddings/Regularizer/Square:y:07mf_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/Sum•
.mf_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_item_embedding/embeddings/Regularizer/mul/xф
,mf_item_embedding/embeddings/Regularizer/mulMul7mf_item_embedding/embeddings/Regularizer/mul/x:output:05mf_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/mul|
IdentityIdentity$embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
∞
™
B__inference_layer1_layer_call_and_return_conditional_losses_153031

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИП
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:::P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬
s
G__inference_concatenate_layer_call_and_return_conditional_losses_155143
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisВ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:€€€€€€€€€А:€€€€€€€€€А:R N
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/1
Б
В
&__inference_model_layer_call_fn_155008
inputs_0
inputs_1
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

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
	2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€: : : : : : *4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1541782
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
ж

Ђ
F__inference_layer5_layer_call_and_return_all_conditional_losses_155384

inputs
unknown
	unknown_0
identity

identity_1ИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_1534452
StatefulPartitionedCallє
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer5_activity_regularizer_1527982
PartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
І
X
,__inference_concatenate_layer_call_fn_155149
inputs_0
inputs_1
identity„
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1529942
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:€€€€€€€€€А:€€€€€€€€€А:R N
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/1
©
Z
.__inference_concatenate_1_layer_call_fn_155440
inputs_0
inputs_1
identityў
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€И* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1536702
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€И2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€А:€€€€€€€€€:R N
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
ё
|
__inference_loss_fn_3_155544K
Gmf_item_embedding_embeddings_regularizer_square_readvariableop_resource
identityИИ
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpGmf_item_embedding_embeddings_regularizer_square_readvariableop_resource*
_output_shapes

:@*
dtype02@
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpЁ
/mf_item_embedding/embeddings/Regularizer/SquareSquareFmf_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@21
/mf_item_embedding/embeddings/Regularizer/Square±
.mf_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_item_embedding/embeddings/Regularizer/Constт
,mf_item_embedding/embeddings/Regularizer/SumSum3mf_item_embedding/embeddings/Regularizer/Square:y:07mf_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/Sum•
.mf_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_item_embedding/embeddings/Regularizer/mul/xф
,mf_item_embedding/embeddings/Regularizer/mulMul7mf_item_embedding/embeddings/Regularizer/mul/x:output:05mf_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/muls
IdentityIdentity0mf_item_embedding/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:
¬
H
.__inference_layer1_activity_regularizer_152698
self
identityC
SquareSquareself*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
::> :

_output_shapes
:

_user_specified_nameself
≥
К
N__inference_mlp_item_embedding_layer_call_and_return_conditional_losses_152860

inputs
embedding_lookup_152848
identityИ]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castю
embedding_lookupResourceGatherembedding_lookup_152848Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/152848*,
_output_shapes
:€€€€€€€€€А*
dtype02
embedding_lookupо
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/152848*,
_output_shapes
:€€€€€€€€€А2
embedding_lookup/Identity°
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
embedding_lookup/Identity_1џ
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_152848*
_output_shapes
:	А*
dtype02A
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpб
0mlp_item_embedding/embeddings/Regularizer/SquareSquareGmlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	А22
0mlp_item_embedding/embeddings/Regularizer/Square≥
/mlp_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_item_embedding/embeddings/Regularizer/Constц
-mlp_item_embedding/embeddings/Regularizer/SumSum4mlp_item_embedding/embeddings/Regularizer/Square:y:08mlp_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/SumІ
/mlp_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_item_embedding/embeddings/Regularizer/mul/xш
-mlp_item_embedding/embeddings/Regularizer/mulMul8mlp_item_embedding/embeddings/Regularizer/mul/x:output:06mlp_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/mul}
IdentityIdentity$embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
’Й
Ю!
"__inference__traced_restore_155956
file_prefix2
.assignvariableop_mlp_user_embedding_embeddings4
0assignvariableop_1_mlp_item_embedding_embeddings$
 assignvariableop_2_layer1_kernel"
assignvariableop_3_layer1_bias$
 assignvariableop_4_layer2_kernel"
assignvariableop_5_layer2_bias$
 assignvariableop_6_layer3_kernel"
assignvariableop_7_layer3_bias3
/assignvariableop_8_mf_user_embedding_embeddings3
/assignvariableop_9_mf_item_embedding_embeddings%
!assignvariableop_10_layer4_kernel#
assignvariableop_11_layer4_bias%
!assignvariableop_12_layer5_kernel#
assignvariableop_13_layer5_bias%
!assignvariableop_14_layer6_kernel#
assignvariableop_15_layer6_bias%
!assignvariableop_16_result_kernel#
assignvariableop_17_result_bias!
assignvariableop_18_adam_iter#
assignvariableop_19_adam_beta_1#
assignvariableop_20_adam_beta_2"
assignvariableop_21_adam_decay*
&assignvariableop_22_adam_learning_rate
assignvariableop_23_total
assignvariableop_24_count
assignvariableop_25_total_1
assignvariableop_26_count_1<
8assignvariableop_27_adam_mlp_user_embedding_embeddings_m<
8assignvariableop_28_adam_mlp_item_embedding_embeddings_m,
(assignvariableop_29_adam_layer1_kernel_m*
&assignvariableop_30_adam_layer1_bias_m,
(assignvariableop_31_adam_layer2_kernel_m*
&assignvariableop_32_adam_layer2_bias_m,
(assignvariableop_33_adam_layer3_kernel_m*
&assignvariableop_34_adam_layer3_bias_m;
7assignvariableop_35_adam_mf_user_embedding_embeddings_m;
7assignvariableop_36_adam_mf_item_embedding_embeddings_m,
(assignvariableop_37_adam_layer4_kernel_m*
&assignvariableop_38_adam_layer4_bias_m,
(assignvariableop_39_adam_layer5_kernel_m*
&assignvariableop_40_adam_layer5_bias_m,
(assignvariableop_41_adam_layer6_kernel_m*
&assignvariableop_42_adam_layer6_bias_m,
(assignvariableop_43_adam_result_kernel_m*
&assignvariableop_44_adam_result_bias_m<
8assignvariableop_45_adam_mlp_user_embedding_embeddings_v<
8assignvariableop_46_adam_mlp_item_embedding_embeddings_v,
(assignvariableop_47_adam_layer1_kernel_v*
&assignvariableop_48_adam_layer1_bias_v,
(assignvariableop_49_adam_layer2_kernel_v*
&assignvariableop_50_adam_layer2_bias_v,
(assignvariableop_51_adam_layer3_kernel_v*
&assignvariableop_52_adam_layer3_bias_v;
7assignvariableop_53_adam_mf_user_embedding_embeddings_v;
7assignvariableop_54_adam_mf_item_embedding_embeddings_v,
(assignvariableop_55_adam_layer4_kernel_v*
&assignvariableop_56_adam_layer4_bias_v,
(assignvariableop_57_adam_layer5_kernel_v*
&assignvariableop_58_adam_layer5_bias_v,
(assignvariableop_59_adam_layer6_kernel_v*
&assignvariableop_60_adam_layer6_bias_v,
(assignvariableop_61_adam_result_kernel_v*
&assignvariableop_62_adam_result_bias_v
identity_64ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9∞$
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*Љ#
value≤#Bѓ#@B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesС
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*Х
valueЛBИ@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesо
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ц
_output_shapesГ
А::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*N
dtypesD
B2@	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity≠
AssignVariableOpAssignVariableOp.assignvariableop_mlp_user_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1µ
AssignVariableOp_1AssignVariableOp0assignvariableop_1_mlp_item_embedding_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2•
AssignVariableOp_2AssignVariableOp assignvariableop_2_layer1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3£
AssignVariableOp_3AssignVariableOpassignvariableop_3_layer1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4•
AssignVariableOp_4AssignVariableOp assignvariableop_4_layer2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_layer2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6•
AssignVariableOp_6AssignVariableOp assignvariableop_6_layer3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7£
AssignVariableOp_7AssignVariableOpassignvariableop_7_layer3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8і
AssignVariableOp_8AssignVariableOp/assignvariableop_8_mf_user_embedding_embeddingsIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9і
AssignVariableOp_9AssignVariableOp/assignvariableop_9_mf_item_embedding_embeddingsIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10©
AssignVariableOp_10AssignVariableOp!assignvariableop_10_layer4_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11І
AssignVariableOp_11AssignVariableOpassignvariableop_11_layer4_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12©
AssignVariableOp_12AssignVariableOp!assignvariableop_12_layer5_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13І
AssignVariableOp_13AssignVariableOpassignvariableop_13_layer5_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14©
AssignVariableOp_14AssignVariableOp!assignvariableop_14_layer6_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15І
AssignVariableOp_15AssignVariableOpassignvariableop_15_layer6_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16©
AssignVariableOp_16AssignVariableOp!assignvariableop_16_result_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17І
AssignVariableOp_17AssignVariableOpassignvariableop_17_result_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_18•
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19І
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20І
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¶
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ѓ
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23°
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25£
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26£
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27ј
AssignVariableOp_27AssignVariableOp8assignvariableop_27_adam_mlp_user_embedding_embeddings_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28ј
AssignVariableOp_28AssignVariableOp8assignvariableop_28_adam_mlp_item_embedding_embeddings_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29∞
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_layer1_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ѓ
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_layer1_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31∞
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_layer2_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Ѓ
AssignVariableOp_32AssignVariableOp&assignvariableop_32_adam_layer2_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33∞
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_layer3_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ѓ
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_layer3_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35њ
AssignVariableOp_35AssignVariableOp7assignvariableop_35_adam_mf_user_embedding_embeddings_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36њ
AssignVariableOp_36AssignVariableOp7assignvariableop_36_adam_mf_item_embedding_embeddings_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37∞
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_layer4_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ѓ
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_layer4_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39∞
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_layer5_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Ѓ
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_layer5_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41∞
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_layer6_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Ѓ
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_layer6_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43∞
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_result_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Ѓ
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_result_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45ј
AssignVariableOp_45AssignVariableOp8assignvariableop_45_adam_mlp_user_embedding_embeddings_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46ј
AssignVariableOp_46AssignVariableOp8assignvariableop_46_adam_mlp_item_embedding_embeddings_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47∞
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_layer1_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Ѓ
AssignVariableOp_48AssignVariableOp&assignvariableop_48_adam_layer1_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49∞
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_layer2_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Ѓ
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_layer2_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51∞
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_layer3_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Ѓ
AssignVariableOp_52AssignVariableOp&assignvariableop_52_adam_layer3_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53њ
AssignVariableOp_53AssignVariableOp7assignvariableop_53_adam_mf_user_embedding_embeddings_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54њ
AssignVariableOp_54AssignVariableOp7assignvariableop_54_adam_mf_item_embedding_embeddings_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55∞
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_layer4_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56Ѓ
AssignVariableOp_56AssignVariableOp&assignvariableop_56_adam_layer4_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57∞
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_layer5_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58Ѓ
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_layer5_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59∞
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_layer6_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60Ѓ
AssignVariableOp_60AssignVariableOp&assignvariableop_60_adam_layer6_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61∞
AssignVariableOp_61AssignVariableOp(assignvariableop_61_adam_result_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62Ѓ
AssignVariableOp_62AssignVariableOp&assignvariableop_62_adam_result_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_629
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp»
Identity_63Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_63ї
Identity_64IdentityIdentity_63:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_64"#
identity_64Identity_64:output:0*У
_input_shapesБ
ю: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ј
a
E__inference_flatten_3_layer_call_and_return_conditional_losses_155131

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*+
_input_shapes
:€€€€€€€€€А:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ё
|
'__inference_layer3_layer_call_fn_155231

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_1531872
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
а
|
'__inference_layer1_layer_call_fn_155169

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_1530312
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Цю
п
A__inference_model_layer_call_and_return_conditional_losses_154960
inputs_0
inputs_1.
*mlp_item_embedding_embedding_lookup_154772.
*mlp_user_embedding_embedding_lookup_154778)
%layer1_matmul_readvariableop_resource*
&layer1_biasadd_readvariableop_resource)
%layer2_matmul_readvariableop_resource*
&layer2_biasadd_readvariableop_resource)
%layer3_matmul_readvariableop_resource*
&layer3_biasadd_readvariableop_resource)
%layer4_matmul_readvariableop_resource*
&layer4_biasadd_readvariableop_resource-
)mf_item_embedding_embedding_lookup_154866-
)mf_user_embedding_embedding_lookup_154872)
%layer5_matmul_readvariableop_resource*
&layer5_biasadd_readvariableop_resource)
%layer6_matmul_readvariableop_resource*
&layer6_biasadd_readvariableop_resource)
%result_matmul_readvariableop_resource*
&result_biasadd_readvariableop_resource
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИЕ
mlp_item_embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
mlp_item_embedding/CastЁ
#mlp_item_embedding/embedding_lookupResourceGather*mlp_item_embedding_embedding_lookup_154772mlp_item_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*=
_class3
1/loc:@mlp_item_embedding/embedding_lookup/154772*,
_output_shapes
:€€€€€€€€€А*
dtype02%
#mlp_item_embedding/embedding_lookupЇ
,mlp_item_embedding/embedding_lookup/IdentityIdentity,mlp_item_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@mlp_item_embedding/embedding_lookup/154772*,
_output_shapes
:€€€€€€€€€А2.
,mlp_item_embedding/embedding_lookup/IdentityЏ
.mlp_item_embedding/embedding_lookup/Identity_1Identity5mlp_item_embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А20
.mlp_item_embedding/embedding_lookup/Identity_1Е
mlp_user_embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
mlp_user_embedding/CastЁ
#mlp_user_embedding/embedding_lookupResourceGather*mlp_user_embedding_embedding_lookup_154778mlp_user_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*=
_class3
1/loc:@mlp_user_embedding/embedding_lookup/154778*,
_output_shapes
:€€€€€€€€€А*
dtype02%
#mlp_user_embedding/embedding_lookupЇ
,mlp_user_embedding/embedding_lookup/IdentityIdentity,mlp_user_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@mlp_user_embedding/embedding_lookup/154778*,
_output_shapes
:€€€€€€€€€А2.
,mlp_user_embedding/embedding_lookup/IdentityЏ
.mlp_user_embedding/embedding_lookup/Identity_1Identity5mlp_user_embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А20
.mlp_user_embedding/embedding_lookup/Identity_1s
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_2/ConstЈ
flatten_2/ReshapeReshape7mlp_user_embedding/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_2/Reshapes
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_3/ConstЈ
flatten_3/ReshapeReshape7mlp_item_embedding/embedding_lookup/Identity_1:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_3/Reshapet
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis 
concatenate/concatConcatV2flatten_2/Reshape:output:0flatten_3/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А2
concatenate/concat§
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
layer1/MatMul/ReadVariableOpЮ
layer1/MatMulMatMulconcatenate/concat:output:0$layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer1/MatMulҐ
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
layer1/BiasAdd/ReadVariableOpЮ
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer1/BiasAddn
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer1/ReluЮ
!layer1/ActivityRegularizer/SquareSquarelayer1/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!layer1/ActivityRegularizer/SquareХ
 layer1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer1/ActivityRegularizer/ConstЇ
layer1/ActivityRegularizer/SumSum%layer1/ActivityRegularizer/Square:y:0)layer1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer1/ActivityRegularizer/SumЙ
 layer1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer1/ActivityRegularizer/mul/xЉ
layer1/ActivityRegularizer/mulMul)layer1/ActivityRegularizer/mul/x:output:0'layer1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer1/ActivityRegularizer/mulН
 layer1/ActivityRegularizer/ShapeShapelayer1/Relu:activations:0*
T0*
_output_shapes
:2"
 layer1/ActivityRegularizer/Shape™
.layer1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer1/ActivityRegularizer/strided_slice/stackЃ
0layer1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_2Д
(layer1/ActivityRegularizer/strided_sliceStridedSlice)layer1/ActivityRegularizer/Shape:output:07layer1/ActivityRegularizer/strided_slice/stack:output:09layer1/ActivityRegularizer/strided_slice/stack_1:output:09layer1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer1/ActivityRegularizer/strided_slice≠
layer1/ActivityRegularizer/CastCast1layer1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer1/ActivityRegularizer/Castљ
"layer1/ActivityRegularizer/truedivRealDiv"layer1/ActivityRegularizer/mul:z:0#layer1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer1/ActivityRegularizer/truediv§
layer2/MatMul/ReadVariableOpReadVariableOp%layer2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
layer2/MatMul/ReadVariableOpЬ
layer2/MatMulMatMullayer1/Relu:activations:0$layer2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer2/MatMulҐ
layer2/BiasAdd/ReadVariableOpReadVariableOp&layer2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
layer2/BiasAdd/ReadVariableOpЮ
layer2/BiasAddBiasAddlayer2/MatMul:product:0%layer2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer2/BiasAddn
layer2/ReluRelulayer2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer2/ReluЮ
!layer2/ActivityRegularizer/SquareSquarelayer2/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!layer2/ActivityRegularizer/SquareХ
 layer2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer2/ActivityRegularizer/ConstЇ
layer2/ActivityRegularizer/SumSum%layer2/ActivityRegularizer/Square:y:0)layer2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer2/ActivityRegularizer/SumЙ
 layer2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer2/ActivityRegularizer/mul/xЉ
layer2/ActivityRegularizer/mulMul)layer2/ActivityRegularizer/mul/x:output:0'layer2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer2/ActivityRegularizer/mulН
 layer2/ActivityRegularizer/ShapeShapelayer2/Relu:activations:0*
T0*
_output_shapes
:2"
 layer2/ActivityRegularizer/Shape™
.layer2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer2/ActivityRegularizer/strided_slice/stackЃ
0layer2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_2Д
(layer2/ActivityRegularizer/strided_sliceStridedSlice)layer2/ActivityRegularizer/Shape:output:07layer2/ActivityRegularizer/strided_slice/stack:output:09layer2/ActivityRegularizer/strided_slice/stack_1:output:09layer2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer2/ActivityRegularizer/strided_slice≠
layer2/ActivityRegularizer/CastCast1layer2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer2/ActivityRegularizer/Castљ
"layer2/ActivityRegularizer/truedivRealDiv"layer2/ActivityRegularizer/mul:z:0#layer2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer2/ActivityRegularizer/truediv£
layer3/MatMul/ReadVariableOpReadVariableOp%layer3_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
layer3/MatMul/ReadVariableOpЫ
layer3/MatMulMatMullayer2/Relu:activations:0$layer3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
layer3/MatMul°
layer3/BiasAdd/ReadVariableOpReadVariableOp&layer3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
layer3/BiasAdd/ReadVariableOpЭ
layer3/BiasAddBiasAddlayer3/MatMul:product:0%layer3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
layer3/BiasAddm
layer3/ReluRelulayer3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
layer3/ReluЭ
!layer3/ActivityRegularizer/SquareSquarelayer3/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@2#
!layer3/ActivityRegularizer/SquareХ
 layer3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer3/ActivityRegularizer/ConstЇ
layer3/ActivityRegularizer/SumSum%layer3/ActivityRegularizer/Square:y:0)layer3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer3/ActivityRegularizer/SumЙ
 layer3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer3/ActivityRegularizer/mul/xЉ
layer3/ActivityRegularizer/mulMul)layer3/ActivityRegularizer/mul/x:output:0'layer3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer3/ActivityRegularizer/mulН
 layer3/ActivityRegularizer/ShapeShapelayer3/Relu:activations:0*
T0*
_output_shapes
:2"
 layer3/ActivityRegularizer/Shape™
.layer3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer3/ActivityRegularizer/strided_slice/stackЃ
0layer3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_2Д
(layer3/ActivityRegularizer/strided_sliceStridedSlice)layer3/ActivityRegularizer/Shape:output:07layer3/ActivityRegularizer/strided_slice/stack:output:09layer3/ActivityRegularizer/strided_slice/stack_1:output:09layer3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer3/ActivityRegularizer/strided_slice≠
layer3/ActivityRegularizer/CastCast1layer3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer3/ActivityRegularizer/Castљ
"layer3/ActivityRegularizer/truedivRealDiv"layer3/ActivityRegularizer/mul:z:0#layer3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer3/ActivityRegularizer/truedivҐ
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
layer4/MatMul/ReadVariableOpЫ
layer4/MatMulMatMullayer3/Relu:activations:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
layer4/MatMul°
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
layer4/BiasAdd/ReadVariableOpЭ
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
layer4/BiasAddm
layer4/ReluRelulayer4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
layer4/ReluЭ
!layer4/ActivityRegularizer/SquareSquarelayer4/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!layer4/ActivityRegularizer/SquareХ
 layer4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer4/ActivityRegularizer/ConstЇ
layer4/ActivityRegularizer/SumSum%layer4/ActivityRegularizer/Square:y:0)layer4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer4/ActivityRegularizer/SumЙ
 layer4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer4/ActivityRegularizer/mul/xЉ
layer4/ActivityRegularizer/mulMul)layer4/ActivityRegularizer/mul/x:output:0'layer4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer4/ActivityRegularizer/mulН
 layer4/ActivityRegularizer/ShapeShapelayer4/Relu:activations:0*
T0*
_output_shapes
:2"
 layer4/ActivityRegularizer/Shape™
.layer4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer4/ActivityRegularizer/strided_slice/stackЃ
0layer4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_2Д
(layer4/ActivityRegularizer/strided_sliceStridedSlice)layer4/ActivityRegularizer/Shape:output:07layer4/ActivityRegularizer/strided_slice/stack:output:09layer4/ActivityRegularizer/strided_slice/stack_1:output:09layer4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer4/ActivityRegularizer/strided_slice≠
layer4/ActivityRegularizer/CastCast1layer4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer4/ActivityRegularizer/Castљ
"layer4/ActivityRegularizer/truedivRealDiv"layer4/ActivityRegularizer/mul:z:0#layer4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer4/ActivityRegularizer/truedivГ
mf_item_embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
mf_item_embedding/Cast„
"mf_item_embedding/embedding_lookupResourceGather)mf_item_embedding_embedding_lookup_154866mf_item_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*<
_class2
0.loc:@mf_item_embedding/embedding_lookup/154866*+
_output_shapes
:€€€€€€€€€@*
dtype02$
"mf_item_embedding/embedding_lookupµ
+mf_item_embedding/embedding_lookup/IdentityIdentity+mf_item_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*<
_class2
0.loc:@mf_item_embedding/embedding_lookup/154866*+
_output_shapes
:€€€€€€€€€@2-
+mf_item_embedding/embedding_lookup/Identity÷
-mf_item_embedding/embedding_lookup/Identity_1Identity4mf_item_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2/
-mf_item_embedding/embedding_lookup/Identity_1Г
mf_user_embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
mf_user_embedding/Cast„
"mf_user_embedding/embedding_lookupResourceGather)mf_user_embedding_embedding_lookup_154872mf_user_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*<
_class2
0.loc:@mf_user_embedding/embedding_lookup/154872*+
_output_shapes
:€€€€€€€€€@*
dtype02$
"mf_user_embedding/embedding_lookupµ
+mf_user_embedding/embedding_lookup/IdentityIdentity+mf_user_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*<
_class2
0.loc:@mf_user_embedding/embedding_lookup/154872*+
_output_shapes
:€€€€€€€€€@2-
+mf_user_embedding/embedding_lookup/Identity÷
-mf_user_embedding/embedding_lookup/Identity_1Identity4mf_user_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2/
-mf_user_embedding/embedding_lookup/Identity_1Ґ
layer5/MatMul/ReadVariableOpReadVariableOp%layer5_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
layer5/MatMul/ReadVariableOpЫ
layer5/MatMulMatMullayer4/Relu:activations:0$layer5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer5/MatMul°
layer5/BiasAdd/ReadVariableOpReadVariableOp&layer5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
layer5/BiasAdd/ReadVariableOpЭ
layer5/BiasAddBiasAddlayer5/MatMul:product:0%layer5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer5/BiasAddm
layer5/ReluRelulayer5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer5/ReluЭ
!layer5/ActivityRegularizer/SquareSquarelayer5/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!layer5/ActivityRegularizer/SquareХ
 layer5/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer5/ActivityRegularizer/ConstЇ
layer5/ActivityRegularizer/SumSum%layer5/ActivityRegularizer/Square:y:0)layer5/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer5/ActivityRegularizer/SumЙ
 layer5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer5/ActivityRegularizer/mul/xЉ
layer5/ActivityRegularizer/mulMul)layer5/ActivityRegularizer/mul/x:output:0'layer5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer5/ActivityRegularizer/mulН
 layer5/ActivityRegularizer/ShapeShapelayer5/Relu:activations:0*
T0*
_output_shapes
:2"
 layer5/ActivityRegularizer/Shape™
.layer5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer5/ActivityRegularizer/strided_slice/stackЃ
0layer5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_2Д
(layer5/ActivityRegularizer/strided_sliceStridedSlice)layer5/ActivityRegularizer/Shape:output:07layer5/ActivityRegularizer/strided_slice/stack:output:09layer5/ActivityRegularizer/strided_slice/stack_1:output:09layer5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer5/ActivityRegularizer/strided_slice≠
layer5/ActivityRegularizer/CastCast1layer5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer5/ActivityRegularizer/Castљ
"layer5/ActivityRegularizer/truedivRealDiv"layer5/ActivityRegularizer/mul:z:0#layer5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer5/ActivityRegularizer/truedivo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
flatten/Const∞
flatten/ReshapeReshape6mf_user_embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten/Reshapes
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
flatten_1/Constґ
flatten_1/ReshapeReshape6mf_item_embedding/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_1/ReshapeМ
multiply/mulMulflatten/Reshape:output:0flatten_1/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
multiply/mulҐ
layer6/MatMul/ReadVariableOpReadVariableOp%layer6_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
layer6/MatMul/ReadVariableOpЫ
layer6/MatMulMatMullayer5/Relu:activations:0$layer6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer6/MatMul°
layer6/BiasAdd/ReadVariableOpReadVariableOp&layer6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
layer6/BiasAdd/ReadVariableOpЭ
layer6/BiasAddBiasAddlayer6/MatMul:product:0%layer6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer6/BiasAddm
layer6/ReluRelulayer6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer6/ReluЭ
!layer6/ActivityRegularizer/SquareSquarelayer6/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!layer6/ActivityRegularizer/SquareХ
 layer6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer6/ActivityRegularizer/ConstЇ
layer6/ActivityRegularizer/SumSum%layer6/ActivityRegularizer/Square:y:0)layer6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer6/ActivityRegularizer/SumЙ
 layer6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer6/ActivityRegularizer/mul/xЉ
layer6/ActivityRegularizer/mulMul)layer6/ActivityRegularizer/mul/x:output:0'layer6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer6/ActivityRegularizer/mulН
 layer6/ActivityRegularizer/ShapeShapelayer6/Relu:activations:0*
T0*
_output_shapes
:2"
 layer6/ActivityRegularizer/Shape™
.layer6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer6/ActivityRegularizer/strided_slice/stackЃ
0layer6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_2Д
(layer6/ActivityRegularizer/strided_sliceStridedSlice)layer6/ActivityRegularizer/Shape:output:07layer6/ActivityRegularizer/strided_slice/stack:output:09layer6/ActivityRegularizer/strided_slice/stack_1:output:09layer6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer6/ActivityRegularizer/strided_slice≠
layer6/ActivityRegularizer/CastCast1layer6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer6/ActivityRegularizer/Castљ
"layer6/ActivityRegularizer/truedivRealDiv"layer6/ActivityRegularizer/mul:z:0#layer6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer6/ActivityRegularizer/truedivx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis≈
concatenate_1/concatConcatV2multiply/mul:z:0layer6/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€И2
concatenate_1/concat£
result/MatMul/ReadVariableOpReadVariableOp%result_matmul_readvariableop_resource*
_output_shapes
:	И*
dtype02
result/MatMul/ReadVariableOpЯ
result/MatMulMatMulconcatenate_1/concat:output:0$result/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
result/MatMul°
result/BiasAdd/ReadVariableOpReadVariableOp&result_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
result/BiasAdd/ReadVariableOpЭ
result/BiasAddBiasAddresult/MatMul:product:0%result/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
result/BiasAddv
result/SigmoidSigmoidresult/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
result/Sigmoidп
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*mlp_user_embedding_embedding_lookup_154778* 
_output_shapes
:
…А*
dtype02A
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpв
0mlp_user_embedding/embeddings/Regularizer/SquareSquareGmlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
…А22
0mlp_user_embedding/embeddings/Regularizer/Square≥
/mlp_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_user_embedding/embeddings/Regularizer/Constц
-mlp_user_embedding/embeddings/Regularizer/SumSum4mlp_user_embedding/embeddings/Regularizer/Square:y:08mlp_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/SumІ
/mlp_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_user_embedding/embeddings/Regularizer/mul/xш
-mlp_user_embedding/embeddings/Regularizer/mulMul8mlp_user_embedding/embeddings/Regularizer/mul/x:output:06mlp_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/mulо
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*mlp_item_embedding_embedding_lookup_154772*
_output_shapes
:	А*
dtype02A
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpб
0mlp_item_embedding/embeddings/Regularizer/SquareSquareGmlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	А22
0mlp_item_embedding/embeddings/Regularizer/Square≥
/mlp_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_item_embedding/embeddings/Regularizer/Constц
-mlp_item_embedding/embeddings/Regularizer/SumSum4mlp_item_embedding/embeddings/Regularizer/Square:y:08mlp_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/SumІ
/mlp_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_item_embedding/embeddings/Regularizer/mul/xш
-mlp_item_embedding/embeddings/Regularizer/mulMul8mlp_item_embedding/embeddings/Regularizer/mul/x:output:06mlp_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/mulл
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp)mf_user_embedding_embedding_lookup_154872*
_output_shapes
:	…@*
dtype02@
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpё
/mf_user_embedding/embeddings/Regularizer/SquareSquareFmf_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	…@21
/mf_user_embedding/embeddings/Regularizer/Square±
.mf_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_user_embedding/embeddings/Regularizer/Constт
,mf_user_embedding/embeddings/Regularizer/SumSum3mf_user_embedding/embeddings/Regularizer/Square:y:07mf_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/Sum•
.mf_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_user_embedding/embeddings/Regularizer/mul/xф
,mf_user_embedding/embeddings/Regularizer/mulMul7mf_user_embedding/embeddings/Regularizer/mul/x:output:05mf_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/mulк
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp)mf_item_embedding_embedding_lookup_154866*
_output_shapes

:@*
dtype02@
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpЁ
/mf_item_embedding/embeddings/Regularizer/SquareSquareFmf_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@21
/mf_item_embedding/embeddings/Regularizer/Square±
.mf_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_item_embedding/embeddings/Regularizer/Constт
,mf_item_embedding/embeddings/Regularizer/SumSum3mf_item_embedding/embeddings/Regularizer/Square:y:07mf_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/Sum•
.mf_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_item_embedding/embeddings/Regularizer/mul/xф
,mf_item_embedding/embeddings/Regularizer/mulMul7mf_item_embedding/embeddings/Regularizer/mul/x:output:05mf_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/mulf
IdentityIdentityresult/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identitym

Identity_1Identity&layer1/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_1m

Identity_2Identity&layer2/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_2m

Identity_3Identity&layer3/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_3m

Identity_4Identity&layer4/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_4m

Identity_5Identity&layer5/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_5m

Identity_6Identity&layer6/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_6"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€:::::::::::::::::::Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
Чй
л
A__inference_model_layer_call_and_return_conditional_losses_154178

inputs
inputs_1
mlp_item_embedding_154045
mlp_user_embedding_154048
layer1_154054
layer1_154056
layer2_154067
layer2_154069
layer3_154080
layer3_154082
layer4_154093
layer4_154095
mf_item_embedding_154106
mf_user_embedding_154109
layer5_154112
layer5_154114
layer6_154128
layer6_154130
result_154142
result_154144
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐlayer1/StatefulPartitionedCallҐlayer2/StatefulPartitionedCallҐlayer3/StatefulPartitionedCallҐlayer4/StatefulPartitionedCallҐlayer5/StatefulPartitionedCallҐlayer6/StatefulPartitionedCallҐ)mf_item_embedding/StatefulPartitionedCallҐ)mf_user_embedding/StatefulPartitionedCallҐ*mlp_item_embedding/StatefulPartitionedCallҐ*mlp_user_embedding/StatefulPartitionedCallҐresult/StatefulPartitionedCallі
*mlp_item_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1mlp_item_embedding_154045*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_item_embedding_layer_call_and_return_conditional_losses_1528602,
*mlp_item_embedding/StatefulPartitionedCall≤
*mlp_user_embedding/StatefulPartitionedCallStatefulPartitionedCallinputsmlp_user_embedding_154048*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_user_embedding_layer_call_and_return_conditional_losses_1529112,
*mlp_user_embedding/StatefulPartitionedCallЙ
flatten_2/PartitionedCallPartitionedCall3mlp_user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1529422
flatten_2/PartitionedCallЙ
flatten_3/PartitionedCallPartitionedCall3mlp_item_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1529672
flatten_3/PartitionedCall£
concatenate/PartitionedCallPartitionedCall"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1529942
concatenate/PartitionedCall≠
layer1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0layer1_154054layer1_154056*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_1530312 
layer1/StatefulPartitionedCallц
*layer1/ActivityRegularizer/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer1_activity_regularizer_1526982,
*layer1/ActivityRegularizer/PartitionedCallЫ
 layer1/ActivityRegularizer/ShapeShape'layer1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer1/ActivityRegularizer/Shape™
.layer1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer1/ActivityRegularizer/strided_slice/stackЃ
0layer1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_2Д
(layer1/ActivityRegularizer/strided_sliceStridedSlice)layer1/ActivityRegularizer/Shape:output:07layer1/ActivityRegularizer/strided_slice/stack:output:09layer1/ActivityRegularizer/strided_slice/stack_1:output:09layer1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer1/ActivityRegularizer/strided_slice≠
layer1/ActivityRegularizer/CastCast1layer1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer1/ActivityRegularizer/Castќ
"layer1/ActivityRegularizer/truedivRealDiv3layer1/ActivityRegularizer/PartitionedCall:output:0#layer1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer1/ActivityRegularizer/truediv∞
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_154067layer2_154069*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_1531092 
layer2/StatefulPartitionedCallц
*layer2/ActivityRegularizer/PartitionedCallPartitionedCall'layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer2_activity_regularizer_1527232,
*layer2/ActivityRegularizer/PartitionedCallЫ
 layer2/ActivityRegularizer/ShapeShape'layer2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer2/ActivityRegularizer/Shape™
.layer2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer2/ActivityRegularizer/strided_slice/stackЃ
0layer2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_2Д
(layer2/ActivityRegularizer/strided_sliceStridedSlice)layer2/ActivityRegularizer/Shape:output:07layer2/ActivityRegularizer/strided_slice/stack:output:09layer2/ActivityRegularizer/strided_slice/stack_1:output:09layer2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer2/ActivityRegularizer/strided_slice≠
layer2/ActivityRegularizer/CastCast1layer2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer2/ActivityRegularizer/Castќ
"layer2/ActivityRegularizer/truedivRealDiv3layer2/ActivityRegularizer/PartitionedCall:output:0#layer2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer2/ActivityRegularizer/truedivѓ
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_154080layer3_154082*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_1531872 
layer3/StatefulPartitionedCallц
*layer3/ActivityRegularizer/PartitionedCallPartitionedCall'layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer3_activity_regularizer_1527482,
*layer3/ActivityRegularizer/PartitionedCallЫ
 layer3/ActivityRegularizer/ShapeShape'layer3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer3/ActivityRegularizer/Shape™
.layer3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer3/ActivityRegularizer/strided_slice/stackЃ
0layer3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_2Д
(layer3/ActivityRegularizer/strided_sliceStridedSlice)layer3/ActivityRegularizer/Shape:output:07layer3/ActivityRegularizer/strided_slice/stack:output:09layer3/ActivityRegularizer/strided_slice/stack_1:output:09layer3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer3/ActivityRegularizer/strided_slice≠
layer3/ActivityRegularizer/CastCast1layer3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer3/ActivityRegularizer/Castќ
"layer3/ActivityRegularizer/truedivRealDiv3layer3/ActivityRegularizer/PartitionedCall:output:0#layer3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer3/ActivityRegularizer/truedivѓ
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_154093layer4_154095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_1532652 
layer4/StatefulPartitionedCallц
*layer4/ActivityRegularizer/PartitionedCallPartitionedCall'layer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer4_activity_regularizer_1527732,
*layer4/ActivityRegularizer/PartitionedCallЫ
 layer4/ActivityRegularizer/ShapeShape'layer4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer4/ActivityRegularizer/Shape™
.layer4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer4/ActivityRegularizer/strided_slice/stackЃ
0layer4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_2Д
(layer4/ActivityRegularizer/strided_sliceStridedSlice)layer4/ActivityRegularizer/Shape:output:07layer4/ActivityRegularizer/strided_slice/stack:output:09layer4/ActivityRegularizer/strided_slice/stack_1:output:09layer4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer4/ActivityRegularizer/strided_slice≠
layer4/ActivityRegularizer/CastCast1layer4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer4/ActivityRegularizer/Castќ
"layer4/ActivityRegularizer/truedivRealDiv3layer4/ActivityRegularizer/PartitionedCall:output:0#layer4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer4/ActivityRegularizer/truedivѓ
)mf_item_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1mf_item_embedding_154106*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_item_embedding_layer_call_and_return_conditional_losses_1533532+
)mf_item_embedding/StatefulPartitionedCall≠
)mf_user_embedding/StatefulPartitionedCallStatefulPartitionedCallinputsmf_user_embedding_154109*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_user_embedding_layer_call_and_return_conditional_losses_1534042+
)mf_user_embedding/StatefulPartitionedCallѓ
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_154112layer5_154114*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_1534452 
layer5/StatefulPartitionedCallц
*layer5/ActivityRegularizer/PartitionedCallPartitionedCall'layer5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer5_activity_regularizer_1527982,
*layer5/ActivityRegularizer/PartitionedCallЫ
 layer5/ActivityRegularizer/ShapeShape'layer5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer5/ActivityRegularizer/Shape™
.layer5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer5/ActivityRegularizer/strided_slice/stackЃ
0layer5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_2Д
(layer5/ActivityRegularizer/strided_sliceStridedSlice)layer5/ActivityRegularizer/Shape:output:07layer5/ActivityRegularizer/strided_slice/stack:output:09layer5/ActivityRegularizer/strided_slice/stack_1:output:09layer5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer5/ActivityRegularizer/strided_slice≠
layer5/ActivityRegularizer/CastCast1layer5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer5/ActivityRegularizer/Castќ
"layer5/ActivityRegularizer/truedivRealDiv3layer5/ActivityRegularizer/PartitionedCall:output:0#layer5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer5/ActivityRegularizer/truedivВ
flatten/PartitionedCallPartitionedCall2mf_user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1535132
flatten/PartitionedCallИ
flatten_1/PartitionedCallPartitionedCall2mf_item_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1535382
flatten_1/PartitionedCallШ
multiply/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *M
fHRF
D__inference_multiply_layer_call_and_return_conditional_losses_1535632
multiply/PartitionedCallѓ
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_154128layer6_154130*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_1536002 
layer6/StatefulPartitionedCallц
*layer6/ActivityRegularizer/PartitionedCallPartitionedCall'layer6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer6_activity_regularizer_1528232,
*layer6/ActivityRegularizer/PartitionedCallЫ
 layer6/ActivityRegularizer/ShapeShape'layer6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer6/ActivityRegularizer/Shape™
.layer6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer6/ActivityRegularizer/strided_slice/stackЃ
0layer6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_2Д
(layer6/ActivityRegularizer/strided_sliceStridedSlice)layer6/ActivityRegularizer/Shape:output:07layer6/ActivityRegularizer/strided_slice/stack:output:09layer6/ActivityRegularizer/strided_slice/stack_1:output:09layer6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer6/ActivityRegularizer/strided_slice≠
layer6/ActivityRegularizer/CastCast1layer6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer6/ActivityRegularizer/Castќ
"layer6/ActivityRegularizer/truedivRealDiv3layer6/ActivityRegularizer/PartitionedCall:output:0#layer6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer6/ActivityRegularizer/truediv≠
concatenate_1/PartitionedCallPartitionedCall!multiply/PartitionedCall:output:0'layer6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€И* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1536702
concatenate_1/PartitionedCallЃ
result/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0result_154142result_154144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_1537072 
result/StatefulPartitionedCallё
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmlp_user_embedding_154048* 
_output_shapes
:
…А*
dtype02A
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpв
0mlp_user_embedding/embeddings/Regularizer/SquareSquareGmlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
…А22
0mlp_user_embedding/embeddings/Regularizer/Square≥
/mlp_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_user_embedding/embeddings/Regularizer/Constц
-mlp_user_embedding/embeddings/Regularizer/SumSum4mlp_user_embedding/embeddings/Regularizer/Square:y:08mlp_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/SumІ
/mlp_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_user_embedding/embeddings/Regularizer/mul/xш
-mlp_user_embedding/embeddings/Regularizer/mulMul8mlp_user_embedding/embeddings/Regularizer/mul/x:output:06mlp_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/mulЁ
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmlp_item_embedding_154045*
_output_shapes
:	А*
dtype02A
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpб
0mlp_item_embedding/embeddings/Regularizer/SquareSquareGmlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	А22
0mlp_item_embedding/embeddings/Regularizer/Square≥
/mlp_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_item_embedding/embeddings/Regularizer/Constц
-mlp_item_embedding/embeddings/Regularizer/SumSum4mlp_item_embedding/embeddings/Regularizer/Square:y:08mlp_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/SumІ
/mlp_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_item_embedding/embeddings/Regularizer/mul/xш
-mlp_item_embedding/embeddings/Regularizer/mulMul8mlp_item_embedding/embeddings/Regularizer/mul/x:output:06mlp_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/mulЏ
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmf_user_embedding_154109*
_output_shapes
:	…@*
dtype02@
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpё
/mf_user_embedding/embeddings/Regularizer/SquareSquareFmf_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	…@21
/mf_user_embedding/embeddings/Regularizer/Square±
.mf_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_user_embedding/embeddings/Regularizer/Constт
,mf_user_embedding/embeddings/Regularizer/SumSum3mf_user_embedding/embeddings/Regularizer/Square:y:07mf_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/Sum•
.mf_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_user_embedding/embeddings/Regularizer/mul/xф
,mf_user_embedding/embeddings/Regularizer/mulMul7mf_user_embedding/embeddings/Regularizer/mul/x:output:05mf_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/mulў
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmf_item_embedding_154106*
_output_shapes

:@*
dtype02@
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpЁ
/mf_item_embedding/embeddings/Regularizer/SquareSquareFmf_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@21
/mf_item_embedding/embeddings/Regularizer/Square±
.mf_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_item_embedding/embeddings/Regularizer/Constт
,mf_item_embedding/embeddings/Regularizer/SumSum3mf_item_embedding/embeddings/Regularizer/Square:y:07mf_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/Sum•
.mf_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_item_embedding/embeddings/Regularizer/mul/xф
,mf_item_embedding/embeddings/Regularizer/mulMul7mf_item_embedding/embeddings/Regularizer/mul/x:output:05mf_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/mulФ
IdentityIdentity'result/StatefulPartitionedCall:output:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЖ

Identity_1Identity&layer1/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1Ж

Identity_2Identity&layer2/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2Ж

Identity_3Identity&layer3/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3Ж

Identity_4Identity&layer4/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4Ж

Identity_5Identity&layer5/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_5Ж

Identity_6Identity&layer6/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_6"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€::::::::::::::::::2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall2@
layer6/StatefulPartitionedCalllayer6/StatefulPartitionedCall2V
)mf_item_embedding/StatefulPartitionedCall)mf_item_embedding/StatefulPartitionedCall2V
)mf_user_embedding/StatefulPartitionedCall)mf_user_embedding/StatefulPartitionedCall2X
*mlp_item_embedding/StatefulPartitionedCall*mlp_item_embedding/StatefulPartitionedCall2X
*mlp_user_embedding/StatefulPartitionedCall*mlp_user_embedding/StatefulPartitionedCall2@
result/StatefulPartitionedCallresult/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
а
|
'__inference_layer2_layer_call_fn_155200

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallч
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
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_1531092
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
І
™
B__inference_layer4_layer_call_and_return_conditional_losses_153265

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:::O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
и

Ђ
F__inference_layer3_layer_call_and_return_all_conditional_losses_155242

inputs
unknown
	unknown_0
identity

identity_1ИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_1531872
StatefulPartitionedCallє
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer3_activity_regularizer_1527482
PartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ
x
2__inference_mf_user_embedding_layer_call_fn_155271

inputs
unknown
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_user_embedding_layer_call_and_return_conditional_losses_1534042
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
№
|
'__inference_layer4_layer_call_fn_155320

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_1532652
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ђ
™
B__inference_result_layer_call_and_return_conditional_losses_155451

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	И*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€И:::P L
(
_output_shapes
:€€€€€€€€€И
 
_user_specified_nameinputs
∞
™
B__inference_layer2_layer_call_and_return_conditional_losses_153109

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИП
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
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:::P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬
H
.__inference_layer5_activity_regularizer_152798
self
identityC
SquareSquareself*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
::> :

_output_shapes
:

_user_specified_nameself
Н
Ж
&__inference_model_layer_call_fn_154271

user_input

item_input
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

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCall
user_input
item_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
	2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€: : : : : : *4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1541782
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
user_input:SO
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
item_input
™
™
B__inference_layer3_layer_call_and_return_conditional_losses_155222

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:::P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬
H
.__inference_layer3_activity_regularizer_152748
self
identityC
SquareSquareself*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
::> :

_output_shapes
:

_user_specified_nameself
к

Ђ
F__inference_layer2_layer_call_and_return_all_conditional_losses_155211

inputs
unknown
	unknown_0
identity

identity_1ИҐStatefulPartitionedCallч
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
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_1531092
StatefulPartitionedCallє
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer2_activity_regularizer_1527232
PartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ј
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_152942

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*+
_input_shapes
:€€€€€€€€€А:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
µ
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_155348

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ј
a
E__inference_flatten_2_layer_call_and_return_conditional_losses_155120

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*+
_input_shapes
:€€€€€€€€€А:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬
H
.__inference_layer6_activity_regularizer_152823
self
identityC
SquareSquareself*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
::> :

_output_shapes
:

_user_specified_nameself
ж

Ђ
F__inference_layer4_layer_call_and_return_all_conditional_losses_155331

inputs
unknown
	unknown_0
identity

identity_1ИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_1532652
StatefulPartitionedCallє
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer4_activity_regularizer_1527732
PartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*.
_input_shapes
:€€€€€€€€€@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ї
q
G__inference_concatenate_layer_call_and_return_conditional_losses_152994

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisА
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:€€€€€€€€€А:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
¬
u
I__inference_concatenate_1_layer_call_and_return_conditional_losses_155434
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisВ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€И2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€И2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€А:€€€€€€€€€:R N
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
£~
®
__inference__traced_save_155757
file_prefix<
8savev2_mlp_user_embedding_embeddings_read_readvariableop<
8savev2_mlp_item_embedding_embeddings_read_readvariableop,
(savev2_layer1_kernel_read_readvariableop*
&savev2_layer1_bias_read_readvariableop,
(savev2_layer2_kernel_read_readvariableop*
&savev2_layer2_bias_read_readvariableop,
(savev2_layer3_kernel_read_readvariableop*
&savev2_layer3_bias_read_readvariableop;
7savev2_mf_user_embedding_embeddings_read_readvariableop;
7savev2_mf_item_embedding_embeddings_read_readvariableop,
(savev2_layer4_kernel_read_readvariableop*
&savev2_layer4_bias_read_readvariableop,
(savev2_layer5_kernel_read_readvariableop*
&savev2_layer5_bias_read_readvariableop,
(savev2_layer6_kernel_read_readvariableop*
&savev2_layer6_bias_read_readvariableop,
(savev2_result_kernel_read_readvariableop*
&savev2_result_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopC
?savev2_adam_mlp_user_embedding_embeddings_m_read_readvariableopC
?savev2_adam_mlp_item_embedding_embeddings_m_read_readvariableop3
/savev2_adam_layer1_kernel_m_read_readvariableop1
-savev2_adam_layer1_bias_m_read_readvariableop3
/savev2_adam_layer2_kernel_m_read_readvariableop1
-savev2_adam_layer2_bias_m_read_readvariableop3
/savev2_adam_layer3_kernel_m_read_readvariableop1
-savev2_adam_layer3_bias_m_read_readvariableopB
>savev2_adam_mf_user_embedding_embeddings_m_read_readvariableopB
>savev2_adam_mf_item_embedding_embeddings_m_read_readvariableop3
/savev2_adam_layer4_kernel_m_read_readvariableop1
-savev2_adam_layer4_bias_m_read_readvariableop3
/savev2_adam_layer5_kernel_m_read_readvariableop1
-savev2_adam_layer5_bias_m_read_readvariableop3
/savev2_adam_layer6_kernel_m_read_readvariableop1
-savev2_adam_layer6_bias_m_read_readvariableop3
/savev2_adam_result_kernel_m_read_readvariableop1
-savev2_adam_result_bias_m_read_readvariableopC
?savev2_adam_mlp_user_embedding_embeddings_v_read_readvariableopC
?savev2_adam_mlp_item_embedding_embeddings_v_read_readvariableop3
/savev2_adam_layer1_kernel_v_read_readvariableop1
-savev2_adam_layer1_bias_v_read_readvariableop3
/savev2_adam_layer2_kernel_v_read_readvariableop1
-savev2_adam_layer2_bias_v_read_readvariableop3
/savev2_adam_layer3_kernel_v_read_readvariableop1
-savev2_adam_layer3_bias_v_read_readvariableopB
>savev2_adam_mf_user_embedding_embeddings_v_read_readvariableopB
>savev2_adam_mf_item_embedding_embeddings_v_read_readvariableop3
/savev2_adam_layer4_kernel_v_read_readvariableop1
-savev2_adam_layer4_bias_v_read_readvariableop3
/savev2_adam_layer5_kernel_v_read_readvariableop1
-savev2_adam_layer5_bias_v_read_readvariableop3
/savev2_adam_layer6_kernel_v_read_readvariableop1
-savev2_adam_layer6_bias_v_read_readvariableop3
/savev2_adam_result_kernel_v_read_readvariableop1
-savev2_adam_result_bias_v_read_readvariableop
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
ConstН
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_baef056806e1454f980eb9c3cfc4cb17/part2	
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
ShardedFilename™$
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*Љ#
value≤#Bѓ#@B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-5/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-6/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-5/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-6/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЛ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:@*
dtype0*Х
valueЛBИ@B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesє
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:08savev2_mlp_user_embedding_embeddings_read_readvariableop8savev2_mlp_item_embedding_embeddings_read_readvariableop(savev2_layer1_kernel_read_readvariableop&savev2_layer1_bias_read_readvariableop(savev2_layer2_kernel_read_readvariableop&savev2_layer2_bias_read_readvariableop(savev2_layer3_kernel_read_readvariableop&savev2_layer3_bias_read_readvariableop7savev2_mf_user_embedding_embeddings_read_readvariableop7savev2_mf_item_embedding_embeddings_read_readvariableop(savev2_layer4_kernel_read_readvariableop&savev2_layer4_bias_read_readvariableop(savev2_layer5_kernel_read_readvariableop&savev2_layer5_bias_read_readvariableop(savev2_layer6_kernel_read_readvariableop&savev2_layer6_bias_read_readvariableop(savev2_result_kernel_read_readvariableop&savev2_result_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop?savev2_adam_mlp_user_embedding_embeddings_m_read_readvariableop?savev2_adam_mlp_item_embedding_embeddings_m_read_readvariableop/savev2_adam_layer1_kernel_m_read_readvariableop-savev2_adam_layer1_bias_m_read_readvariableop/savev2_adam_layer2_kernel_m_read_readvariableop-savev2_adam_layer2_bias_m_read_readvariableop/savev2_adam_layer3_kernel_m_read_readvariableop-savev2_adam_layer3_bias_m_read_readvariableop>savev2_adam_mf_user_embedding_embeddings_m_read_readvariableop>savev2_adam_mf_item_embedding_embeddings_m_read_readvariableop/savev2_adam_layer4_kernel_m_read_readvariableop-savev2_adam_layer4_bias_m_read_readvariableop/savev2_adam_layer5_kernel_m_read_readvariableop-savev2_adam_layer5_bias_m_read_readvariableop/savev2_adam_layer6_kernel_m_read_readvariableop-savev2_adam_layer6_bias_m_read_readvariableop/savev2_adam_result_kernel_m_read_readvariableop-savev2_adam_result_bias_m_read_readvariableop?savev2_adam_mlp_user_embedding_embeddings_v_read_readvariableop?savev2_adam_mlp_item_embedding_embeddings_v_read_readvariableop/savev2_adam_layer1_kernel_v_read_readvariableop-savev2_adam_layer1_bias_v_read_readvariableop/savev2_adam_layer2_kernel_v_read_readvariableop-savev2_adam_layer2_bias_v_read_readvariableop/savev2_adam_layer3_kernel_v_read_readvariableop-savev2_adam_layer3_bias_v_read_readvariableop>savev2_adam_mf_user_embedding_embeddings_v_read_readvariableop>savev2_adam_mf_item_embedding_embeddings_v_read_readvariableop/savev2_adam_layer4_kernel_v_read_readvariableop-savev2_adam_layer4_bias_v_read_readvariableop/savev2_adam_layer5_kernel_v_read_readvariableop-savev2_adam_layer5_bias_v_read_readvariableop/savev2_adam_layer6_kernel_v_read_readvariableop-savev2_adam_layer6_bias_v_read_readvariableop/savev2_adam_result_kernel_v_read_readvariableop-savev2_adam_result_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *N
dtypesD
B2@	2
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

identity_1Identity_1:output:0*Ч
_input_shapesЕ
В: :
…А:	А:
АА:А:
АА:А:	А@:@:	…@:@:@ : : ::::	И:: : : : : : : : : :
…А:	А:
АА:А:
АА:А:	А@:@:	…@:@:@ : : ::::	И::
…А:	А:
АА:А:
АА:А:	А@:@:	…@:@:@ : : ::::	И:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
…А:%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:%	!

_output_shapes
:	…@:$
 

_output_shapes

:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	И: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
…А:%!

_output_shapes
:	А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:& "
 
_output_shapes
:
АА:!!

_output_shapes	
:А:%"!

_output_shapes
:	А@: #

_output_shapes
:@:%$!

_output_shapes
:	…@:$% 

_output_shapes

:@:$& 

_output_shapes

:@ : '

_output_shapes
: :$( 

_output_shapes

: : )

_output_shapes
::$* 

_output_shapes

:: +

_output_shapes
::%,!

_output_shapes
:	И: -

_output_shapes
::&."
 
_output_shapes
:
…А:%/!

_output_shapes
:	А:&0"
 
_output_shapes
:
АА:!1

_output_shapes	
:А:&2"
 
_output_shapes
:
АА:!3

_output_shapes	
:А:%4!

_output_shapes
:	А@: 5

_output_shapes
:@:%6!

_output_shapes
:	…@:$7 

_output_shapes

:@:$8 

_output_shapes

:@ : 9

_output_shapes
: :$: 

_output_shapes

: : ;

_output_shapes
::$< 

_output_shapes

:: =

_output_shapes
::%>!

_output_shapes
:	И: ?

_output_shapes
::@

_output_shapes
: 
ў
Д
$__inference_signature_wrapper_154574

item_input

user_input
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

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCall
user_input
item_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8В **
f%R#
!__inference__wrapped_model_1526732
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
item_input:SO
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
user_input
Н
Ж
&__inference_model_layer_call_fn_154456

user_input

item_input
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

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16
identityИҐStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCall
user_input
item_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
	2*
_collective_manager_ids
 *3
_output_shapes!
:€€€€€€€€€: : : : : : *4
_read_only_resource_inputs
	
*1
config_proto!

CPU

GPU (2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1544112
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
user_input:SO
'
_output_shapes
:€€€€€€€€€
$
_user_specified_name
item_input
≥
К
N__inference_mlp_item_embedding_layer_call_and_return_conditional_losses_155107

inputs
embedding_lookup_155095
identityИ]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castю
embedding_lookupResourceGatherembedding_lookup_155095Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/155095*,
_output_shapes
:€€€€€€€€€А*
dtype02
embedding_lookupо
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/155095*,
_output_shapes
:€€€€€€€€€А2
embedding_lookup/Identity°
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
embedding_lookup/Identity_1џ
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_155095*
_output_shapes
:	А*
dtype02A
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpб
0mlp_item_embedding/embeddings/Regularizer/SquareSquareGmlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	А22
0mlp_item_embedding/embeddings/Regularizer/Square≥
/mlp_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_item_embedding/embeddings/Regularizer/Constц
-mlp_item_embedding/embeddings/Regularizer/SumSum4mlp_item_embedding/embeddings/Regularizer/Square:y:08mlp_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/SumІ
/mlp_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_item_embedding/embeddings/Regularizer/mul/xш
-mlp_item_embedding/embeddings/Regularizer/mulMul8mlp_item_embedding/embeddings/Regularizer/mul/x:output:06mlp_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/mul}
IdentityIdentity$embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Чй
л
A__inference_model_layer_call_and_return_conditional_losses_154411

inputs
inputs_1
mlp_item_embedding_154278
mlp_user_embedding_154281
layer1_154287
layer1_154289
layer2_154300
layer2_154302
layer3_154313
layer3_154315
layer4_154326
layer4_154328
mf_item_embedding_154339
mf_user_embedding_154342
layer5_154345
layer5_154347
layer6_154361
layer6_154363
result_154375
result_154377
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИҐlayer1/StatefulPartitionedCallҐlayer2/StatefulPartitionedCallҐlayer3/StatefulPartitionedCallҐlayer4/StatefulPartitionedCallҐlayer5/StatefulPartitionedCallҐlayer6/StatefulPartitionedCallҐ)mf_item_embedding/StatefulPartitionedCallҐ)mf_user_embedding/StatefulPartitionedCallҐ*mlp_item_embedding/StatefulPartitionedCallҐ*mlp_user_embedding/StatefulPartitionedCallҐresult/StatefulPartitionedCallі
*mlp_item_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1mlp_item_embedding_154278*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_item_embedding_layer_call_and_return_conditional_losses_1528602,
*mlp_item_embedding/StatefulPartitionedCall≤
*mlp_user_embedding/StatefulPartitionedCallStatefulPartitionedCallinputsmlp_user_embedding_154281*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€А*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *W
fRRP
N__inference_mlp_user_embedding_layer_call_and_return_conditional_losses_1529112,
*mlp_user_embedding/StatefulPartitionedCallЙ
flatten_2/PartitionedCallPartitionedCall3mlp_user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1529422
flatten_2/PartitionedCallЙ
flatten_3/PartitionedCallPartitionedCall3mlp_item_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_3_layer_call_and_return_conditional_losses_1529672
flatten_3/PartitionedCall£
concatenate/PartitionedCallPartitionedCall"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1529942
concatenate/PartitionedCall≠
layer1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0layer1_154287layer1_154289*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_1530312 
layer1/StatefulPartitionedCallц
*layer1/ActivityRegularizer/PartitionedCallPartitionedCall'layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer1_activity_regularizer_1526982,
*layer1/ActivityRegularizer/PartitionedCallЫ
 layer1/ActivityRegularizer/ShapeShape'layer1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer1/ActivityRegularizer/Shape™
.layer1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer1/ActivityRegularizer/strided_slice/stackЃ
0layer1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_2Д
(layer1/ActivityRegularizer/strided_sliceStridedSlice)layer1/ActivityRegularizer/Shape:output:07layer1/ActivityRegularizer/strided_slice/stack:output:09layer1/ActivityRegularizer/strided_slice/stack_1:output:09layer1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer1/ActivityRegularizer/strided_slice≠
layer1/ActivityRegularizer/CastCast1layer1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer1/ActivityRegularizer/Castќ
"layer1/ActivityRegularizer/truedivRealDiv3layer1/ActivityRegularizer/PartitionedCall:output:0#layer1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer1/ActivityRegularizer/truediv∞
layer2/StatefulPartitionedCallStatefulPartitionedCall'layer1/StatefulPartitionedCall:output:0layer2_154300layer2_154302*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer2_layer_call_and_return_conditional_losses_1531092 
layer2/StatefulPartitionedCallц
*layer2/ActivityRegularizer/PartitionedCallPartitionedCall'layer2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer2_activity_regularizer_1527232,
*layer2/ActivityRegularizer/PartitionedCallЫ
 layer2/ActivityRegularizer/ShapeShape'layer2/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer2/ActivityRegularizer/Shape™
.layer2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer2/ActivityRegularizer/strided_slice/stackЃ
0layer2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_2Д
(layer2/ActivityRegularizer/strided_sliceStridedSlice)layer2/ActivityRegularizer/Shape:output:07layer2/ActivityRegularizer/strided_slice/stack:output:09layer2/ActivityRegularizer/strided_slice/stack_1:output:09layer2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer2/ActivityRegularizer/strided_slice≠
layer2/ActivityRegularizer/CastCast1layer2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer2/ActivityRegularizer/Castќ
"layer2/ActivityRegularizer/truedivRealDiv3layer2/ActivityRegularizer/PartitionedCall:output:0#layer2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer2/ActivityRegularizer/truedivѓ
layer3/StatefulPartitionedCallStatefulPartitionedCall'layer2/StatefulPartitionedCall:output:0layer3_154313layer3_154315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer3_layer_call_and_return_conditional_losses_1531872 
layer3/StatefulPartitionedCallц
*layer3/ActivityRegularizer/PartitionedCallPartitionedCall'layer3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer3_activity_regularizer_1527482,
*layer3/ActivityRegularizer/PartitionedCallЫ
 layer3/ActivityRegularizer/ShapeShape'layer3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer3/ActivityRegularizer/Shape™
.layer3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer3/ActivityRegularizer/strided_slice/stackЃ
0layer3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_2Д
(layer3/ActivityRegularizer/strided_sliceStridedSlice)layer3/ActivityRegularizer/Shape:output:07layer3/ActivityRegularizer/strided_slice/stack:output:09layer3/ActivityRegularizer/strided_slice/stack_1:output:09layer3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer3/ActivityRegularizer/strided_slice≠
layer3/ActivityRegularizer/CastCast1layer3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer3/ActivityRegularizer/Castќ
"layer3/ActivityRegularizer/truedivRealDiv3layer3/ActivityRegularizer/PartitionedCall:output:0#layer3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer3/ActivityRegularizer/truedivѓ
layer4/StatefulPartitionedCallStatefulPartitionedCall'layer3/StatefulPartitionedCall:output:0layer4_154326layer4_154328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer4_layer_call_and_return_conditional_losses_1532652 
layer4/StatefulPartitionedCallц
*layer4/ActivityRegularizer/PartitionedCallPartitionedCall'layer4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer4_activity_regularizer_1527732,
*layer4/ActivityRegularizer/PartitionedCallЫ
 layer4/ActivityRegularizer/ShapeShape'layer4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer4/ActivityRegularizer/Shape™
.layer4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer4/ActivityRegularizer/strided_slice/stackЃ
0layer4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_2Д
(layer4/ActivityRegularizer/strided_sliceStridedSlice)layer4/ActivityRegularizer/Shape:output:07layer4/ActivityRegularizer/strided_slice/stack:output:09layer4/ActivityRegularizer/strided_slice/stack_1:output:09layer4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer4/ActivityRegularizer/strided_slice≠
layer4/ActivityRegularizer/CastCast1layer4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer4/ActivityRegularizer/Castќ
"layer4/ActivityRegularizer/truedivRealDiv3layer4/ActivityRegularizer/PartitionedCall:output:0#layer4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer4/ActivityRegularizer/truedivѓ
)mf_item_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1mf_item_embedding_154339*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_item_embedding_layer_call_and_return_conditional_losses_1533532+
)mf_item_embedding/StatefulPartitionedCall≠
)mf_user_embedding/StatefulPartitionedCallStatefulPartitionedCallinputsmf_user_embedding_154342*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€@*#
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *V
fQRO
M__inference_mf_user_embedding_layer_call_and_return_conditional_losses_1534042+
)mf_user_embedding/StatefulPartitionedCallѓ
layer5/StatefulPartitionedCallStatefulPartitionedCall'layer4/StatefulPartitionedCall:output:0layer5_154345layer5_154347*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_1534452 
layer5/StatefulPartitionedCallц
*layer5/ActivityRegularizer/PartitionedCallPartitionedCall'layer5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer5_activity_regularizer_1527982,
*layer5/ActivityRegularizer/PartitionedCallЫ
 layer5/ActivityRegularizer/ShapeShape'layer5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer5/ActivityRegularizer/Shape™
.layer5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer5/ActivityRegularizer/strided_slice/stackЃ
0layer5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_2Д
(layer5/ActivityRegularizer/strided_sliceStridedSlice)layer5/ActivityRegularizer/Shape:output:07layer5/ActivityRegularizer/strided_slice/stack:output:09layer5/ActivityRegularizer/strided_slice/stack_1:output:09layer5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer5/ActivityRegularizer/strided_slice≠
layer5/ActivityRegularizer/CastCast1layer5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer5/ActivityRegularizer/Castќ
"layer5/ActivityRegularizer/truedivRealDiv3layer5/ActivityRegularizer/PartitionedCall:output:0#layer5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer5/ActivityRegularizer/truedivВ
flatten/PartitionedCallPartitionedCall2mf_user_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1535132
flatten/PartitionedCallИ
flatten_1/PartitionedCallPartitionedCall2mf_item_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1535382
flatten_1/PartitionedCallШ
multiply/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *M
fHRF
D__inference_multiply_layer_call_and_return_conditional_losses_1535632
multiply/PartitionedCallѓ
layer6/StatefulPartitionedCallStatefulPartitionedCall'layer5/StatefulPartitionedCall:output:0layer6_154361layer6_154363*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_1536002 
layer6/StatefulPartitionedCallц
*layer6/ActivityRegularizer/PartitionedCallPartitionedCall'layer6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer6_activity_regularizer_1528232,
*layer6/ActivityRegularizer/PartitionedCallЫ
 layer6/ActivityRegularizer/ShapeShape'layer6/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2"
 layer6/ActivityRegularizer/Shape™
.layer6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer6/ActivityRegularizer/strided_slice/stackЃ
0layer6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_2Д
(layer6/ActivityRegularizer/strided_sliceStridedSlice)layer6/ActivityRegularizer/Shape:output:07layer6/ActivityRegularizer/strided_slice/stack:output:09layer6/ActivityRegularizer/strided_slice/stack_1:output:09layer6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer6/ActivityRegularizer/strided_slice≠
layer6/ActivityRegularizer/CastCast1layer6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer6/ActivityRegularizer/Castќ
"layer6/ActivityRegularizer/truedivRealDiv3layer6/ActivityRegularizer/PartitionedCall:output:0#layer6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer6/ActivityRegularizer/truediv≠
concatenate_1/PartitionedCallPartitionedCall!multiply/PartitionedCall:output:0'layer6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€И* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *R
fMRK
I__inference_concatenate_1_layer_call_and_return_conditional_losses_1536702
concatenate_1/PartitionedCallЃ
result/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0result_154375result_154377*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_1537072 
result/StatefulPartitionedCallё
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmlp_user_embedding_154281* 
_output_shapes
:
…А*
dtype02A
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpв
0mlp_user_embedding/embeddings/Regularizer/SquareSquareGmlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
…А22
0mlp_user_embedding/embeddings/Regularizer/Square≥
/mlp_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_user_embedding/embeddings/Regularizer/Constц
-mlp_user_embedding/embeddings/Regularizer/SumSum4mlp_user_embedding/embeddings/Regularizer/Square:y:08mlp_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/SumІ
/mlp_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_user_embedding/embeddings/Regularizer/mul/xш
-mlp_user_embedding/embeddings/Regularizer/mulMul8mlp_user_embedding/embeddings/Regularizer/mul/x:output:06mlp_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/mulЁ
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmlp_item_embedding_154278*
_output_shapes
:	А*
dtype02A
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpб
0mlp_item_embedding/embeddings/Regularizer/SquareSquareGmlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	А22
0mlp_item_embedding/embeddings/Regularizer/Square≥
/mlp_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_item_embedding/embeddings/Regularizer/Constц
-mlp_item_embedding/embeddings/Regularizer/SumSum4mlp_item_embedding/embeddings/Regularizer/Square:y:08mlp_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/SumІ
/mlp_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_item_embedding/embeddings/Regularizer/mul/xш
-mlp_item_embedding/embeddings/Regularizer/mulMul8mlp_item_embedding/embeddings/Regularizer/mul/x:output:06mlp_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/mulЏ
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmf_user_embedding_154342*
_output_shapes
:	…@*
dtype02@
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpё
/mf_user_embedding/embeddings/Regularizer/SquareSquareFmf_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	…@21
/mf_user_embedding/embeddings/Regularizer/Square±
.mf_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_user_embedding/embeddings/Regularizer/Constт
,mf_user_embedding/embeddings/Regularizer/SumSum3mf_user_embedding/embeddings/Regularizer/Square:y:07mf_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/Sum•
.mf_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_user_embedding/embeddings/Regularizer/mul/xф
,mf_user_embedding/embeddings/Regularizer/mulMul7mf_user_embedding/embeddings/Regularizer/mul/x:output:05mf_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/mulў
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpmf_item_embedding_154339*
_output_shapes

:@*
dtype02@
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpЁ
/mf_item_embedding/embeddings/Regularizer/SquareSquareFmf_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@21
/mf_item_embedding/embeddings/Regularizer/Square±
.mf_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_item_embedding/embeddings/Regularizer/Constт
,mf_item_embedding/embeddings/Regularizer/SumSum3mf_item_embedding/embeddings/Regularizer/Square:y:07mf_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/Sum•
.mf_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_item_embedding/embeddings/Regularizer/mul/xф
,mf_item_embedding/embeddings/Regularizer/mulMul7mf_item_embedding/embeddings/Regularizer/mul/x:output:05mf_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/mulФ
IdentityIdentity'result/StatefulPartitionedCall:output:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

IdentityЖ

Identity_1Identity&layer1/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1Ж

Identity_2Identity&layer2/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2Ж

Identity_3Identity&layer3/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3Ж

Identity_4Identity&layer4/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4Ж

Identity_5Identity&layer5/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_5Ж

Identity_6Identity&layer6/ActivityRegularizer/truediv:z:0^layer1/StatefulPartitionedCall^layer2/StatefulPartitionedCall^layer3/StatefulPartitionedCall^layer4/StatefulPartitionedCall^layer5/StatefulPartitionedCall^layer6/StatefulPartitionedCall*^mf_item_embedding/StatefulPartitionedCall*^mf_user_embedding/StatefulPartitionedCall+^mlp_item_embedding/StatefulPartitionedCall+^mlp_user_embedding/StatefulPartitionedCall^result/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_6"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€::::::::::::::::::2@
layer1/StatefulPartitionedCalllayer1/StatefulPartitionedCall2@
layer2/StatefulPartitionedCalllayer2/StatefulPartitionedCall2@
layer3/StatefulPartitionedCalllayer3/StatefulPartitionedCall2@
layer4/StatefulPartitionedCalllayer4/StatefulPartitionedCall2@
layer5/StatefulPartitionedCalllayer5/StatefulPartitionedCall2@
layer6/StatefulPartitionedCalllayer6/StatefulPartitionedCall2V
)mf_item_embedding/StatefulPartitionedCall)mf_item_embedding/StatefulPartitionedCall2V
)mf_user_embedding/StatefulPartitionedCall)mf_user_embedding/StatefulPartitionedCall2X
*mlp_item_embedding/StatefulPartitionedCall*mlp_item_embedding/StatefulPartitionedCall2X
*mlp_user_embedding/StatefulPartitionedCall*mlp_user_embedding/StatefulPartitionedCall2@
result/StatefulPartitionedCallresult/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ы
Й
M__inference_mf_item_embedding_layer_call_and_return_conditional_losses_153353

inputs
embedding_lookup_153341
identityИ]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_153341Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/153341*+
_output_shapes
:€€€€€€€€€@*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/153341*+
_output_shapes
:€€€€€€€€€@2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2
embedding_lookup/Identity_1Ў
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_153341*
_output_shapes

:@*
dtype02@
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpЁ
/mf_item_embedding/embeddings/Regularizer/SquareSquareFmf_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@21
/mf_item_embedding/embeddings/Regularizer/Square±
.mf_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_item_embedding/embeddings/Regularizer/Constт
,mf_item_embedding/embeddings/Regularizer/SumSum3mf_item_embedding/embeddings/Regularizer/Square:y:07mf_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/Sum•
.mf_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_item_embedding/embeddings/Regularizer/mul/xф
,mf_item_embedding/embeddings/Regularizer/mulMul7mf_item_embedding/embeddings/Regularizer/mul/x:output:05mf_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/mul|
IdentityIdentity$embedding_lookup/Identity_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ѓ
p
D__inference_multiply_layer_call_and_return_conditional_losses_155390
inputs_0
inputs_1
identityX
mulMulinputs_0inputs_1*
T0*(
_output_shapes
:€€€€€€€€€А2
mul\
IdentityIdentitymul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*;
_input_shapes*
(:€€€€€€€€€А:€€€€€€€€€А:R N
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:€€€€€€€€€А
"
_user_specified_name
inputs/1
к

Ђ
F__inference_layer1_layer_call_and_return_all_conditional_losses_155180

inputs
unknown
	unknown_0
identity

identity_1ИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer1_layer_call_and_return_conditional_losses_1530312
StatefulPartitionedCallє
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *7
f2R0
.__inference_layer1_activity_regularizer_1526982
PartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:€€€€€€€€€А2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*/
_input_shapes
:€€€€€€€€€А::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ї
s
I__inference_concatenate_1_layer_call_and_return_conditional_losses_153670

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisА
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€И2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€И2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€А:€€€€€€€€€:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Цю
п
A__inference_model_layer_call_and_return_conditional_losses_154767
inputs_0
inputs_1.
*mlp_item_embedding_embedding_lookup_154579.
*mlp_user_embedding_embedding_lookup_154585)
%layer1_matmul_readvariableop_resource*
&layer1_biasadd_readvariableop_resource)
%layer2_matmul_readvariableop_resource*
&layer2_biasadd_readvariableop_resource)
%layer3_matmul_readvariableop_resource*
&layer3_biasadd_readvariableop_resource)
%layer4_matmul_readvariableop_resource*
&layer4_biasadd_readvariableop_resource-
)mf_item_embedding_embedding_lookup_154673-
)mf_user_embedding_embedding_lookup_154679)
%layer5_matmul_readvariableop_resource*
&layer5_biasadd_readvariableop_resource)
%layer6_matmul_readvariableop_resource*
&layer6_biasadd_readvariableop_resource)
%result_matmul_readvariableop_resource*
&result_biasadd_readvariableop_resource
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6ИЕ
mlp_item_embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
mlp_item_embedding/CastЁ
#mlp_item_embedding/embedding_lookupResourceGather*mlp_item_embedding_embedding_lookup_154579mlp_item_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*=
_class3
1/loc:@mlp_item_embedding/embedding_lookup/154579*,
_output_shapes
:€€€€€€€€€А*
dtype02%
#mlp_item_embedding/embedding_lookupЇ
,mlp_item_embedding/embedding_lookup/IdentityIdentity,mlp_item_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@mlp_item_embedding/embedding_lookup/154579*,
_output_shapes
:€€€€€€€€€А2.
,mlp_item_embedding/embedding_lookup/IdentityЏ
.mlp_item_embedding/embedding_lookup/Identity_1Identity5mlp_item_embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А20
.mlp_item_embedding/embedding_lookup/Identity_1Е
mlp_user_embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
mlp_user_embedding/CastЁ
#mlp_user_embedding/embedding_lookupResourceGather*mlp_user_embedding_embedding_lookup_154585mlp_user_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*=
_class3
1/loc:@mlp_user_embedding/embedding_lookup/154585*,
_output_shapes
:€€€€€€€€€А*
dtype02%
#mlp_user_embedding/embedding_lookupЇ
,mlp_user_embedding/embedding_lookup/IdentityIdentity,mlp_user_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@mlp_user_embedding/embedding_lookup/154585*,
_output_shapes
:€€€€€€€€€А2.
,mlp_user_embedding/embedding_lookup/IdentityЏ
.mlp_user_embedding/embedding_lookup/Identity_1Identity5mlp_user_embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А20
.mlp_user_embedding/embedding_lookup/Identity_1s
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_2/ConstЈ
flatten_2/ReshapeReshape7mlp_user_embedding/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_2/Reshapes
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   2
flatten_3/ConstЈ
flatten_3/ReshapeReshape7mlp_item_embedding/embedding_lookup/Identity_1:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_3/Reshapet
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis 
concatenate/concatConcatV2flatten_2/Reshape:output:0flatten_3/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€А2
concatenate/concat§
layer1/MatMul/ReadVariableOpReadVariableOp%layer1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
layer1/MatMul/ReadVariableOpЮ
layer1/MatMulMatMulconcatenate/concat:output:0$layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer1/MatMulҐ
layer1/BiasAdd/ReadVariableOpReadVariableOp&layer1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
layer1/BiasAdd/ReadVariableOpЮ
layer1/BiasAddBiasAddlayer1/MatMul:product:0%layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer1/BiasAddn
layer1/ReluRelulayer1/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer1/ReluЮ
!layer1/ActivityRegularizer/SquareSquarelayer1/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!layer1/ActivityRegularizer/SquareХ
 layer1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer1/ActivityRegularizer/ConstЇ
layer1/ActivityRegularizer/SumSum%layer1/ActivityRegularizer/Square:y:0)layer1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer1/ActivityRegularizer/SumЙ
 layer1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer1/ActivityRegularizer/mul/xЉ
layer1/ActivityRegularizer/mulMul)layer1/ActivityRegularizer/mul/x:output:0'layer1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer1/ActivityRegularizer/mulН
 layer1/ActivityRegularizer/ShapeShapelayer1/Relu:activations:0*
T0*
_output_shapes
:2"
 layer1/ActivityRegularizer/Shape™
.layer1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer1/ActivityRegularizer/strided_slice/stackЃ
0layer1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer1/ActivityRegularizer/strided_slice/stack_2Д
(layer1/ActivityRegularizer/strided_sliceStridedSlice)layer1/ActivityRegularizer/Shape:output:07layer1/ActivityRegularizer/strided_slice/stack:output:09layer1/ActivityRegularizer/strided_slice/stack_1:output:09layer1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer1/ActivityRegularizer/strided_slice≠
layer1/ActivityRegularizer/CastCast1layer1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer1/ActivityRegularizer/Castљ
"layer1/ActivityRegularizer/truedivRealDiv"layer1/ActivityRegularizer/mul:z:0#layer1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer1/ActivityRegularizer/truediv§
layer2/MatMul/ReadVariableOpReadVariableOp%layer2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype02
layer2/MatMul/ReadVariableOpЬ
layer2/MatMulMatMullayer1/Relu:activations:0$layer2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer2/MatMulҐ
layer2/BiasAdd/ReadVariableOpReadVariableOp&layer2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
layer2/BiasAdd/ReadVariableOpЮ
layer2/BiasAddBiasAddlayer2/MatMul:product:0%layer2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer2/BiasAddn
layer2/ReluRelulayer2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
layer2/ReluЮ
!layer2/ActivityRegularizer/SquareSquarelayer2/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2#
!layer2/ActivityRegularizer/SquareХ
 layer2/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer2/ActivityRegularizer/ConstЇ
layer2/ActivityRegularizer/SumSum%layer2/ActivityRegularizer/Square:y:0)layer2/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer2/ActivityRegularizer/SumЙ
 layer2/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer2/ActivityRegularizer/mul/xЉ
layer2/ActivityRegularizer/mulMul)layer2/ActivityRegularizer/mul/x:output:0'layer2/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer2/ActivityRegularizer/mulН
 layer2/ActivityRegularizer/ShapeShapelayer2/Relu:activations:0*
T0*
_output_shapes
:2"
 layer2/ActivityRegularizer/Shape™
.layer2/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer2/ActivityRegularizer/strided_slice/stackЃ
0layer2/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer2/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer2/ActivityRegularizer/strided_slice/stack_2Д
(layer2/ActivityRegularizer/strided_sliceStridedSlice)layer2/ActivityRegularizer/Shape:output:07layer2/ActivityRegularizer/strided_slice/stack:output:09layer2/ActivityRegularizer/strided_slice/stack_1:output:09layer2/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer2/ActivityRegularizer/strided_slice≠
layer2/ActivityRegularizer/CastCast1layer2/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer2/ActivityRegularizer/Castљ
"layer2/ActivityRegularizer/truedivRealDiv"layer2/ActivityRegularizer/mul:z:0#layer2/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer2/ActivityRegularizer/truediv£
layer3/MatMul/ReadVariableOpReadVariableOp%layer3_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
layer3/MatMul/ReadVariableOpЫ
layer3/MatMulMatMullayer2/Relu:activations:0$layer3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
layer3/MatMul°
layer3/BiasAdd/ReadVariableOpReadVariableOp&layer3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
layer3/BiasAdd/ReadVariableOpЭ
layer3/BiasAddBiasAddlayer3/MatMul:product:0%layer3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
layer3/BiasAddm
layer3/ReluRelulayer3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
layer3/ReluЭ
!layer3/ActivityRegularizer/SquareSquarelayer3/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@2#
!layer3/ActivityRegularizer/SquareХ
 layer3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer3/ActivityRegularizer/ConstЇ
layer3/ActivityRegularizer/SumSum%layer3/ActivityRegularizer/Square:y:0)layer3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer3/ActivityRegularizer/SumЙ
 layer3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer3/ActivityRegularizer/mul/xЉ
layer3/ActivityRegularizer/mulMul)layer3/ActivityRegularizer/mul/x:output:0'layer3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer3/ActivityRegularizer/mulН
 layer3/ActivityRegularizer/ShapeShapelayer3/Relu:activations:0*
T0*
_output_shapes
:2"
 layer3/ActivityRegularizer/Shape™
.layer3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer3/ActivityRegularizer/strided_slice/stackЃ
0layer3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer3/ActivityRegularizer/strided_slice/stack_2Д
(layer3/ActivityRegularizer/strided_sliceStridedSlice)layer3/ActivityRegularizer/Shape:output:07layer3/ActivityRegularizer/strided_slice/stack:output:09layer3/ActivityRegularizer/strided_slice/stack_1:output:09layer3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer3/ActivityRegularizer/strided_slice≠
layer3/ActivityRegularizer/CastCast1layer3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer3/ActivityRegularizer/Castљ
"layer3/ActivityRegularizer/truedivRealDiv"layer3/ActivityRegularizer/mul:z:0#layer3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer3/ActivityRegularizer/truedivҐ
layer4/MatMul/ReadVariableOpReadVariableOp%layer4_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
layer4/MatMul/ReadVariableOpЫ
layer4/MatMulMatMullayer3/Relu:activations:0$layer4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
layer4/MatMul°
layer4/BiasAdd/ReadVariableOpReadVariableOp&layer4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
layer4/BiasAdd/ReadVariableOpЭ
layer4/BiasAddBiasAddlayer4/MatMul:product:0%layer4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
layer4/BiasAddm
layer4/ReluRelulayer4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
layer4/ReluЭ
!layer4/ActivityRegularizer/SquareSquarelayer4/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!layer4/ActivityRegularizer/SquareХ
 layer4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer4/ActivityRegularizer/ConstЇ
layer4/ActivityRegularizer/SumSum%layer4/ActivityRegularizer/Square:y:0)layer4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer4/ActivityRegularizer/SumЙ
 layer4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer4/ActivityRegularizer/mul/xЉ
layer4/ActivityRegularizer/mulMul)layer4/ActivityRegularizer/mul/x:output:0'layer4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer4/ActivityRegularizer/mulН
 layer4/ActivityRegularizer/ShapeShapelayer4/Relu:activations:0*
T0*
_output_shapes
:2"
 layer4/ActivityRegularizer/Shape™
.layer4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer4/ActivityRegularizer/strided_slice/stackЃ
0layer4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer4/ActivityRegularizer/strided_slice/stack_2Д
(layer4/ActivityRegularizer/strided_sliceStridedSlice)layer4/ActivityRegularizer/Shape:output:07layer4/ActivityRegularizer/strided_slice/stack:output:09layer4/ActivityRegularizer/strided_slice/stack_1:output:09layer4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer4/ActivityRegularizer/strided_slice≠
layer4/ActivityRegularizer/CastCast1layer4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer4/ActivityRegularizer/Castљ
"layer4/ActivityRegularizer/truedivRealDiv"layer4/ActivityRegularizer/mul:z:0#layer4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer4/ActivityRegularizer/truedivГ
mf_item_embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
mf_item_embedding/Cast„
"mf_item_embedding/embedding_lookupResourceGather)mf_item_embedding_embedding_lookup_154673mf_item_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*<
_class2
0.loc:@mf_item_embedding/embedding_lookup/154673*+
_output_shapes
:€€€€€€€€€@*
dtype02$
"mf_item_embedding/embedding_lookupµ
+mf_item_embedding/embedding_lookup/IdentityIdentity+mf_item_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*<
_class2
0.loc:@mf_item_embedding/embedding_lookup/154673*+
_output_shapes
:€€€€€€€€€@2-
+mf_item_embedding/embedding_lookup/Identity÷
-mf_item_embedding/embedding_lookup/Identity_1Identity4mf_item_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2/
-mf_item_embedding/embedding_lookup/Identity_1Г
mf_user_embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
mf_user_embedding/Cast„
"mf_user_embedding/embedding_lookupResourceGather)mf_user_embedding_embedding_lookup_154679mf_user_embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*<
_class2
0.loc:@mf_user_embedding/embedding_lookup/154679*+
_output_shapes
:€€€€€€€€€@*
dtype02$
"mf_user_embedding/embedding_lookupµ
+mf_user_embedding/embedding_lookup/IdentityIdentity+mf_user_embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*<
_class2
0.loc:@mf_user_embedding/embedding_lookup/154679*+
_output_shapes
:€€€€€€€€€@2-
+mf_user_embedding/embedding_lookup/Identity÷
-mf_user_embedding/embedding_lookup/Identity_1Identity4mf_user_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€@2/
-mf_user_embedding/embedding_lookup/Identity_1Ґ
layer5/MatMul/ReadVariableOpReadVariableOp%layer5_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
layer5/MatMul/ReadVariableOpЫ
layer5/MatMulMatMullayer4/Relu:activations:0$layer5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer5/MatMul°
layer5/BiasAdd/ReadVariableOpReadVariableOp&layer5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
layer5/BiasAdd/ReadVariableOpЭ
layer5/BiasAddBiasAddlayer5/MatMul:product:0%layer5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer5/BiasAddm
layer5/ReluRelulayer5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer5/ReluЭ
!layer5/ActivityRegularizer/SquareSquarelayer5/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!layer5/ActivityRegularizer/SquareХ
 layer5/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer5/ActivityRegularizer/ConstЇ
layer5/ActivityRegularizer/SumSum%layer5/ActivityRegularizer/Square:y:0)layer5/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer5/ActivityRegularizer/SumЙ
 layer5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer5/ActivityRegularizer/mul/xЉ
layer5/ActivityRegularizer/mulMul)layer5/ActivityRegularizer/mul/x:output:0'layer5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer5/ActivityRegularizer/mulН
 layer5/ActivityRegularizer/ShapeShapelayer5/Relu:activations:0*
T0*
_output_shapes
:2"
 layer5/ActivityRegularizer/Shape™
.layer5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer5/ActivityRegularizer/strided_slice/stackЃ
0layer5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer5/ActivityRegularizer/strided_slice/stack_2Д
(layer5/ActivityRegularizer/strided_sliceStridedSlice)layer5/ActivityRegularizer/Shape:output:07layer5/ActivityRegularizer/strided_slice/stack:output:09layer5/ActivityRegularizer/strided_slice/stack_1:output:09layer5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer5/ActivityRegularizer/strided_slice≠
layer5/ActivityRegularizer/CastCast1layer5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer5/ActivityRegularizer/Castљ
"layer5/ActivityRegularizer/truedivRealDiv"layer5/ActivityRegularizer/mul:z:0#layer5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer5/ActivityRegularizer/truedivo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
flatten/Const∞
flatten/ReshapeReshape6mf_user_embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten/Reshapes
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€А  2
flatten_1/Constґ
flatten_1/ReshapeReshape6mf_item_embedding/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
flatten_1/ReshapeМ
multiply/mulMulflatten/Reshape:output:0flatten_1/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2
multiply/mulҐ
layer6/MatMul/ReadVariableOpReadVariableOp%layer6_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
layer6/MatMul/ReadVariableOpЫ
layer6/MatMulMatMullayer5/Relu:activations:0$layer6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer6/MatMul°
layer6/BiasAdd/ReadVariableOpReadVariableOp&layer6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
layer6/BiasAdd/ReadVariableOpЭ
layer6/BiasAddBiasAddlayer6/MatMul:product:0%layer6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer6/BiasAddm
layer6/ReluRelulayer6/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
layer6/ReluЭ
!layer6/ActivityRegularizer/SquareSquarelayer6/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2#
!layer6/ActivityRegularizer/SquareХ
 layer6/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 layer6/ActivityRegularizer/ConstЇ
layer6/ActivityRegularizer/SumSum%layer6/ActivityRegularizer/Square:y:0)layer6/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2 
layer6/ActivityRegularizer/SumЙ
 layer6/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52"
 layer6/ActivityRegularizer/mul/xЉ
layer6/ActivityRegularizer/mulMul)layer6/ActivityRegularizer/mul/x:output:0'layer6/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2 
layer6/ActivityRegularizer/mulН
 layer6/ActivityRegularizer/ShapeShapelayer6/Relu:activations:0*
T0*
_output_shapes
:2"
 layer6/ActivityRegularizer/Shape™
.layer6/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.layer6/ActivityRegularizer/strided_slice/stackЃ
0layer6/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_1Ѓ
0layer6/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0layer6/ActivityRegularizer/strided_slice/stack_2Д
(layer6/ActivityRegularizer/strided_sliceStridedSlice)layer6/ActivityRegularizer/Shape:output:07layer6/ActivityRegularizer/strided_slice/stack:output:09layer6/ActivityRegularizer/strided_slice/stack_1:output:09layer6/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(layer6/ActivityRegularizer/strided_slice≠
layer6/ActivityRegularizer/CastCast1layer6/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
layer6/ActivityRegularizer/Castљ
"layer6/ActivityRegularizer/truedivRealDiv"layer6/ActivityRegularizer/mul:z:0#layer6/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2$
"layer6/ActivityRegularizer/truedivx
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis≈
concatenate_1/concatConcatV2multiply/mul:z:0layer6/Relu:activations:0"concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€И2
concatenate_1/concat£
result/MatMul/ReadVariableOpReadVariableOp%result_matmul_readvariableop_resource*
_output_shapes
:	И*
dtype02
result/MatMul/ReadVariableOpЯ
result/MatMulMatMulconcatenate_1/concat:output:0$result/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
result/MatMul°
result/BiasAdd/ReadVariableOpReadVariableOp&result_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
result/BiasAdd/ReadVariableOpЭ
result/BiasAddBiasAddresult/MatMul:product:0%result/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
result/BiasAddv
result/SigmoidSigmoidresult/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
result/Sigmoidп
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*mlp_user_embedding_embedding_lookup_154585* 
_output_shapes
:
…А*
dtype02A
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpв
0mlp_user_embedding/embeddings/Regularizer/SquareSquareGmlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
…А22
0mlp_user_embedding/embeddings/Regularizer/Square≥
/mlp_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_user_embedding/embeddings/Regularizer/Constц
-mlp_user_embedding/embeddings/Regularizer/SumSum4mlp_user_embedding/embeddings/Regularizer/Square:y:08mlp_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/SumІ
/mlp_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_user_embedding/embeddings/Regularizer/mul/xш
-mlp_user_embedding/embeddings/Regularizer/mulMul8mlp_user_embedding/embeddings/Regularizer/mul/x:output:06mlp_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/mulо
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp*mlp_item_embedding_embedding_lookup_154579*
_output_shapes
:	А*
dtype02A
?mlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOpб
0mlp_item_embedding/embeddings/Regularizer/SquareSquareGmlp_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	А22
0mlp_item_embedding/embeddings/Regularizer/Square≥
/mlp_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_item_embedding/embeddings/Regularizer/Constц
-mlp_item_embedding/embeddings/Regularizer/SumSum4mlp_item_embedding/embeddings/Regularizer/Square:y:08mlp_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/SumІ
/mlp_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_item_embedding/embeddings/Regularizer/mul/xш
-mlp_item_embedding/embeddings/Regularizer/mulMul8mlp_item_embedding/embeddings/Regularizer/mul/x:output:06mlp_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_item_embedding/embeddings/Regularizer/mulл
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp)mf_user_embedding_embedding_lookup_154679*
_output_shapes
:	…@*
dtype02@
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpё
/mf_user_embedding/embeddings/Regularizer/SquareSquareFmf_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	…@21
/mf_user_embedding/embeddings/Regularizer/Square±
.mf_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_user_embedding/embeddings/Regularizer/Constт
,mf_user_embedding/embeddings/Regularizer/SumSum3mf_user_embedding/embeddings/Regularizer/Square:y:07mf_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/Sum•
.mf_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_user_embedding/embeddings/Regularizer/mul/xф
,mf_user_embedding/embeddings/Regularizer/mulMul7mf_user_embedding/embeddings/Regularizer/mul/x:output:05mf_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/mulк
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp)mf_item_embedding_embedding_lookup_154673*
_output_shapes

:@*
dtype02@
>mf_item_embedding/embeddings/Regularizer/Square/ReadVariableOpЁ
/mf_item_embedding/embeddings/Regularizer/SquareSquareFmf_item_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@21
/mf_item_embedding/embeddings/Regularizer/Square±
.mf_item_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_item_embedding/embeddings/Regularizer/Constт
,mf_item_embedding/embeddings/Regularizer/SumSum3mf_item_embedding/embeddings/Regularizer/Square:y:07mf_item_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/Sum•
.mf_item_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_item_embedding/embeddings/Regularizer/mul/xф
,mf_item_embedding/embeddings/Regularizer/mulMul7mf_item_embedding/embeddings/Regularizer/mul/x:output:05mf_item_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_item_embedding/embeddings/Regularizer/mulf
IdentityIdentityresult/Sigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identitym

Identity_1Identity&layer1/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_1m

Identity_2Identity&layer2/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_2m

Identity_3Identity&layer3/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_3m

Identity_4Identity&layer4/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_4m

Identity_5Identity&layer5/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_5m

Identity_6Identity&layer6/ActivityRegularizer/truediv:z:0*
T0*
_output_shapes
: 2

Identity_6"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0*Б
_input_shapesp
n:€€€€€€€€€:€€€€€€€€€:::::::::::::::::::Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
ђ
™
B__inference_result_layer_call_and_return_conditional_losses_153707

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	И*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoid_
IdentityIdentitySigmoid:y:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€И:::P L
(
_output_shapes
:€€€€€€€€€И
 
_user_specified_nameinputs
Ю
D
(__inference_flatten_layer_call_fn_155342

inputs
identity∆
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1535132
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
µ
К
N__inference_mlp_user_embedding_layer_call_and_return_conditional_losses_152911

inputs
embedding_lookup_152899
identityИ]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castю
embedding_lookupResourceGatherembedding_lookup_152899Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/152899*,
_output_shapes
:€€€€€€€€€А*
dtype02
embedding_lookupо
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/152899*,
_output_shapes
:€€€€€€€€€А2
embedding_lookup/Identity°
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
embedding_lookup/Identity_1№
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_152899* 
_output_shapes
:
…А*
dtype02A
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpв
0mlp_user_embedding/embeddings/Regularizer/SquareSquareGmlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
…А22
0mlp_user_embedding/embeddings/Regularizer/Square≥
/mlp_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_user_embedding/embeddings/Regularizer/Constц
-mlp_user_embedding/embeddings/Regularizer/SumSum4mlp_user_embedding/embeddings/Regularizer/Square:y:08mlp_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/SumІ
/mlp_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_user_embedding/embeddings/Regularizer/mul/xш
-mlp_user_embedding/embeddings/Regularizer/mulMul8mlp_user_embedding/embeddings/Regularizer/mul/x:output:06mlp_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/mul}
IdentityIdentity$embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
І
™
B__inference_layer6_layer_call_and_return_conditional_losses_155407

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€:::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ё
|
'__inference_result_layer_call_fn_155460

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_result_layer_call_and_return_conditional_losses_1537072
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€И::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€И
 
_user_specified_nameinputs
§
F
*__inference_flatten_2_layer_call_fn_155125

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_2_layer_call_and_return_conditional_losses_1529422
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0*+
_input_shapes
:€€€€€€€€€А:T P
,
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
™
™
B__inference_layer3_layer_call_and_return_conditional_losses_153187

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€А:::P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
І
™
B__inference_layer4_layer_call_and_return_conditional_losses_155311

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@:::O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
µ
К
N__inference_mlp_user_embedding_layer_call_and_return_conditional_losses_155078

inputs
embedding_lookup_155066
identityИ]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castю
embedding_lookupResourceGatherembedding_lookup_155066Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/155066*,
_output_shapes
:€€€€€€€€€А*
dtype02
embedding_lookupо
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/155066*,
_output_shapes
:€€€€€€€€€А2
embedding_lookup/Identity°
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2
embedding_lookup/Identity_1№
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_155066* 
_output_shapes
:
…А*
dtype02A
?mlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOpв
0mlp_user_embedding/embeddings/Regularizer/SquareSquareGmlp_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
…А22
0mlp_user_embedding/embeddings/Regularizer/Square≥
/mlp_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/mlp_user_embedding/embeddings/Regularizer/Constц
-mlp_user_embedding/embeddings/Regularizer/SumSum4mlp_user_embedding/embeddings/Regularizer/Square:y:08mlp_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/SumІ
/mlp_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж521
/mlp_user_embedding/embeddings/Regularizer/mul/xш
-mlp_user_embedding/embeddings/Regularizer/mulMul8mlp_user_embedding/embeddings/Regularizer/mul/x:output:06mlp_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mlp_user_embedding/embeddings/Regularizer/mul}
IdentityIdentity$embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ґ
F
*__inference_flatten_1_layer_call_fn_155353

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *1
config_proto!

CPU

GPU (2J 8В *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1535382
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€@:S O
+
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
№
|
'__inference_layer5_layer_call_fn_155373

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer5_layer_call_and_return_conditional_losses_1534452
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
І
™
B__inference_layer5_layer_call_and_return_conditional_losses_153445

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€ :::O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
№
|
'__inference_layer6_layer_call_fn_155416

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*1
config_proto!

CPU

GPU (2J 8В *K
fFRD
B__inference_layer6_layer_call_and_return_conditional_losses_1536002
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
І
™
B__inference_layer6_layer_call_and_return_conditional_losses_153600

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€:::O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
а
|
__inference_loss_fn_2_155523K
Gmf_user_embedding_embeddings_regularizer_square_readvariableop_resource
identityИЙ
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpGmf_user_embedding_embeddings_regularizer_square_readvariableop_resource*
_output_shapes
:	…@*
dtype02@
>mf_user_embedding/embeddings/Regularizer/Square/ReadVariableOpё
/mf_user_embedding/embeddings/Regularizer/SquareSquareFmf_user_embedding/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	…@21
/mf_user_embedding/embeddings/Regularizer/Square±
.mf_user_embedding/embeddings/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.mf_user_embedding/embeddings/Regularizer/Constт
,mf_user_embedding/embeddings/Regularizer/SumSum3mf_user_embedding/embeddings/Regularizer/Square:y:07mf_user_embedding/embeddings/Regularizer/Const:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/Sum•
.mf_user_embedding/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж520
.mf_user_embedding/embeddings/Regularizer/mul/xф
,mf_user_embedding/embeddings/Regularizer/mulMul7mf_user_embedding/embeddings/Regularizer/mul/x:output:05mf_user_embedding/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,mf_user_embedding/embeddings/Regularizer/muls
IdentityIdentity0mf_user_embedding/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:"чL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*т
serving_defaultё
A

item_input3
serving_default_item_input:0€€€€€€€€€
A

user_input3
serving_default_user_input:0€€€€€€€€€:
result0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ъљ
‘Н
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer-14
layer_with_weights-8
layer-15
layer-16
layer_with_weights-9
layer-17
layer-18
layer_with_weights-10
layer-19
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
И_default_save_signature
+Й&call_and_return_all_conditional_losses
К__call__"ЎЗ
_tf_keras_networkїЗ{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "user_input"}, "name": "user_input", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "item_input"}, "name": "item_input", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "mlp_user_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 969, "output_dim": 256, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "mlp_user_embedding", "inbound_nodes": [[["user_input", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "mlp_item_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 25, "output_dim": 256, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "mlp_item_embedding", "inbound_nodes": [[["item_input", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_2", "inbound_nodes": [[["mlp_user_embedding", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["mlp_item_embedding", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["flatten_2", 0, 0, {}], ["flatten_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer1", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer2", "inbound_nodes": [[["layer1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer3", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer3", "inbound_nodes": [[["layer2", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "mf_user_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 969, "output_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "mf_user_embedding", "inbound_nodes": [[["user_input", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "mf_item_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 25, "output_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "mf_item_embedding", "inbound_nodes": [[["item_input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer4", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer4", "inbound_nodes": [[["layer3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["mf_user_embedding", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["mf_item_embedding", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer5", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer5", "inbound_nodes": [[["layer4", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply", "trainable": true, "dtype": "float32"}, "name": "multiply", "inbound_nodes": [[["flatten", 0, 0, {}], ["flatten_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer6", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer6", "inbound_nodes": [[["layer5", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["multiply", 0, 0, {}], ["layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "result", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "LecunUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "result", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}], "input_layers": [["user_input", 0, 0], ["item_input", 0, 0]], "output_layers": [["result", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 6]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 6]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 6]}, {"class_name": "TensorShape", "items": [null, 6]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "user_input"}, "name": "user_input", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "item_input"}, "name": "item_input", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "mlp_user_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 969, "output_dim": 256, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "mlp_user_embedding", "inbound_nodes": [[["user_input", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "mlp_item_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 25, "output_dim": 256, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "mlp_item_embedding", "inbound_nodes": [[["item_input", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_2", "inbound_nodes": [[["mlp_user_embedding", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["mlp_item_embedding", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["flatten_2", 0, 0, {}], ["flatten_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer1", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer2", "inbound_nodes": [[["layer1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer3", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer3", "inbound_nodes": [[["layer2", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "mf_user_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 969, "output_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "mf_user_embedding", "inbound_nodes": [[["user_input", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "mf_item_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 25, "output_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "name": "mf_item_embedding", "inbound_nodes": [[["item_input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer4", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer4", "inbound_nodes": [[["layer3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["mf_user_embedding", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["mf_item_embedding", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer5", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer5", "inbound_nodes": [[["layer4", 0, 0, {}]]]}, {"class_name": "Multiply", "config": {"name": "multiply", "trainable": true, "dtype": "float32"}, "name": "multiply", "inbound_nodes": [[["flatten", 0, 0, {}], ["flatten_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "layer6", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "name": "layer6", "inbound_nodes": [[["layer5", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate_1", "inbound_nodes": [[["multiply", 0, 0, {}], ["layer6", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "result", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "LecunUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "result", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}], "input_layers": [["user_input", 0, 0], ["item_input", 0, 0]], "output_layers": [["result", 0, 0]]}}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": true, "label_smoothing": 0}}, "metrics": ["accuracy"], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
п"м
_tf_keras_input_layerћ{"class_name": "InputLayer", "name": "user_input", "dtype": "float64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "user_input"}}
п"м
_tf_keras_input_layerћ{"class_name": "InputLayer", "name": "item_input", "dtype": "float64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 6]}, "dtype": "float64", "sparse": false, "ragged": false, "name": "item_input"}}
ћ

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
+Л&call_and_return_all_conditional_losses
М__call__"Ђ
_tf_keras_layerС{"class_name": "Embedding", "name": "mlp_user_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "mlp_user_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 969, "output_dim": 256, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6]}}
Ћ
 
embeddings
!trainable_variables
"	variables
#regularization_losses
$	keras_api
+Н&call_and_return_all_conditional_losses
О__call__"™
_tf_keras_layerР{"class_name": "Embedding", "name": "mlp_item_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "mlp_item_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 25, "output_dim": 256, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6]}}
и
%trainable_variables
&	variables
'regularization_losses
(	keras_api
+П&call_and_return_all_conditional_losses
Р__call__"„
_tf_keras_layerљ{"class_name": "Flatten", "name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
и
)trainable_variables
*	variables
+regularization_losses
,	keras_api
+С&call_and_return_all_conditional_losses
Т__call__"„
_tf_keras_layerљ{"class_name": "Flatten", "name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
ѕ
-trainable_variables
.	variables
/regularization_losses
0	keras_api
+У&call_and_return_all_conditional_losses
Ф__call__"Њ
_tf_keras_layer§{"class_name": "Concatenate", "name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1536]}, {"class_name": "TensorShape", "items": [null, 1536]}]}
Е	

1kernel
2bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
+Х&call_and_return_all_conditional_losses
Ц__call__"ё
_tf_keras_layerƒ{"class_name": "Dense", "name": "layer1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer1", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3072}}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3072]}}
Г	

7kernel
8bias
9trainable_variables
:	variables
;regularization_losses
<	keras_api
+Ч&call_and_return_all_conditional_losses
Ш__call__"№
_tf_keras_layer¬{"class_name": "Dense", "name": "layer2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer2", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
В	

=kernel
>bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
+Щ&call_and_return_all_conditional_losses
Ъ__call__"џ
_tf_keras_layerЅ{"class_name": "Dense", "name": "layer3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer3", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
…
C
embeddings
Dtrainable_variables
E	variables
Fregularization_losses
G	keras_api
+Ы&call_and_return_all_conditional_losses
Ь__call__"®
_tf_keras_layerО{"class_name": "Embedding", "name": "mf_user_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "mf_user_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 969, "output_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6]}}
»
H
embeddings
Itrainable_variables
J	variables
Kregularization_losses
L	keras_api
+Э&call_and_return_all_conditional_losses
Ю__call__"І
_tf_keras_layerН{"class_name": "Embedding", "name": "mf_item_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "mf_item_embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "input_dim": 25, "output_dim": 64, "embeddings_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "embeddings_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 1}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 6]}}
А	

Mkernel
Nbias
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
+Я&call_and_return_all_conditional_losses
†__call__"ў
_tf_keras_layerњ{"class_name": "Dense", "name": "layer4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer4", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
д
Strainable_variables
T	variables
Uregularization_losses
V	keras_api
+°&call_and_return_all_conditional_losses
Ґ__call__"”
_tf_keras_layerє{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
и
Wtrainable_variables
X	variables
Yregularization_losses
Z	keras_api
+£&call_and_return_all_conditional_losses
§__call__"„
_tf_keras_layerљ{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
А	

[kernel
\bias
]trainable_variables
^	variables
_regularization_losses
`	keras_api
+•&call_and_return_all_conditional_losses
¶__call__"ў
_tf_keras_layerњ{"class_name": "Dense", "name": "layer5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer5", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
Є
atrainable_variables
b	variables
cregularization_losses
d	keras_api
+І&call_and_return_all_conditional_losses
®__call__"І
_tf_keras_layerН{"class_name": "Multiply", "name": "multiply", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "multiply", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 384]}, {"class_name": "TensorShape", "items": [null, 384]}]}
€

ekernel
fbias
gtrainable_variables
h	variables
iregularization_losses
j	keras_api
+©&call_and_return_all_conditional_losses
™__call__"Ў
_tf_keras_layerЊ{"class_name": "Dense", "name": "layer6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer6", "trainable": true, "dtype": "float32", "units": 8, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999974752427e-07}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
ѕ
ktrainable_variables
l	variables
mregularization_losses
n	keras_api
+Ђ&call_and_return_all_conditional_losses
ђ__call__"Њ
_tf_keras_layer§{"class_name": "Concatenate", "name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 384]}, {"class_name": "TensorShape", "items": [null, 8]}]}
у

okernel
pbias
qtrainable_variables
r	variables
sregularization_losses
t	keras_api
+≠&call_and_return_all_conditional_losses
Ѓ__call__"ћ
_tf_keras_layer≤{"class_name": "Dense", "name": "result", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "result", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "LecunUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 392}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 392]}}
ї
uiter

vbeta_1

wbeta_2
	xdecay
ylearning_ratemд mе1mж2mз7mи8mй=mк>mлCmмHmнMmоNmп[mр\mсemтfmуomфpmхvц vч1vш2vщ7vъ8vы=vь>vэCvюHv€MvАNvБ[vВ\vГevДfvЕovЖpvЗ"
	optimizer
¶
0
 1
12
23
74
85
=6
>7
C8
H9
M10
N11
[12
\13
e14
f15
o16
p17"
trackable_list_wrapper
¶
0
 1
12
23
74
85
=6
>7
C8
H9
M10
N11
[12
\13
e14
f15
o16
p17"
trackable_list_wrapper
@
ѓ0
∞1
±2
≤3"
trackable_list_wrapper
ќ
zmetrics
trainable_variables
{layer_metrics

|layers
}layer_regularization_losses
	variables
~non_trainable_variables
regularization_losses
К__call__
И_default_save_signature
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
-
≥serving_default"
signature_map
1:/
…А2mlp_user_embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
(
ѓ0"
trackable_list_wrapper
і
metrics
trainable_variables
Аlayer_metrics
Бlayers
 Вlayer_regularization_losses
	variables
Гnon_trainable_variables
regularization_losses
М__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
0:.	А2mlp_item_embedding/embeddings
'
 0"
trackable_list_wrapper
'
 0"
trackable_list_wrapper
(
∞0"
trackable_list_wrapper
µ
Дmetrics
!trainable_variables
Еlayer_metrics
Жlayers
 Зlayer_regularization_losses
"	variables
Иnon_trainable_variables
#regularization_losses
О__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Йmetrics
%trainable_variables
Кlayer_metrics
Лlayers
 Мlayer_regularization_losses
&	variables
Нnon_trainable_variables
'regularization_losses
Р__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Оmetrics
)trainable_variables
Пlayer_metrics
Рlayers
 Сlayer_regularization_losses
*	variables
Тnon_trainable_variables
+regularization_losses
Т__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Уmetrics
-trainable_variables
Фlayer_metrics
Хlayers
 Цlayer_regularization_losses
.	variables
Чnon_trainable_variables
/regularization_losses
Ф__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
!:
АА2layer1/kernel
:А2layer1/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
”
Шmetrics
3trainable_variables
Щlayer_metrics
Ъlayers
 Ыlayer_regularization_losses
4	variables
Ьnon_trainable_variables
5regularization_losses
Ц__call__
іactivity_regularizer_fn
+Х&call_and_return_all_conditional_losses
'µ"call_and_return_conditional_losses"
_generic_user_object
!:
АА2layer2/kernel
:А2layer2/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
”
Эmetrics
9trainable_variables
Юlayer_metrics
Яlayers
 †layer_regularization_losses
:	variables
°non_trainable_variables
;regularization_losses
Ш__call__
ґactivity_regularizer_fn
+Ч&call_and_return_all_conditional_losses
'Ј"call_and_return_conditional_losses"
_generic_user_object
 :	А@2layer3/kernel
:@2layer3/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
”
Ґmetrics
?trainable_variables
£layer_metrics
§layers
 •layer_regularization_losses
@	variables
¶non_trainable_variables
Aregularization_losses
Ъ__call__
Єactivity_regularizer_fn
+Щ&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
/:-	…@2mf_user_embedding/embeddings
'
C0"
trackable_list_wrapper
'
C0"
trackable_list_wrapper
(
±0"
trackable_list_wrapper
µ
Іmetrics
Dtrainable_variables
®layer_metrics
©layers
 ™layer_regularization_losses
E	variables
Ђnon_trainable_variables
Fregularization_losses
Ь__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
.:,@2mf_item_embedding/embeddings
'
H0"
trackable_list_wrapper
'
H0"
trackable_list_wrapper
(
≤0"
trackable_list_wrapper
µ
ђmetrics
Itrainable_variables
≠layer_metrics
Ѓlayers
 ѓlayer_regularization_losses
J	variables
∞non_trainable_variables
Kregularization_losses
Ю__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
:@ 2layer4/kernel
: 2layer4/bias
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
”
±metrics
Otrainable_variables
≤layer_metrics
≥layers
 іlayer_regularization_losses
P	variables
µnon_trainable_variables
Qregularization_losses
†__call__
Їactivity_regularizer_fn
+Я&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ґmetrics
Strainable_variables
Јlayer_metrics
Єlayers
 єlayer_regularization_losses
T	variables
Їnon_trainable_variables
Uregularization_losses
Ґ__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
їmetrics
Wtrainable_variables
Љlayer_metrics
љlayers
 Њlayer_regularization_losses
X	variables
њnon_trainable_variables
Yregularization_losses
§__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
: 2layer5/kernel
:2layer5/bias
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
”
јmetrics
]trainable_variables
Ѕlayer_metrics
¬layers
 √layer_regularization_losses
^	variables
ƒnon_trainable_variables
_regularization_losses
¶__call__
Љactivity_regularizer_fn
+•&call_and_return_all_conditional_losses
'љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
≈metrics
atrainable_variables
∆layer_metrics
«layers
 »layer_regularization_losses
b	variables
…non_trainable_variables
cregularization_losses
®__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
:2layer6/kernel
:2layer6/bias
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
”
 metrics
gtrainable_variables
Ћlayer_metrics
ћlayers
 Ќlayer_regularization_losses
h	variables
ќnon_trainable_variables
iregularization_losses
™__call__
Њactivity_regularizer_fn
+©&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ѕmetrics
ktrainable_variables
–layer_metrics
—layers
 “layer_regularization_losses
l	variables
”non_trainable_variables
mregularization_losses
ђ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
 :	И2result/kernel
:2result/bias
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
µ
‘metrics
qtrainable_variables
’layer_metrics
÷layers
 „layer_regularization_losses
r	variables
Ўnon_trainable_variables
sregularization_losses
Ѓ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
ў0
Џ1"
trackable_list_wrapper
 "
trackable_dict_wrapper
ґ
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
11
12
13
14
15
16
17
18
19"
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
(
ѓ0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
∞0"
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
(
±0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
≤0"
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

џtotal

№count
Ё	variables
ё	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
€

яtotal

аcount
б
_fn_kwargs
в	variables
г	keras_api"≥
_tf_keras_metricШ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}}
:  (2total
:  (2count
0
џ0
№1"
trackable_list_wrapper
.
Ё	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
я0
а1"
trackable_list_wrapper
.
в	variables"
_generic_user_object
6:4
…А2$Adam/mlp_user_embedding/embeddings/m
5:3	А2$Adam/mlp_item_embedding/embeddings/m
&:$
АА2Adam/layer1/kernel/m
:А2Adam/layer1/bias/m
&:$
АА2Adam/layer2/kernel/m
:А2Adam/layer2/bias/m
%:#	А@2Adam/layer3/kernel/m
:@2Adam/layer3/bias/m
4:2	…@2#Adam/mf_user_embedding/embeddings/m
3:1@2#Adam/mf_item_embedding/embeddings/m
$:"@ 2Adam/layer4/kernel/m
: 2Adam/layer4/bias/m
$:" 2Adam/layer5/kernel/m
:2Adam/layer5/bias/m
$:"2Adam/layer6/kernel/m
:2Adam/layer6/bias/m
%:#	И2Adam/result/kernel/m
:2Adam/result/bias/m
6:4
…А2$Adam/mlp_user_embedding/embeddings/v
5:3	А2$Adam/mlp_item_embedding/embeddings/v
&:$
АА2Adam/layer1/kernel/v
:А2Adam/layer1/bias/v
&:$
АА2Adam/layer2/kernel/v
:А2Adam/layer2/bias/v
%:#	А@2Adam/layer3/kernel/v
:@2Adam/layer3/bias/v
4:2	…@2#Adam/mf_user_embedding/embeddings/v
3:1@2#Adam/mf_item_embedding/embeddings/v
$:"@ 2Adam/layer4/kernel/v
: 2Adam/layer4/bias/v
$:" 2Adam/layer5/kernel/v
:2Adam/layer5/bias/v
$:"2Adam/layer6/kernel/v
:2Adam/layer6/bias/v
%:#	И2Adam/result/kernel/v
:2Adam/result/bias/v
Н2К
!__inference__wrapped_model_152673д
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
annotations™ *TҐQ
OЪL
$К!

user_input€€€€€€€€€
$К!

item_input€€€€€€€€€
“2ѕ
A__inference_model_layer_call_and_return_conditional_losses_154037
A__inference_model_layer_call_and_return_conditional_losses_154960
A__inference_model_layer_call_and_return_conditional_losses_154767
A__inference_model_layer_call_and_return_conditional_losses_153900ј
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
ж2г
&__inference_model_layer_call_fn_155056
&__inference_model_layer_call_fn_154271
&__inference_model_layer_call_fn_155008
&__inference_model_layer_call_fn_154456ј
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
ш2х
N__inference_mlp_user_embedding_layer_call_and_return_conditional_losses_155078Ґ
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
Ё2Џ
3__inference_mlp_user_embedding_layer_call_fn_155085Ґ
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
ш2х
N__inference_mlp_item_embedding_layer_call_and_return_conditional_losses_155107Ґ
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
Ё2Џ
3__inference_mlp_item_embedding_layer_call_fn_155114Ґ
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
п2м
E__inference_flatten_2_layer_call_and_return_conditional_losses_155120Ґ
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
*__inference_flatten_2_layer_call_fn_155125Ґ
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
п2м
E__inference_flatten_3_layer_call_and_return_conditional_losses_155131Ґ
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
*__inference_flatten_3_layer_call_fn_155136Ґ
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
с2о
G__inference_concatenate_layer_call_and_return_conditional_losses_155143Ґ
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
÷2”
,__inference_concatenate_layer_call_fn_155149Ґ
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
р2н
F__inference_layer1_layer_call_and_return_all_conditional_losses_155180Ґ
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
—2ќ
'__inference_layer1_layer_call_fn_155169Ґ
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
р2н
F__inference_layer2_layer_call_and_return_all_conditional_losses_155211Ґ
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
—2ќ
'__inference_layer2_layer_call_fn_155200Ґ
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
р2н
F__inference_layer3_layer_call_and_return_all_conditional_losses_155242Ґ
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
—2ќ
'__inference_layer3_layer_call_fn_155231Ґ
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
ч2ф
M__inference_mf_user_embedding_layer_call_and_return_conditional_losses_155264Ґ
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
№2ў
2__inference_mf_user_embedding_layer_call_fn_155271Ґ
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
ч2ф
M__inference_mf_item_embedding_layer_call_and_return_conditional_losses_155293Ґ
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
№2ў
2__inference_mf_item_embedding_layer_call_fn_155300Ґ
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
р2н
F__inference_layer4_layer_call_and_return_all_conditional_losses_155331Ґ
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
—2ќ
'__inference_layer4_layer_call_fn_155320Ґ
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
C__inference_flatten_layer_call_and_return_conditional_losses_155337Ґ
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
(__inference_flatten_layer_call_fn_155342Ґ
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
п2м
E__inference_flatten_1_layer_call_and_return_conditional_losses_155348Ґ
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
*__inference_flatten_1_layer_call_fn_155353Ґ
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
р2н
F__inference_layer5_layer_call_and_return_all_conditional_losses_155384Ґ
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
—2ќ
'__inference_layer5_layer_call_fn_155373Ґ
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
о2л
D__inference_multiply_layer_call_and_return_conditional_losses_155390Ґ
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
)__inference_multiply_layer_call_fn_155396Ґ
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
р2н
F__inference_layer6_layer_call_and_return_all_conditional_losses_155427Ґ
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
—2ќ
'__inference_layer6_layer_call_fn_155416Ґ
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
у2р
I__inference_concatenate_1_layer_call_and_return_conditional_losses_155434Ґ
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
Ў2’
.__inference_concatenate_1_layer_call_fn_155440Ґ
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
м2й
B__inference_result_layer_call_and_return_conditional_losses_155451Ґ
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
—2ќ
'__inference_result_layer_call_fn_155460Ґ
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
≥2∞
__inference_loss_fn_0_155481П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_1_155502П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_2_155523П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
≥2∞
__inference_loss_fn_3_155544П
З≤Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ 
@B>
$__inference_signature_wrapper_154574
item_input
user_input
Ё2Џ
.__inference_layer1_activity_regularizer_152698І
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
м2й
B__inference_layer1_layer_call_and_return_conditional_losses_155160Ґ
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
Ё2Џ
.__inference_layer2_activity_regularizer_152723І
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
м2й
B__inference_layer2_layer_call_and_return_conditional_losses_155191Ґ
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
Ё2Џ
.__inference_layer3_activity_regularizer_152748І
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
м2й
B__inference_layer3_layer_call_and_return_conditional_losses_155222Ґ
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
Ё2Џ
.__inference_layer4_activity_regularizer_152773І
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
м2й
B__inference_layer4_layer_call_and_return_conditional_losses_155311Ґ
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
Ё2Џ
.__inference_layer5_activity_regularizer_152798І
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
м2й
B__inference_layer5_layer_call_and_return_conditional_losses_155364Ґ
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
Ё2Џ
.__inference_layer6_activity_regularizer_152823І
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *Ґ
	К
м2й
B__inference_layer6_layer_call_and_return_conditional_losses_155407Ґ
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
 Ћ
!__inference__wrapped_model_152673• 1278=>MNHC[\efop^Ґ[
TҐQ
OЪL
$К!

user_input€€€€€€€€€
$К!

item_input€€€€€€€€€
™ "/™,
*
result К
result€€€€€€€€€”
I__inference_concatenate_1_layer_call_and_return_conditional_losses_155434Е[ҐX
QҐN
LЪI
#К 
inputs/0€€€€€€€€€А
"К
inputs/1€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€И
Ъ ™
.__inference_concatenate_1_layer_call_fn_155440x[ҐX
QҐN
LЪI
#К 
inputs/0€€€€€€€€€А
"К
inputs/1€€€€€€€€€
™ "К€€€€€€€€€И“
G__inference_concatenate_layer_call_and_return_conditional_losses_155143Ж\ҐY
RҐO
MЪJ
#К 
inputs/0€€€€€€€€€А
#К 
inputs/1€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ©
,__inference_concatenate_layer_call_fn_155149y\ҐY
RҐO
MЪJ
#К 
inputs/0€€€€€€€€€А
#К 
inputs/1€€€€€€€€€А
™ "К€€€€€€€€€А¶
E__inference_flatten_1_layer_call_and_return_conditional_losses_155348]3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ~
*__inference_flatten_1_layer_call_fn_155353P3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "К€€€€€€€€€АІ
E__inference_flatten_2_layer_call_and_return_conditional_losses_155120^4Ґ1
*Ґ'
%К"
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_flatten_2_layer_call_fn_155125Q4Ґ1
*Ґ'
%К"
inputs€€€€€€€€€А
™ "К€€€€€€€€€АІ
E__inference_flatten_3_layer_call_and_return_conditional_losses_155131^4Ґ1
*Ґ'
%К"
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_flatten_3_layer_call_fn_155136Q4Ґ1
*Ґ'
%К"
inputs€€€€€€€€€А
™ "К€€€€€€€€€А§
C__inference_flatten_layer_call_and_return_conditional_losses_155337]3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "&Ґ#
К
0€€€€€€€€€А
Ъ |
(__inference_flatten_layer_call_fn_155342P3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€@
™ "К€€€€€€€€€А[
.__inference_layer1_activity_regularizer_152698)Ґ
Ґ
К
self
™ "К ґ
F__inference_layer1_layer_call_and_return_all_conditional_losses_155180l120Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "4Ґ1
К
0€€€€€€€€€А
Ъ
К	
1/0 §
B__inference_layer1_layer_call_and_return_conditional_losses_155160^120Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ |
'__inference_layer1_layer_call_fn_155169Q120Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А[
.__inference_layer2_activity_regularizer_152723)Ґ
Ґ
К
self
™ "К ґ
F__inference_layer2_layer_call_and_return_all_conditional_losses_155211l780Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "4Ґ1
К
0€€€€€€€€€А
Ъ
К	
1/0 §
B__inference_layer2_layer_call_and_return_conditional_losses_155191^780Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ |
'__inference_layer2_layer_call_fn_155200Q780Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А[
.__inference_layer3_activity_regularizer_152748)Ґ
Ґ
К
self
™ "К µ
F__inference_layer3_layer_call_and_return_all_conditional_losses_155242k=>0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "3Ґ0
К
0€€€€€€€€€@
Ъ
К	
1/0 £
B__inference_layer3_layer_call_and_return_conditional_losses_155222]=>0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€@
Ъ {
'__inference_layer3_layer_call_fn_155231P=>0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€@[
.__inference_layer4_activity_regularizer_152773)Ґ
Ґ
К
self
™ "К і
F__inference_layer4_layer_call_and_return_all_conditional_losses_155331jMN/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "3Ґ0
К
0€€€€€€€€€ 
Ъ
К	
1/0 Ґ
B__inference_layer4_layer_call_and_return_conditional_losses_155311\MN/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ z
'__inference_layer4_layer_call_fn_155320OMN/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€ [
.__inference_layer5_activity_regularizer_152798)Ґ
Ґ
К
self
™ "К і
F__inference_layer5_layer_call_and_return_all_conditional_losses_155384j[\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "3Ґ0
К
0€€€€€€€€€
Ъ
К	
1/0 Ґ
B__inference_layer5_layer_call_and_return_conditional_losses_155364\[\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "%Ґ"
К
0€€€€€€€€€
Ъ z
'__inference_layer5_layer_call_fn_155373O[\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "К€€€€€€€€€[
.__inference_layer6_activity_regularizer_152823)Ґ
Ґ
К
self
™ "К і
F__inference_layer6_layer_call_and_return_all_conditional_losses_155427jef/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "3Ґ0
К
0€€€€€€€€€
Ъ
К	
1/0 Ґ
B__inference_layer6_layer_call_and_return_conditional_losses_155407\ef/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€
Ъ z
'__inference_layer6_layer_call_fn_155416Oef/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€;
__inference_loss_fn_0_155481Ґ

Ґ 
™ "К ;
__inference_loss_fn_1_155502 Ґ

Ґ 
™ "К ;
__inference_loss_fn_2_155523CҐ

Ґ 
™ "К ;
__inference_loss_fn_3_155544HҐ

Ґ 
™ "К ∞
M__inference_mf_item_embedding_layer_call_and_return_conditional_losses_155293_H/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€@
Ъ И
2__inference_mf_item_embedding_layer_call_fn_155300RH/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€@∞
M__inference_mf_user_embedding_layer_call_and_return_conditional_losses_155264_C/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€@
Ъ И
2__inference_mf_user_embedding_layer_call_fn_155271RC/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€@≤
N__inference_mlp_item_embedding_layer_call_and_return_conditional_losses_155107` /Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "*Ґ'
 К
0€€€€€€€€€А
Ъ К
3__inference_mlp_item_embedding_layer_call_fn_155114S /Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€А≤
N__inference_mlp_user_embedding_layer_call_and_return_conditional_losses_155078`/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "*Ґ'
 К
0€€€€€€€€€А
Ъ К
3__inference_mlp_user_embedding_layer_call_fn_155085S/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€Аљ
A__inference_model_layer_call_and_return_conditional_losses_153900ч 1278=>MNHC[\efopfҐc
\ҐY
OЪL
$К!

user_input€€€€€€€€€
$К!

item_input€€€€€€€€€
p

 
™ "yҐv
К
0€€€€€€€€€
WЪT
К	
1/0 
К	
1/1 
К	
1/2 
К	
1/3 
К	
1/4 
К	
1/5 љ
A__inference_model_layer_call_and_return_conditional_losses_154037ч 1278=>MNHC[\efopfҐc
\ҐY
OЪL
$К!

user_input€€€€€€€€€
$К!

item_input€€€€€€€€€
p 

 
™ "yҐv
К
0€€€€€€€€€
WЪT
К	
1/0 
К	
1/1 
К	
1/2 
К	
1/3 
К	
1/4 
К	
1/5 є
A__inference_model_layer_call_and_return_conditional_losses_154767у 1278=>MNHC[\efopbҐ_
XҐU
KЪH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
p

 
™ "yҐv
К
0€€€€€€€€€
WЪT
К	
1/0 
К	
1/1 
К	
1/2 
К	
1/3 
К	
1/4 
К	
1/5 є
A__inference_model_layer_call_and_return_conditional_losses_154960у 1278=>MNHC[\efopbҐ_
XҐU
KЪH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
p 

 
™ "yҐv
К
0€€€€€€€€€
WЪT
К	
1/0 
К	
1/1 
К	
1/2 
К	
1/3 
К	
1/4 
К	
1/5 Ѕ
&__inference_model_layer_call_fn_154271Ц 1278=>MNHC[\efopfҐc
\ҐY
OЪL
$К!

user_input€€€€€€€€€
$К!

item_input€€€€€€€€€
p

 
™ "К€€€€€€€€€Ѕ
&__inference_model_layer_call_fn_154456Ц 1278=>MNHC[\efopfҐc
\ҐY
OЪL
$К!

user_input€€€€€€€€€
$К!

item_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€љ
&__inference_model_layer_call_fn_155008Т 1278=>MNHC[\efopbҐ_
XҐU
KЪH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
p

 
™ "К€€€€€€€€€љ
&__inference_model_layer_call_fn_155056Т 1278=>MNHC[\efopbҐ_
XҐU
KЪH
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
p 

 
™ "К€€€€€€€€€ѕ
D__inference_multiply_layer_call_and_return_conditional_losses_155390Ж\ҐY
RҐO
MЪJ
#К 
inputs/0€€€€€€€€€А
#К 
inputs/1€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ¶
)__inference_multiply_layer_call_fn_155396y\ҐY
RҐO
MЪJ
#К 
inputs/0€€€€€€€€€А
#К 
inputs/1€€€€€€€€€А
™ "К€€€€€€€€€А£
B__inference_result_layer_call_and_return_conditional_losses_155451]op0Ґ-
&Ґ#
!К
inputs€€€€€€€€€И
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
'__inference_result_layer_call_fn_155460Pop0Ґ-
&Ґ#
!К
inputs€€€€€€€€€И
™ "К€€€€€€€€€е
$__inference_signature_wrapper_154574Љ 1278=>MNHC[\efopuҐr
Ґ 
k™h
2

item_input$К!

item_input€€€€€€€€€
2

user_input$К!

user_input€€€€€€€€€"/™,
*
result К
result€€€€€€€€€