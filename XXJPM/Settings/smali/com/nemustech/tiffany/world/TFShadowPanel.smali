.class public Lcom/nemustech/tiffany/world/TFShadowPanel;
.super Lcom/nemustech/tiffany/world/TFCustomPanel;
.source "TFShadowPanel.java"


# static fields
.field static final TAG:Ljava/lang/String; = "TFShadowPanel"


# instance fields
.field protected mColorBuffer:Ljava/nio/FloatBuffer;

.field protected mCustomColorBuffer:[F

.field protected mIsColorBufferEmpty:Z


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v0, 0x8

    .line 28
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/nemustech/tiffany/world/TFCustomPanel;-><init>(FFII)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mRequestUpdateTexCoordCount:I

    .line 30
    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "meshWidth"
    .parameter "meshHeight"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nemustech/tiffany/world/TFCustomPanel;-><init>(FFII)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mRequestUpdateTexCoordCount:I

    .line 41
    return-void
.end method


# virtual methods
.method protected buildColorArray()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 83
    iget v5, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshWidth:I

    .line 84
    .local v5, meshW:I
    iget v4, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshHeight:I

    .line 85
    .local v4, meshH:I
    iget v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshWidth:I

    add-int/lit8 v7, v8, 0x1

    .line 87
    .local v7, vertexW:I
    iget-object v6, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mTempFloat8:[F

    .line 89
    .local v6, rgba:[F
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 91
    add-int/lit8 v8, v3, 0x1

    mul-int/2addr v8, v7

    mul-int/lit8 v1, v8, 0x4

    .line 92
    .local v1, index1:I
    mul-int v8, v3, v7

    mul-int/lit8 v2, v8, 0x4

    .line 93
    .local v2, index2:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v5, :cond_0

    .line 94
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    add-int/lit8 v9, v1, 0x0

    aget v8, v8, v9

    aput v8, v6, v11

    .line 95
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    add-int/lit8 v10, v1, 0x1

    aget v9, v9, v10

    aput v9, v6, v8

    .line 96
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    add-int/lit8 v10, v1, 0x2

    aget v9, v9, v10

    aput v9, v6, v8

    .line 97
    const/4 v8, 0x3

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    add-int/lit8 v10, v1, 0x3

    aget v9, v9, v10

    aput v9, v6, v8

    .line 98
    const/4 v8, 0x4

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    add-int/lit8 v10, v2, 0x0

    aget v9, v9, v10

    aput v9, v6, v8

    .line 99
    const/4 v8, 0x5

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    aput v9, v6, v8

    .line 100
    const/4 v8, 0x6

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    add-int/lit8 v10, v2, 0x2

    aget v9, v9, v10

    aput v9, v6, v8

    .line 101
    const/4 v8, 0x7

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    add-int/lit8 v10, v2, 0x3

    aget v9, v9, v10

    aput v9, v6, v8

    .line 102
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 103
    add-int/lit8 v1, v1, 0x4

    .line 104
    add-int/lit8 v2, v2, 0x4

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v0           #i:I
    .end local v1           #index1:I
    .end local v2           #index2:I
    :cond_1
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    return-void
.end method

.method protected buildVertexArray()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 57
    iget v5, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshWidth:I

    .line 58
    .local v5, meshW:I
    iget v4, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshHeight:I

    .line 59
    .local v4, meshH:I
    iget v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshWidth:I

    add-int/lit8 v6, v8, 0x1

    .line 61
    .local v6, vertexW:I
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mTempFloat6:[F

    .line 63
    .local v7, xyz:[F
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 65
    add-int/lit8 v8, v3, 0x1

    mul-int/2addr v8, v6

    mul-int/lit8 v1, v8, 0x3

    .line 66
    .local v1, index1:I
    mul-int v8, v3, v6

    mul-int/lit8 v2, v8, 0x3

    .line 67
    .local v2, index2:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-gt v0, v5, :cond_0

    .line 68
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshVertex:[F

    add-int/lit8 v9, v1, 0x0

    aget v8, v8, v9

    aput v8, v7, v11

    .line 69
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshVertex:[F

    add-int/lit8 v10, v1, 0x1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 70
    const/4 v8, 0x2

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshVertex:[F

    add-int/lit8 v10, v1, 0x2

    aget v9, v9, v10

    aput v9, v7, v8

    .line 71
    const/4 v8, 0x3

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshVertex:[F

    add-int/lit8 v10, v2, 0x0

    aget v9, v9, v10

    aput v9, v7, v8

    .line 72
    const/4 v8, 0x4

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshVertex:[F

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    aput v9, v7, v8

    .line 73
    const/4 v8, 0x5

    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshVertex:[F

    add-int/lit8 v10, v2, 0x2

    aget v9, v9, v10

    aput v9, v7, v8

    .line 74
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 75
    add-int/lit8 v1, v1, 0x3

    .line 76
    add-int/lit8 v2, v2, 0x3

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    .end local v0           #i:I
    .end local v1           #index1:I
    .end local v2           #index2:I
    :cond_1
    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    return-void
.end method

.method draw(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 13
    .parameter "gl"
    .parameter "tickPassed"

    .prologue
    .line 121
    invoke-super {p0, p1, p2}, Lcom/nemustech/tiffany/world/TFCustomPanel;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 122
    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mVisible:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mShouldDraw:Z

    if-eqz v9, :cond_4

    .line 124
    iget-boolean v9, p0, Lcom/nemustech/tiffany/world/TFCustomPanel;->mFacingFront:Z

    if-eqz v9, :cond_1

    .line 126
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mAngle:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    neg-float v6, v9

    .line 127
    .local v6, rotationX:F
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    neg-float v7, v9

    .line 128
    .local v7, rotationY:F
    const/4 v5, 0x0

    .line 130
    .local v5, rotateYFirst:Z
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    if-eqz v9, :cond_0

    .line 132
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-float/2addr v6, v9

    .line 133
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-object v9, v9, Lcom/nemustech/tiffany/world/TFHolder;->mAngle:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    sub-float/2addr v7, v9

    .line 134
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mHolder:Lcom/nemustech/tiffany/world/TFHolder;

    iget-boolean v5, v9, Lcom/nemustech/tiffany/world/TFHolder;->mFacingFrontYFirst:Z

    .line 137
    :cond_0
    const/4 v9, 0x1

    if-ne v5, v9, :cond_2

    .line 139
    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1, v7, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 140
    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-interface {p1, v6, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 149
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/nemustech/tiffany/world/TFGL;

    move-object v1, v0

    .line 150
    .local v1, gl2:Lcom/nemustech/tiffany/world/TFGL;
    iget-object v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMatrix:[F

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lcom/nemustech/tiffany/world/TFGL;->getMatrix([FI)V

    .line 153
    .end local v1           #gl2:Lcom/nemustech/tiffany/world/TFGL;
    .end local v5           #rotateYFirst:Z
    .end local v6           #rotationX:F
    .end local v7           #rotationY:F
    :cond_1
    const/16 v9, 0xde1

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 155
    const v9, 0x8074

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 156
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFShadowPanel;->buildVertexArray()V

    .line 157
    const/4 v9, 0x3

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 159
    const v9, 0x8076

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 160
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFShadowPanel;->buildColorArray()V

    .line 161
    const/4 v9, 0x4

    const/16 v10, 0x1406

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v9, v10, v11, v12}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 163
    const/4 v4, 0x0

    .line 164
    .local v4, offset:I
    iget v9, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshWidth:I

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v8, v9, 0x2

    .line 165
    .local v8, row:I
    iget v2, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshHeight:I

    .line 167
    .local v2, height:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 168
    const/4 v9, 0x5

    invoke-interface {p1, v9, v4, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 169
    add-int/2addr v4, v8

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 144
    .end local v2           #height:I
    .end local v3           #i:I
    .end local v4           #offset:I
    .end local v8           #row:I
    .restart local v5       #rotateYFirst:Z
    .restart local v6       #rotationX:F
    .restart local v7       #rotationY:F
    :cond_2
    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-interface {p1, v6, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 145
    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1, v7, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    goto :goto_0

    .line 171
    .end local v5           #rotateYFirst:Z
    .end local v6           #rotationX:F
    .end local v7           #rotationY:F
    .restart local v2       #height:I
    .restart local v3       #i:I
    .restart local v4       #offset:I
    .restart local v8       #row:I
    :cond_3
    const v9, 0x8076

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 172
    const/16 v9, 0xde1

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 174
    .end local v2           #height:I
    .end local v3           #i:I
    .end local v4           #offset:I
    .end local v8           #row:I
    :cond_4
    return-void
.end method

.method public setColorBuffer([F)V
    .locals 3
    .parameter "colorBuffer"

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 181
    iput p1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mHeight:F

    .line 182
    return-void
.end method

.method public setSize(FFII)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "meshWidth"
    .parameter "meshHeight"

    .prologue
    .line 44
    iput p1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mWidth:F

    .line 45
    iput p2, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mHeight:F

    .line 46
    iput p3, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshWidth:I

    .line 47
    iput p4, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshHeight:I

    .line 49
    iget v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshHeight:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshHeight:I

    iget v2, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshWidth:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    move v0, v1

    .line 50
    .local v0, vertexCount:I
    :goto_0
    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshVertex:[F

    .line 51
    mul-int/lit8 v1, v0, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mCustomColorBuffer:[F

    .line 52
    mul-int/lit8 v1, v0, 0x3

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFShadowPanel;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 53
    mul-int/lit8 v1, v0, 0x4

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFShadowPanel;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mColorBuffer:Ljava/nio/FloatBuffer;

    .line 54
    return-void

    .line 49
    .end local v0           #vertexCount:I
    :cond_0
    iget v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshWidth:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshHeight:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    move v0, v1

    goto :goto_0
.end method

.method public setVertexBuffer([F)V
    .locals 3
    .parameter "vertexBuffer"

    .prologue
    .line 111
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshVertex:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mMeshVertex:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .parameter "width"

    .prologue
    .line 177
    iput p1, p0, Lcom/nemustech/tiffany/world/TFShadowPanel;->mWidth:F

    .line 178
    return-void
.end method
