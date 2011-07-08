.class Lcom/nemustech/tiffany/world/TFGL;
.super Ljava/lang/Object;
.source "TFGL.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL;
.implements Ljavax/microedition/khronos/opengles/GL10;
.implements Ljavax/microedition/khronos/opengles/GL10Ext;
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Ljavax/microedition/khronos/opengles/GL11Ext;


# static fields
.field private static final _check:Z


# instance fields
.field mByteBuffer:Ljava/nio/ByteBuffer;

.field mCheckA:[F

.field mCheckB:[F

.field private mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

.field mFloatBuffer:Ljava/nio/FloatBuffer;

.field private mMatrixMode:I

.field private mModelView:Lcom/nemustech/tiffany/world/MatrixStack;

.field private mProjection:Lcom/nemustech/tiffany/world/MatrixStack;

.field private mTexture:Lcom/nemustech/tiffany/world/MatrixStack;

.field private mWorld:Lcom/nemustech/tiffany/world/TFWorld;

.field private mgl:Ljavax/microedition/khronos/opengles/GL10;

.field private mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

.field private mgl11:Ljavax/microedition/khronos/opengles/GL11;

.field private mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;Lcom/nemustech/tiffany/world/TFWorld;)V
    .locals 2
    .parameter "gl"
    .parameter "world"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/nemustech/tiffany/world/TFGL;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    .line 65
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v1, v0

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    .line 66
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL10Ext;

    if-eqz v1, :cond_0

    .line 67
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10Ext;

    move-object v1, v0

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    .line 69
    :cond_0
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_1

    .line 70
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 72
    :cond_1
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v1, :cond_2

    .line 73
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    .end local p1
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 75
    :cond_2
    new-instance v1, Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-direct {v1}, Lcom/nemustech/tiffany/world/MatrixStack;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mModelView:Lcom/nemustech/tiffany/world/MatrixStack;

    .line 76
    new-instance v1, Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-direct {v1}, Lcom/nemustech/tiffany/world/MatrixStack;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mProjection:Lcom/nemustech/tiffany/world/MatrixStack;

    .line 77
    new-instance v1, Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-direct {v1}, Lcom/nemustech/tiffany/world/MatrixStack;-><init>()V

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mTexture:Lcom/nemustech/tiffany/world/MatrixStack;

    .line 78
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mModelView:Lcom/nemustech/tiffany/world/MatrixStack;

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    .line 79
    const/16 v1, 0x1700

    iput v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mMatrixMode:I

    .line 80
    return-void
.end method

.method private check()V
    .locals 8

    .prologue
    const/16 v6, 0x10

    const-string v7, " a:"

    .line 1083
    iget v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mMatrixMode:I

    packed-switch v3, :pswitch_data_0

    .line 1094
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown matrix mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1085
    :pswitch_0
    const v2, 0x898d

    .line 1097
    .local v2, oesMode:I
    :goto_0
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_0

    .line 1098
    new-array v3, v6, [F

    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mCheckA:[F

    .line 1099
    new-array v3, v6, [F

    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mCheckB:[F

    .line 1100
    const/16 v3, 0x40

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 1101
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1102
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 1104
    :cond_0
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 1105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 1106
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mCheckB:[F

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFGL;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    aput v4, v3, v1

    .line 1105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1088
    .end local v1           #i:I
    .end local v2           #oesMode:I
    :pswitch_1
    const v2, 0x898e

    .line 1089
    .restart local v2       #oesMode:I
    goto :goto_0

    .line 1091
    .end local v2           #oesMode:I
    :pswitch_2
    const v2, 0x898f

    .line 1092
    .restart local v2       #oesMode:I
    goto :goto_0

    .line 1108
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFGL;->mCheckA:[F

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/nemustech/tiffany/world/MatrixStack;->getMatrix([FI)V

    .line 1110
    const/4 v0, 0x0

    .line 1111
    .local v0, fail:Z
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_3

    .line 1112
    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mCheckA:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFGL;->mCheckB:[F

    aget v4, v4, v1

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 1113
    const-string v3, "GLMatWrap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFGL;->mCheckA:[F

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFGL;->mCheckB:[F

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/4 v0, 0x1

    .line 1111
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1118
    :cond_3
    if-eqz v0, :cond_4

    .line 1119
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Matrix math difference."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1121
    :cond_4
    return-void

    .line 1083
    nop

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isSoftMatrixCalcNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1069
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFWorld;->isCapable(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mWorld:Lcom/nemustech/tiffany/world/TFWorld;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/world/TFWorld;->mBanQueryingMatrix:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMatrix([FI)V
    .locals 4
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1038
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v2, p1, p2}, Lcom/nemustech/tiffany/world/MatrixStack;->getMatrix([FI)V

    .line 1066
    :cond_0
    return-void

    .line 1042
    :cond_1
    iget v2, p0, Lcom/nemustech/tiffany/world/TFGL;->mMatrixMode:I

    packed-switch v2, :pswitch_data_0

    .line 1053
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown matrix mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1044
    :pswitch_0
    const v1, 0x898d

    .line 1055
    .local v1, oesMode:I
    :goto_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    .line 1056
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 1057
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1058
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFGL;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 1061
    :cond_2
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 1062
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 1063
    add-int v2, v0, p2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFGL;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, p1, v2

    .line 1062
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1047
    .end local v0           #i:I
    .end local v1           #oesMode:I
    :pswitch_1
    const v1, 0x898e

    .line 1048
    .restart local v1       #oesMode:I
    goto :goto_0

    .line 1050
    .end local v1           #oesMode:I
    :pswitch_2
    const v1, 0x898f

    .line 1051
    .restart local v1       #oesMode:I
    goto :goto_0

    .line 1042
    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMatrixMode()I
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mMatrixMode:I

    return v0
.end method

.method public glActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 87
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 91
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 95
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .parameter "target"
    .parameter "buffer"

    .prologue
    .line 758
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glBindTexture(II)V
    .locals 1
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 99
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .parameter "sfactor"
    .parameter "dfactor"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 103
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .parameter "target"
    .parameter "size"
    .parameter "data"
    .parameter "usage"

    .prologue
    .line 762
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "target"
    .parameter "offset"
    .parameter "size"
    .parameter "data"

    .prologue
    .line 766
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glClear(I)V
    .locals 1
    .parameter "mask"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 107
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 111
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 115
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .parameter "depth"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 119
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .parameter "depth"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 123
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .parameter "s"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 127
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 131
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 683
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 1
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 679
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 690
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 691
    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 1
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    .line 687
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 135
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 770
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glColor4x(IIII)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 139
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 144
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 982
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 148
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "width"
    .parameter "height"
    .parameter "border"
    .parameter "imageSize"
    .parameter "data"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 155
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "imageSize"
    .parameter "data"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 162
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "border"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 168
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 174
    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 178
    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1
    .parameter "matrixpaletteindex"

    .prologue
    .line 1006
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "buffers"

    .prologue
    .line 778
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteBuffers(I[II)V
    .locals 1
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 774
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 186
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 182
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .parameter "func"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 190
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 194
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 198
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 202
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .parameter "cap"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 206
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 1
    .parameter "array"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 210
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1
    .parameter "mode"
    .parameter "first"
    .parameter "count"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 214
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "offset"

    .prologue
    .line 986
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "indices"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 218
    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 698
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 706
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    .line 702
    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 710
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 718
    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    .line 714
    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    .line 723
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 731
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    .line 727
    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    .line 735
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 743
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    .line 739
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .parameter "cap"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 222
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 1
    .parameter "array"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 226
    return-void
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 230
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 234
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 238
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 246
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 242
    return-void
.end method

.method public glFogx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 250
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 258
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 254
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 262
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nemustech/tiffany/world/MatrixStack;->glFrustumf(FFFFFF)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 269
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nemustech/tiffany/world/MatrixStack;->glFrustumx(IIIIII)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 276
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "buffers"

    .prologue
    .line 786
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGenBuffers(I[II)V
    .locals 1
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 782
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 284
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 1
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 280
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 794
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 790
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 802
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 798
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"

    .prologue
    .line 810
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"
    .parameter "offset"

    .prologue
    .line 806
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"

    .prologue
    .line 818
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanex(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"
    .parameter "offset"

    .prologue
    .line 814
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetError()I
    .locals 2

    .prologue
    .line 287
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 288
    .local v0, result:I
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 826
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFixedv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 822
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 834
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFloatv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 830
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 297
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 293
    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightfv(II[FI)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 838
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightxv(II[II)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 846
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 858
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 854
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 866
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialxv(II[II)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 862
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 990
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 874
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnviv(II[II)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 870
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 882
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 878
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 890
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 886
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 898
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 894
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 906
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 902
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glHint(II)V
    .locals 1
    .parameter "target"
    .parameter "mode"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 306
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .parameter "buffer"

    .prologue
    .line 910
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .parameter "cap"

    .prologue
    .line 914
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .parameter "texture"

    .prologue
    .line 918
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glLightModelf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 310
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 318
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 314
    return-void
.end method

.method public glLightModelx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 322
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 330
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 326
    return-void
.end method

.method public glLightf(IIF)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 334
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 342
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 338
    return-void
.end method

.method public glLightx(III)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 346
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 354
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 350
    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 358
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 362
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/MatrixStack;->glLoadIdentity()V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 368
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 377
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    .line 378
    .local v0, position:I
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/MatrixStack;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 379
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 380
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 382
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/world/MatrixStack;->glLoadMatrixf([FI)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 374
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 391
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    .line 392
    .local v0, position:I
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/MatrixStack;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 393
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 394
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 396
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/world/MatrixStack;->glLoadMatrixx([II)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 388
    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    .prologue
    .line 1010
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glLogicOp(I)V
    .locals 1
    .parameter "opcode"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 400
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 404
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 412
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 408
    return-void
.end method

.method public glMaterialx(III)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 416
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 424
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 420
    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1020
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 1015
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glMatrixMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown matrix mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mModelView:Lcom/nemustech/tiffany/world/MatrixStack;

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    .line 440
    :goto_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 441
    iput p1, p0, Lcom/nemustech/tiffany/world/TFGL;->mMatrixMode:I

    .line 443
    return-void

    .line 432
    :pswitch_1
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mTexture:Lcom/nemustech/tiffany/world/MatrixStack;

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    goto :goto_0

    .line 435
    :pswitch_2
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mProjection:Lcom/nemustech/tiffany/world/MatrixStack;

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 452
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    .line 453
    .local v0, position:I
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/MatrixStack;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 454
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 455
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 457
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/world/MatrixStack;->glMultMatrixf([FI)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 449
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 466
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    .line 467
    .local v0, position:I
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/nemustech/tiffany/world/MatrixStack;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 468
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 469
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 471
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/nemustech/tiffany/world/MatrixStack;->glMultMatrixx([II)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 463
    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6
    .parameter "target"
    .parameter "s"
    .parameter "t"
    .parameter "r"
    .parameter "q"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 476
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6
    .parameter "target"
    .parameter "s"
    .parameter "t"
    .parameter "r"
    .parameter "q"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 480
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 484
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 488
    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 994
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 492
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nemustech/tiffany/world/MatrixStack;->glOrthof(FFFFFF)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 499
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 503
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nemustech/tiffany/world/MatrixStack;->glOrthox(IIIIII)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 506
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 510
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 922
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 930
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 926
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 934
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 942
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 938
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 514
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 946
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSizex(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 518
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 522
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 526
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/MatrixStack;->glPopMatrix()V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 532
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/MatrixStack;->glPushMatrix()V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 538
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 1
    .parameter "mantissa"
    .parameter "exponent"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 1
    .parameter "mantissa"
    .parameter "mantissaOffset"
    .parameter "exponent"
    .parameter "exponentOffset"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 543
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/world/MatrixStack;->glRotatef(FFFF)V

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 549
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/world/MatrixStack;->glRotatex(IIII)V

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 555
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 559
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 563
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nemustech/tiffany/world/MatrixStack;->glScalef(FFF)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 569
    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nemustech/tiffany/world/MatrixStack;->glScalex(III)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 575
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 579
    return-void
.end method

.method public glShadeModel(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 583
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .parameter "func"
    .parameter "ref"
    .parameter "mask"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 587
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .parameter "mask"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 591
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .parameter "fail"
    .parameter "zfail"
    .parameter "zpass"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 595
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 998
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 600
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 604
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 612
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 608
    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 950
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 958
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnviv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 954
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnvx(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 616
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 624
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 620
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "width"
    .parameter "height"
    .parameter "border"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 631
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 635
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 966
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameterfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 962
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameteri(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 970
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 647
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 643
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 639
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 978
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameterxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 974
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 654
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nemustech/tiffany/world/MatrixStack;->glTranslatef(FFF)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 660
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFGL;->isSoftMatrixCalcNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mCurrent:Lcom/nemustech/tiffany/world/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nemustech/tiffany/world/MatrixStack;->glTranslatex(III)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 666
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1002
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 671
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 675
    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 1025
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
